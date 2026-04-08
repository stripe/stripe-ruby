# frozen_string_literal: true

require "date"
require "json"

module Stripe
  class TreasuryAnalytics
    def self.analyze_cashflow(transactions, start_date, end_date)
      filtered = transactions.select do |t|
        t_date = Date.parse(t[:timestamp])
        t_date.between?(start_date, end_date)
      end

      daily_flows = {}
      filtered.each do |txn|
        date = Date.parse(txn[:timestamp]).to_s
        daily_flows[date] ||= { inbound: 0, outbound: 0, net: 0 }
        amount = txn[:amount].to_i
        if amount.positive?
          daily_flows[date][:inbound] += amount
        else
          daily_flows[date][:outbound] += amount.abs
        end
        daily_flows[date][:net] += amount
      end

      daily_flows.sort_by { |date, _| date }.to_h
    end

    def self.analyze_counterparty_exposure(transactions)
      exposure = {}
      transactions.each do |txn|
        counterparty = txn[:counterparty] || "unknown"
        exposure[counterparty] ||= { count: 0, total_amount: 0, average: 0 }
        exposure[counterparty][:count] += 1
        exposure[counterparty][:total_amount] += txn[:amount].to_i.abs
      end

      exposure.each do |_, data|
        data[:average] = data[:total_amount] / data[:count]
      end

      exposure.sort_by { |_, v| -v[:total_amount] }.to_h
    end

    def self.analyze_reconciliation_trends(audit_logs, start_date, end_date)
      filtered = audit_logs.select do |entry|
        entry_date = Date.parse(entry[:timestamp])
        entry_date.between?(start_date, end_date)
      end

      daily_stats = {}
      filtered.each do |entry|
        date = Date.parse(entry[:timestamp]).to_s
        daily_stats[date] ||= { total: 0, resolved: 0, open: 0 }

        if entry[:event] == :reconciliation_completed
          daily_stats[date][:total] += entry[:payload][:discrepancy_count] || 0
        end
        daily_stats[date][:resolved] += 1 if entry[:event] == :discrepancy_resolved
      end

      daily_stats.each do |_, stats|
        stats[:success_rate] = stats[:total].positive? ? (stats[:resolved].to_f / stats[:total] * 100).round(1) : 0
      end

      daily_stats.sort_by { |date, _| date }.to_h
    end

    def self.generate_dashboard_data(portal, start_date, end_date)
      transactions = portal.fetch_transactions(limit: 1000)
      audit_logs = portal.audit_log.entries

      {
        cashflow: analyze_cashflow(transactions, start_date, end_date),
        counterparty_exposure: analyze_counterparty_exposure(transactions),
        reconciliation: analyze_reconciliation_trends(audit_logs, start_date, end_date),
        generated_at: Time.now.utc.iso8601,
      }
    end

    def self.render_cashflow_chart(data)
      <<~CHART
        CASH FLOW ANALYSIS
        ==================
        Date            | Inbound    | Outbound   | Net
        #{render_cashflow_rows(data)}
      CHART
    end

    def self.render_counterparty_chart(data)
      <<~CHART
        COUNTERPARTY EXPOSURE
        ====================
        Counterparty    | Count | Total Amount | Average
        #{render_counterparty_rows(data)}
      CHART
    end

    def self.render_reconciliation_chart(data)
      <<~CHART
        RECONCILIATION SUCCESS RATES
        ===========================
        Date       | Success Rate
        #{render_reconciliation_rows(data)}
      CHART
    end

    private_class_method

    def self.render_cashflow_rows(data)
      data.map do |date, values|
        format("%-15s | %10s | %10s | %10s",
               date,
               format_currency(values[:inbound]),
               format_currency(values[:outbound]),
               format_currency(values[:net]))
      end.join("\n")
    end

    def self.render_counterparty_rows(data)
      data.first(10).map do |name, values|
        format("%-15s | %5d | %13s | %8s",
               name[0..14],
               values[:count],
               format_currency(values[:total_amount]),
               format_currency(values[:average]))
      end.join("\n")
    end

    def self.render_reconciliation_rows(data)
      data.map do |date, values|
        success_pct = "#{'#' * (values[:success_rate] / 10).to_i}#{' ' * (10 - (values[:success_rate] / 10).to_i)} #{values[:success_rate].round(1)}%"
        format("%-10s | %s", date, success_pct)
      end.join("\n")
    end

    def self.format_currency(amount)
      format("$%.2f", amount / 100.0)
    end
  end
end
