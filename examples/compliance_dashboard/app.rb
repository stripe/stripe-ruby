# frozen_string_literal: true

require "sinatra"
require "sinatra/json"
require "json"
require "csv"
require "date"

# ─── Configuration ────────────────────────────────────────────────────────────
set :port, 4568
set :bind, "0.0.0.0"
set :public_folder, File.join(__dir__, "public")
set :views,         File.join(__dir__, "views")

DATA_DIR = File.join(__dir__, "data")

# ─── Data Loading ─────────────────────────────────────────────────────────────
def load_json(filename)
  JSON.parse(File.read(File.join(DATA_DIR, filename)))
end

REGULATIONS  = load_json("regulations.json")["regulations"].freeze
FILINGS_DATA = load_json("filings.json")["filings"].freeze
AUDIT_DATA   = load_json("audit_events.json").freeze

REG_INDEX = REGULATIONS.each_with_object({}) { |r, h| h[r["id"]] = r }.freeze

# ─── Derived Helpers ──────────────────────────────────────────────────────────
STATUS_ORDER = %w[overdue in_progress not_started submitted approved].freeze
PRIORITY_ORDER = %w[critical high medium low].freeze

def days_until(date_str)
  return nil if date_str.nil?

  (Date.parse(date_str) - Date.today).to_i
rescue ArgumentError
  nil
end

def enrich_filing(f)
  reg = REG_INDEX[f["regulation_id"]] || {}
  days = days_until(f["due_date"])
  f.merge(
    "regulation_name" => reg["name"],
    "regulation_category" => reg["category"],
    "regulation_authority" => reg["authority"],
    "jurisdiction" => reg["jurisdiction"],
    "days_until_due" => days,
    "is_overdue" => days && days < 0 && !%w[submitted approved].include?(f["status"])
  )
end

def all_filings
  FILINGS_DATA.map { |f| enrich_filing(f) }
end

def compute_kpis(filings)
  current = filings.select { |f| f["period"]&.match?(/2026/) }
  total      = current.length
  approved   = current.count { |f| f["status"] == "approved" }
  submitted  = current.count { |f| f["status"] == "submitted" }
  in_progress = current.count { |f| f["status"] == "in_progress" }
  not_started = current.count { |f| f["status"] == "not_started" }
  overdue    = current.count { |f| f["is_overdue"] }
  due_soon   = current.count do |f|
    d = f["days_until_due"]
    d && d >= 0 && d <= 30 && !%w[submitted approved].include?(f["status"])
  end

  completed_on_time = filings.count { |f| %w[submitted approved].include?(f["status"]) && !f["is_overdue"] }
  all_closed = filings.count { |f| %w[submitted approved].include?(f["status"]) }
  on_time_rate = all_closed > 0 ? ((completed_on_time.to_f / all_closed) * 100).round(1) : 0

  avg_completion = current.empty? ? 0 : (current.sum { |f| f["completion_pct"].to_i } / current.length.to_f).round(1)

  {
    total_obligations: REGULATIONS.length,
    total_filings: total,
    approved: approved,
    submitted: submitted,
    in_progress: in_progress,
    not_started: not_started,
    overdue: overdue,
    due_soon: due_soon,
    on_time_rate: on_time_rate,
    avg_completion: avg_completion,
  }
end

# ─── Routes ───────────────────────────────────────────────────────────────────
get "/" do
  erb :index
end

# Dashboard summary: KPIs + recent alerts
get "/api/dashboard" do
  filings = all_filings
  kpis    = compute_kpis(filings)

  overdue_items = filings.select { |f| f["is_overdue"] || f["status"] == "overdue" }
  due_soon      = filings.select do |f|
    d = f["days_until_due"]
    d && d >= 0 && d <= 30 && !%w[submitted approved].include?(f["status"])
  end.sort_by { |f| f["days_until_due"] }

  recent_events = AUDIT_DATA["audit_events"].first(8)
  trend         = AUDIT_DATA["monthly_trend"]
  category_scores = AUDIT_DATA["category_scores"]

  content_type :json
  {
    kpis: kpis,
    overdue_items: overdue_items,
    due_soon: due_soon,
    recent_events: recent_events,
    trend: trend,
    category_scores: category_scores,
    generated_at: Time.now.utc.iso8601,
  }.to_json
end

# All filings with optional filters
get "/api/filings" do
  filings = all_filings

  filings = filings.select { |f| f["status"] == params[:status] }     if params[:status]&.length&.positive?
  filings = filings.select { |f| f["regulation_id"] == params[:reg] } if params[:reg]&.length&.positive?
  filings = filings.select { |f| f["owner"] == params[:owner] }       if params[:owner]&.length&.positive?
  filings = filings.select { |f| f["priority"] == params[:priority] } if params[:priority]&.length&.positive?
  filings = filings.select { |f| f["regulation_category"] == params[:category] } if params[:category]&.length&.positive?
  if params[:q]&.length&.> 1
    q = params[:q].downcase
    filings = filings.select do |f|
      f["title"].to_s.downcase.include?(q) || f["regulation_name"].to_s.downcase.include?(q)
    end
  end

  sort_by = params[:sort] || "due_date"
  filings = case sort_by
            when "priority"   then filings.sort_by { |f| PRIORITY_ORDER.index(f["priority"]) || 99 }
            when "status"     then filings.sort_by { |f| STATUS_ORDER.index(f["status"]) || 99 }
            when "completion" then filings.sort_by { |f| -f["completion_pct"].to_i }
            else filings.sort_by { |f| f["due_date"] || "9999" }
            end

  content_type :json
  { filings: filings, total: filings.length }.to_json
end

# Single filing detail
get "/api/filings/:id" do |id|
  filing = FILINGS_DATA.find { |f| f["id"] == id }
  halt 404, { error: "Filing not found" }.to_json unless filing

  enriched = enrich_filing(filing)
  reg      = REG_INDEX[filing["regulation_id"]]
  events   = AUDIT_DATA["audit_events"].select { |e| e["resource_id"] == id }

  content_type :json
  { filing: enriched, regulation: reg, events: events }.to_json
end

# All regulations
get "/api/regulations" do
  regs_with_stats = REGULATIONS.map do |r|
    reg_filings = FILINGS_DATA.select { |f| f["regulation_id"] == r["id"] }
    latest      = reg_filings.max_by { |f| f["due_date"] || "" }
    {
      **r,
      "filing_count" => reg_filings.length,
      "latest_filing" => latest ? enrich_filing(latest) : nil,
    }
  end
  content_type :json
  { regulations: regs_with_stats }.to_json
end

# Audit log with pagination
get "/api/audit" do
  events   = AUDIT_DATA["audit_events"]
  page     = [params[:page].to_i, 1].max
  per_page = [params[:per_page].to_i, 1].max
  per_page = 20 if per_page > 100 || per_page.zero?

  events = events.select { |e| e["severity"] == params[:severity] } if params[:severity]&.length&.positive?
  events = events.select { |e| e["actor"] == params[:actor] } if params[:actor]&.length&.positive?

  total  = events.length
  paged  = events.slice((page - 1) * per_page, per_page) || []

  content_type :json
  { events: paged, total: total, page: page, per_page: per_page, pages: (total.to_f / per_page).ceil }.to_json
end

# Trend and analytics data
get "/api/analytics" do
  filings = all_filings

  # Filings by category
  by_category = filings.group_by { |f| f["regulation_category"] }.transform_values(&:length)

  # Filings by owner
  by_owner = filings.group_by { |f| f["owner"] }.transform_values(&:length)

  # Filings by status (current year)
  current = filings.select { |f| f["period"]&.match?(/2026/) }
  by_status = current.group_by { |f| f["status"] }.transform_values(&:length)

  # Risk level breakdown
  risk_breakdown = REGULATIONS.group_by { |r| r["risk_level"] }.transform_values(&:length)

  content_type :json
  {
    by_category: by_category,
    by_owner: by_owner,
    by_status: by_status,
    risk_breakdown: risk_breakdown,
    monthly_trend: AUDIT_DATA["monthly_trend"],
    category_scores: AUDIT_DATA["category_scores"],
  }.to_json
end

# ─── Export Routes ─────────────────────────────────────────────────────────────

# CSV export of all filings
get "/export/filings.csv" do
  filings = all_filings
  filings = filings.select { |f| f["status"] == params[:status] } if params[:status]&.length&.positive?

  csv_data = CSV.generate(headers: true) do |csv|
    csv << [
      "Filing ID", "Title", "Regulation", "Category", "Authority",
      "Jurisdiction", "Period", "Due Date", "Submitted Date",
      "Status", "Completion %", "Priority", "Owner", "Reviewer",
      "Days Until Due", "Is Overdue", "Tags", "Notes",
    ]
    filings.each do |f|
      csv << [
        f["id"], f["title"], f["regulation_name"], f["regulation_category"],
        f["regulation_authority"], f["jurisdiction"], f["period"],
        f["due_date"], f["submitted_date"], f["status"],
        f["completion_pct"], f["priority"], f["owner"], f["reviewer"],
        f["days_until_due"], f["is_overdue"] ? "YES" : "no",
        f["tags"]&.join("; "), f["notes"],
      ]
    end
  end

  content_type "text/csv"
  headers["Content-Disposition"] = "attachment; filename=\"compliance_filings_#{Date.today}.csv\""
  csv_data
end

# CSV export of audit log
get "/export/audit.csv" do
  events = AUDIT_DATA["audit_events"]

  csv_data = CSV.generate(headers: true) do |csv|
    csv << ["Event ID", "Timestamp", "Actor", "Action", "Resource Type", "Resource ID", "Description", "IP Address",
            "Severity",]
    events.each do |e|
      csv << [e["id"], e["timestamp"], e["actor"], e["action"], e["resource_type"], e["resource_id"], e["description"],
              e["ip_address"], e["severity"],]
    end
  end

  content_type "text/csv"
  headers["Content-Disposition"] = "attachment; filename=\"compliance_audit_log_#{Date.today}.csv\""
  csv_data
end

# JSON export (audit-ready full report)
get "/export/report.json" do
  filings  = all_filings
  kpis     = compute_kpis(filings)

  content_type :json
  headers["Content-Disposition"] = "attachment; filename=\"compliance_report_#{Date.today}.json\""
  {
    report_metadata: {
      generated_at: Time.now.utc.iso8601,
      generated_by: "Compliance Audit Dashboard",
      report_period: "FY2025-2026",
      total_obligations: REGULATIONS.length,
    },
    kpis: kpis,
    regulations: REGULATIONS,
    filings: filings,
    audit_log: AUDIT_DATA["audit_events"],
    trend_data: AUDIT_DATA["monthly_trend"],
  }.to_json
end
