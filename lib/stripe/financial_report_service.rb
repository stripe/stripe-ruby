# frozen_string_literal: true

module Stripe
  # Financial Report Service
  # Generates professional PDF financial reports from Executive Overview
  # and Reconciliation dashboards with customizable date ranges
  class FinancialReportService
    attr_reader :overview, :reconciliation, :report_data

    def initialize(executive_overview, reconciliation_engine)
      @overview = executive_overview
      @reconciliation = reconciliation_engine
      @report_data = {}
    end

    # Generate comprehensive financial report
    def generate_report(start_date:, end_date:, include_sections: :all)
      @report_data = {
        report_id: generate_report_id,
        generated_at: Time.now.utc.iso8601,
        report_period: {
          start_date: start_date.to_s,
          end_date: end_date.to_s,
          days_covered: (end_date - start_date).to_i + 1,
        },
        sections: {},
      }

      sections = if include_sections == :all
                   %i[executive_summary liquidity_analysis reconciliation_summary
                      exposure_analysis]
                 else
                   include_sections
                 end

      sections.each do |section|
        case section
        when :executive_summary
          @report_data[:sections][:executive_summary] = generate_executive_summary(start_date, end_date)
        when :liquidity_analysis
          @report_data[:sections][:liquidity_analysis] = generate_liquidity_section(start_date, end_date)
        when :reconciliation_summary
          @report_data[:sections][:reconciliation_summary] = generate_reconciliation_section(start_date, end_date)
        when :exposure_analysis
          @report_data[:sections][:exposure_analysis] = generate_exposure_section(start_date, end_date)
        end
      end

      @report_data[:metadata] = {
        document_type: "Treasury Financial Report",
        classification: "Confidential",
        prepared_by: "Stripe Treasury System",
        stakeholders: ["CFO", "Treasurer", "Finance Team"],
      }

      @report_data
    end

    # Export report as formatted text (for display/preview)
    def export_as_text(start_date:, end_date:)
      generate_report(start_date: start_date, end_date: end_date) if @report_data.empty?

      text = ""
      text += render_header
      text += render_report_metadata
      text += render_sections_as_text

      text
    end

    # Export report as HTML (for web viewing)
    def export_as_html(start_date:, end_date:)
      generate_report(start_date: start_date, end_date: end_date) if @report_data.empty?

      <<~HTML
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="UTF-8">
          <title>Treasury Financial Report</title>
          <style>
            body { font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5; }
            .header { background: #1e3a8a; color: white; padding: 20px; border-radius: 5px; }
            .section { background: white; margin: 20px 0; padding: 20px; border-radius: 5px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
            .section h2 { color: #1e3a8a; border-bottom: 2px solid #1e3a8a; padding-bottom: 10px; }
            table { width: 100%; border-collapse: collapse; }
            td, th { padding: 10px; text-align: left; border-bottom: 1px solid #ddd; }
            th { background: #f0f0f0; font-weight: bold; }
            .metric { display: inline-block; width: 23%; margin: 1%; background: #f9f9f9; padding: 15px; border-radius: 5px; }
            .metric-label { color: #666; font-size: 12px; }
            .metric-value { color: #1e3a8a; font-size: 24px; font-weight: bold; }
            .risk-high { color: #dc2626; }
            .risk-medium { color: #f59e0b; }
            .risk-low { color: #10b981; }
          </style>
        </head>
        <body>
          #{render_html_header}
          #{render_html_sections}
        </body>
        </html>
      HTML
    end

    # Export report as JSON (for API consumption)
    def export_as_json(start_date:, end_date:)
      generate_report(start_date: start_date, end_date: end_date) if @report_data.empty?
      JSON.pretty_generate(@report_data)
    end

    # Export as CSV (for spreadsheet import)
    def export_as_csv(start_date:, end_date:)
      generate_report(start_date: start_date, end_date: end_date) if @report_data.empty?

      csv = "Treasury Financial Report\n"
      csv += "Generated: #{@report_data[:generated_at]}\n"
      csv += "Period: #{start_date} to #{end_date}\n\n"

      # Executive Summary
      csv += "EXECUTIVE SUMMARY\n"
      exec_summary = @report_data[:sections][:executive_summary]
      exec_summary[:key_metrics].each do |metric, value|
        csv += "#{metric},#{value}\n"
      end

      csv += "\nLIQUIDITY ANALYSIS\n"
      liquidity = @report_data[:sections][:liquidity_analysis]
      csv += "Currency,Amount,Percentage,Status\n"
      liquidity[:by_currency].each do |currency, data|
        csv += "#{currency},#{data[:amount]},#{data[:percentage]}%,#{data[:health_status]}\n"
      end

      csv += "\nRECONCILIATION STATUS\n"
      recon = @report_data[:sections][:reconciliation_summary]
      csv += "Metric,Value\n"
      recon[:metrics].each do |metric, value|
        csv += "#{metric},#{value}\n"
      end

      csv
    end

    # Export to PDF (generates mock PDF for testing, uses prawn if available)
    def export_as_pdf(start_date:, end_date:, output_path: nil)
      generate_report(start_date: start_date, end_date: end_date) if @report_data.empty?

      # Create mock PDF structure
      pdf_content = {
        format: "PDF",
        title: "Treasury Financial Report",
        creator: "Stripe Treasury System",
        metadata: @report_data[:metadata],
        content_stream: build_pdf_content,
      }

      # Try to use Prawn if available, otherwise generate data structure
      begin
        require "prawn"
        pdf = Prawn::Document.new

        pdf.text "Treasury Financial Report", size: 24, style: :bold
        pdf.move_down 20

        add_pdf_content(pdf)

        filename = output_path || "/tmp/treasury_report_#{Time.now.to_i}.pdf"
        pdf.render_file(filename)

        { success: true, filepath: filename, size: ::File.size(filename) }
      rescue LoadError
        # Prawn not available, return mock PDF data
        filename = output_path || "/tmp/treasury_report_#{Time.now.to_i}.pdf"
        ::File.write(filename, generate_pdf_mock(pdf_content))

        { success: true, filepath: filename, format: "text/pdf", size: ::File.size(filename), mock: true }
      end
    end

    private

    def generate_report_id
      "TR-#{Time.now.strftime('%Y%m%d')}-#{SecureRandom.hex(4)}"
    end

    def generate_executive_summary(start_date, end_date)
      @overview.refresh_balances if @overview.instance_variable_get(:@current_totals).empty?

      liquidity = @overview.total_liquidity
      daily_pos = @overview.net_daily_position
      exposure = @overview.currency_exposure

      {
        key_metrics: {
          total_liquidity: format_currency(liquidity.values.sum),
          net_daily_change: format_currency(daily_pos.values.sum),
          accounts_monitored: @overview.account_summary.count,
          currencies_active: liquidity.count,
          days_in_period: (end_date - start_date).to_i + 1,
        },
        summary_text: "This report provides a consolidated view of treasury positions for the period #{start_date} through #{end_date}.",
        date_range: { start: start_date.to_s, end: end_date.to_s },
      }
    end

    def generate_liquidity_section(start_date, end_date)
      @overview.refresh_balances if @overview.instance_variable_get(:@current_totals).empty?

      liquidity = @overview.total_liquidity
      accounts = @overview.account_summary

      by_currency = {}
      liquidity.each do |currency, amount|
        by_currency[currency] = {
          amount: format_currency(amount),
          percentage: calculate_percentage(amount, liquidity.values.sum),
          health_status: if amount > 100_000
                           "strong"
                         else
                           amount > 10_000 ? "adequate" : "low"
                         end,
          trend: "stable",
        }
      end

      {
        timestamp: Time.now.utc.iso8601,
        total_liquidity: format_currency(liquidity.values.sum),
        by_currency: by_currency,
        account_breakdown: accounts.map do |name, data|
          { account: name, status: data[:status], balance: format_currency(data[:total_balance] || 0) }
        end,
        analysis: {
          liquidity_level: "adequate",
          recommendations: ["Monitor daily positions", "Maintain minimum threshold"],
        },
      }
    end

    def generate_reconciliation_section(start_date, end_date)
      discrepancies = @reconciliation.get_discrepancies(status: :all)
      resolved = @reconciliation.get_discrepancies(status: :resolved)
      open = @reconciliation.get_discrepancies(status: :open)

      {
        timestamp: Time.now.utc.iso8601,
        metrics: {
          total_discrepancies: discrepancies.count,
          resolved: resolved.count,
          open: open.count,
          resolution_rate: discrepancies.count > 0 ? ((resolved.count / discrepancies.count) * 100).round(2) : 0,
        },
        discrepancies_by_type: aggregate_discrepancies_by_type(discrepancies),
        recent_resolutions: resolved.last(5).map do |d|
          { id: d.id, resolved_on: d.resolved_at, note: d.resolution_notes }
        end,
        analysis: {
          status: open.count == 0 ? "fully_reconciled" : "in_progress",
          priority_items: open.count,
        },
      }
    end

    def generate_exposure_section(start_date, end_date)
      @overview.refresh_balances if @overview.instance_variable_get(:@current_totals).empty?

      exposure = @overview.currency_exposure

      {
        timestamp: Time.now.utc.iso8601,
        total_exposure_usd: calculate_total_usd_exposure(exposure),
        by_currency: exposure.map do |curr, data|
          { currency: curr, amount: data[:amount], percentage: data[:percentage], accounts: data[:accounts].count }
        end,
        concentration_analysis: {
          max_single_currency: exposure.values.map { |d| d[:percentage] }.max,
          diversification_level: if exposure.count >= 5
                                   "well_diversified"
                                 else
                                   exposure.count >= 3 ? "adequate" : "concentrated"
                                 end,
          risk_level: determine_exposure_risk(exposure),
        },
        recommendations: generate_exposure_recommendations(exposure),
      }
    end

    def render_header
      text = ("=" * 80) + "\n"
      text += "TREASURY FINANCIAL REPORT\n"
      text += ("=" * 80) + "\n"
      text += "Generated: #{@report_data[:generated_at]}\n"
      text += "Report ID: #{@report_data[:report_id]}\n"
      text += "Period: #{@report_data[:report_period][:start_date]} to #{@report_data[:report_period][:end_date]}\n"
      text += ("=" * 80) + "\n\n"
      text
    end

    def render_report_metadata
      text = "DOCUMENT INFORMATION\n"
      text += ("-" * 40) + "\n"
      meta = @report_data[:metadata]
      text += "Type: #{meta[:document_type]}\n"
      text += "Classification: #{meta[:classification]}\n"
      text += "Prepared By: #{meta[:prepared_by]}\n"
      text += "For: #{meta[:stakeholders].join(', ')}\n\n"
      text
    end

    def render_sections_as_text
      text = ""

      if @report_data[:sections][:executive_summary]
        text += render_section_text("EXECUTIVE SUMMARY", @report_data[:sections][:executive_summary])
      end

      if @report_data[:sections][:liquidity_analysis]
        text += render_section_text("LIQUIDITY ANALYSIS", @report_data[:sections][:liquidity_analysis])
      end

      if @report_data[:sections][:reconciliation_summary]
        text += render_section_text("RECONCILIATION SUMMARY", @report_data[:sections][:reconciliation_summary])
      end

      if @report_data[:sections][:exposure_analysis]
        text += render_section_text("CURRENCY EXPOSURE ANALYSIS", @report_data[:sections][:exposure_analysis])
      end

      text
    end

    def render_section_text(title, data)
      text = "\n" + ("=" * 40) + "\n"
      text += "#{title}\n"
      text += ("=" * 40) + "\n"

      data.each do |key, value|
        next if key == :timestamp

        if value.is_a?(Hash)
          text += "\n#{key.to_s.upcase}:\n"
          value.each do |k, v|
            text += "  #{k}: #{format_value(v)}\n"
          end
        elsif value.is_a?(Array)
          text += "\n#{key.to_s.upcase}:\n"
          value.each { |item| text += "  - #{format_value(item)}\n" }
        else
          text += "#{key}: #{format_value(value)}\n"
        end
      end

      text + "\n"
    end

    def render_html_header
      <<~HTML
        <div class="header">
          <h1>Treasury Financial Report</h1>
          <p>Report ID: #{@report_data[:report_id]}</p>
          <p>Generated: #{@report_data[:generated_at]}</p>
        </div>
      HTML
    end

    def render_html_sections
      html = ""

      if @report_data[:sections][:executive_summary]
        html += render_section_html("Executive Summary", @report_data[:sections][:executive_summary])
      end

      if @report_data[:sections][:liquidity_analysis]
        html += render_section_html("Liquidity Analysis", @report_data[:sections][:liquidity_analysis])
      end

      if @report_data[:sections][:reconciliation_summary]
        html += render_section_html("Reconciliation Summary", @report_data[:sections][:reconciliation_summary])
      end

      if @report_data[:sections][:exposure_analysis]
        html += render_section_html("Currency Exposure Analysis", @report_data[:sections][:exposure_analysis])
      end

      html
    end

    def render_section_html(title, data)
      html = "<div class='section'><h2>#{title}</h2>"

      if data[:key_metrics]
        html += "<div>"
        data[:key_metrics].each do |metric, value|
          html += "<div class='metric'><div class='metric-label'>#{titleize_word(metric.to_s)}</div><div class='metric-value'>#{format_value(value)}</div></div>"
        end
        html += "</div>"
      end

      if data[:by_currency]
        html += "<h3>By Currency</h3><table>"
        html += "<tr><th>Currency</th><th>Amount</th><th>Percentage</th></tr>"
        data[:by_currency].each do |curr, info|
          html += "<tr><td>#{curr}</td><td>#{info[:amount]}</td><td>#{info[:percentage]}</td></tr>" if info.is_a?(Hash)
        end
        html += "</table>"
      end

      html += "</div>"
      html
    end

    def build_pdf_content
      content = {}
      @report_data[:sections].each do |section_name, section_data|
        content[section_name] = section_data
      end
      content
    end

    def generate_pdf_mock(pdf_content)
      # Generate a mock PDF-like document for testing
      "%PDF-1.4\n" +
        "Mock Treasury Financial Report\n" +
        "Generated: #{@report_data[:generated_at]}\n" +
        "Report ID: #{@report_data[:report_id]}\n" +
        JSON.pretty_generate(pdf_content)
    end

    def add_pdf_content(pdf)
      @report_data[:sections].each do |section_name, section_data|
        pdf.text titleize_word(section_name.to_s), size: 16, style: :bold
        pdf.move_down 10

        section_data.each do |key, value|
          pdf.text "#{key}: #{format_value(value)}", size: 10
        end

        pdf.move_down 20
      end
    end

    def format_currency(amount)
      "$#{amount.round(2)}"
    end

    def format_value(value)
      case value
      when Float
        value.round(2).to_s
      when Hash
        value.inspect
      when Array
        value.inspect
      else
        value.to_s
      end
    end

    def calculate_percentage(part, total)
      total > 0 ? ((part / total) * 100).round(2) : 0
    end

    def calculate_total_usd_exposure(exposure)
      # Simplified: assume 1:1 for all currencies in this context
      exposure.values.sum { |d| d[:amount] }.round(2)
    end

    def determine_exposure_risk(exposure)
      max_pct = exposure.values.map { |d| d[:percentage] }.max
      if max_pct > 50
        "high"
      else
        max_pct > 30 ? "medium" : "low"
      end
    end

    def aggregate_discrepancies_by_type(discrepancies)
      by_type = {}
      discrepancies.each do |d|
        by_type[d.type] ||= 0
        by_type[d.type] += 1
      end
      by_type
    end

    def generate_exposure_recommendations(exposure)
      recommendations = []

      max_pct = exposure.values.map { |d| d[:percentage] }.max
      recommendations << "High single-currency concentration detected. Consider diversifying assets." if max_pct > 50

      if exposure.count < 3
        recommendations << "Limited currency diversification. Evaluate adding additional currencies."
      end

      recommendations << "Excellent diversification across #{exposure.count} currencies." if exposure.count >= 5

      recommendations
    end

    def titleize_word(word)
      word.gsub(/(\A|\s)([a-z])/) { ::Regexp.last_match(1) + ::Regexp.last_match(2).upcase }
    end
  end
end
