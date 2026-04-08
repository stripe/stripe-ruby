# frozen_string_literal: true

module Stripe
  # Executive Overview Dashboard
  # Aggregates real-time cash balances across all connected bank APIs,
  # providing consolidated liquidity, net daily position, and currency exposure
  class ExecutiveOverview
    attr_reader :portal, :snapshot_history, :last_updated

    @@global_portal = nil
    @@balance_snapshots = {}
    @@currency_positions = {}
    @@daily_net_position = {}

    def initialize(portal = nil)
      @portal = portal || self.class.global_portal
      raise "TreasuryBankPortal not initialized" unless @portal

      @snapshot_history = []
      @last_updated = nil
      @current_totals = {}
    end

    def self.set_global_portal(portal)
      @@global_portal = portal
    end

    def self.global_portal
      @@global_portal
    end

    # Refresh all balances from connected bank APIs
    def refresh_balances
      @snapshot_history = []
      @@balance_snapshots = {}
      @current_totals = {}

      # Get transactions from all adapters
      adapters = Stripe::TreasuryBankPortal.available_adapters
      timestamp = Time.now.utc.iso8601

      adapters.each do |adapter_name|
        @portal.switch_adapter(adapter_name)
        transactions = @portal.fetch_transactions(limit: 500)

        # Calculate balances for this adapter
        balance_data = aggregate_adapter_balances(transactions, adapter_name)
        @@balance_snapshots[adapter_name] = {
          timestamp: timestamp,
          transactions: transactions,
          totals: balance_data,
        }

        @current_totals[adapter_name] = balance_data
      rescue StandardError => e
        @current_totals[adapter_name] = { error: e.message }
      end

      @last_updated = timestamp
      @snapshot_history << {
        timestamp: timestamp,
        totals: @current_totals.dup,
      }

      @current_totals
    end

    # Get consolidated total liquidity across all accounts
    def total_liquidity(currency = nil)
      refresh_balances if @current_totals.empty?

      totals = {}
      @current_totals.each do |adapter, data|
        next if data[:error]

        data[:by_currency]&.each do |curr, amount|
          totals[curr] ||= 0
          totals[curr] += amount
        end
      end

      currency ? (totals[currency] || 0) : totals
    end

    # Get net daily cash position (change from start of day)
    def net_daily_position
      refresh_balances if @current_totals.empty?

      # If we have multiple snapshots, calculate change
      if @snapshot_history.length > 1
        position_change = {}

        @snapshot_history.first[:totals].each do |adapter, old_data|
          next if old_data[:error]

          current_data = @current_totals[adapter]
          next if current_data[:error]

          old_data[:by_currency]&.each do |curr, old_amount|
            new_amount = current_data[:by_currency]&.dig(curr) || 0
            position_change[curr] ||= 0
            position_change[curr] += (new_amount - old_amount)
          end
        end

        @@daily_net_position = position_change
        position_change
      else
        # No historical data yet, return current totals
        total_liquidity
      end
    end

    # Get currency exposure across all accounts
    def currency_exposure
      refresh_balances if @current_totals.empty?

      exposure = {}
      total_usd = 0

      @current_totals.each do |adapter, data|
        next if data[:error]

        data[:by_currency]&.each do |currency, amount|
          exposure[currency] ||= {
            amount: 0,
            accounts: [],
            percentage: 0,
          }
          exposure[currency][:amount] += amount
          exposure[currency][:accounts] << adapter
        end
      end

      # Calculate USD equivalent (simplified - use 1:1 for demo)
      exposure.each_value do |data|
        total_usd += data[:amount]
      end

      # Calculate percentages
      exposure.each do |currency, data|
        data[:percentage] = total_usd > 0 ? ((data[:amount] / total_usd) * 100).round(2) : 0
      end

      @@currency_positions = exposure
      exposure
    end

    # Get account summary for each connected bank
    def account_summary
      refresh_balances if @current_totals.empty?

      summary = {}

      @current_totals.each do |adapter, data|
        summary[adapter] = if data[:error]
                             { status: "error", message: data[:error] }
                           else
                             {
                               status: "active",
                               total_balance: data[:total],
                               transaction_count: data[:transaction_count],
                               currencies: data[:by_currency],
                               last_updated: data[:timestamp],
                             }
                           end
      end

      summary
    end

    # Generate executive summary report
    def executive_summary_report
      refresh_balances if @current_totals.empty?

      liquidity = total_liquidity
      daily_position = net_daily_position
      exposure = currency_exposure
      accounts = account_summary

      {
        report_generated_at: Time.now.utc.iso8601,
        liquidity_summary: {
          total_liquidity_by_currency: liquidity,
          total_liquidity_usd_equiv: liquidity.values.sum,
        },
        daily_cash_position: {
          net_change: daily_position,
          total_change_usd: daily_position.values.sum,
        },
        currency_exposure: exposure,
        account_status: accounts,
        risk_metrics: compute_risk_metrics(liquidity, exposure),
      }
    end

    # Generate dashboard data formatted for display
    def generate_dashboard
      report = executive_summary_report

      {
        timestamp: report[:report_generated_at],
        key_metrics: {
          total_liquidity: format_currency_totals(report[:liquidity_summary][:total_liquidity_by_currency]),
          net_daily_change: format_currency_totals(report[:daily_cash_position][:net_change]),
          accounts_connected: report[:account_status].count,
        },
        liquidity_by_currency: report[:liquidity_summary][:total_liquidity_by_currency],
        currency_allocation: generate_allocation_chart(report[:currency_exposure]),
        account_details: report[:account_status],
        alerts: generate_alerts(report),
      }
    end

    # Stream real-time balance updates
    def stream_updates(interval: 5, duration: 60)
      start_time = Time.now
      updates = []

      loop do
        elapsed = Time.now - start_time
        break if elapsed > duration

        refresh_balances
        updates << {
          timestamp: Time.now.utc.iso8601,
          snapshot: {
            total_liquidity: total_liquidity,
            daily_position: net_daily_position,
            exposure: currency_exposure,
          },
        }

        break if elapsed + interval > duration

        sleep(interval)
      end

      updates
    end

    # Get historical liquidity trend
    def liquidity_trend(hours: 24)
      cutoff_time = Time.now.utc - (hours * 3600)

      trend_data = @snapshot_history.select do |snapshot|
        Time.parse(snapshot[:timestamp]) > cutoff_time
      end

      trend_data.map do |snapshot|
        totals = snapshot[:totals]
        currency_totals = {}

        totals.each do |adapter, data|
          next if data[:error]

          data[:by_currency]&.each do |curr, amount|
            currency_totals[curr] ||= 0
            currency_totals[curr] += amount
          end
        end

        {
          timestamp: snapshot[:timestamp],
          totals: currency_totals,
        }
      end
    end

    # Export dashboard data as formatted report
    def export_report(format: :json)
      report = executive_summary_report

      case format
      when :json
        JSON.pretty_generate(report)
      when :csv
        generate_csv_report(report)
      when :text
        generate_text_report(report)
      else
        report
      end
    end

    private

    def aggregate_adapter_balances(transactions, adapter_name)
      by_currency = {}
      total = 0
      transaction_count = transactions.count

      transactions.each do |txn|
        currency = txn[:currency] || "USD"
        amount = txn[:amount] || 0
        by_currency[currency] ||= 0
        by_currency[currency] += amount
        total += amount
      end

      {
        total: total,
        by_currency: by_currency,
        transaction_count: transaction_count,
        timestamp: Time.now.utc.iso8601,
      }
    end

    def compute_risk_metrics(liquidity, exposure)
      {
        concentration_risk: compute_concentration_risk(exposure),
        currency_volatility: compute_volatility,
        liquidity_health: compute_liquidity_health(liquidity),
      }
    end

    def compute_concentration_risk(exposure)
      return 0 if exposure.empty?

      percentages = exposure.map { |_, data| data[:percentage] }
      max = percentages.max
      if max > 50
        "high"
      else
        max > 30 ? "medium" : "low"
      end
    end

    def compute_volatility
      return "stable" if @snapshot_history.length < 3

      changes = []
      @snapshot_history.each_cons(2) do |snap1, snap2|
        curr_change = calculate_snapshot_change(snap1, snap2)
        changes << curr_change
      end

      avg_change = changes.sum.to_f / changes.length
      if avg_change > 5
        "high"
      else
        avg_change > 2 ? "medium" : "low"
      end
    end

    def calculate_snapshot_change(snap1, snap2)
      change = 0
      snap1[:totals].each do |adapter, data|
        next if data[:error]

        snap2_data = snap2[:totals][adapter]
        next if snap2_data[:error]

        old_total = data[:by_currency]&.values&.sum || 0
        new_total = snap2_data[:by_currency]&.values&.sum || 0
        change += (new_total - old_total).abs
      end

      change
    end

    def compute_liquidity_health(liquidity)
      total = liquidity.values.sum
      if total > 100_000
        "strong"
      else
        total > 10_000 ? "adequate" : "low"
      end
    end

    def format_currency_totals(totals)
      totals.each_with_object({}) do |(curr, amount), acc|
        acc[curr] = format("%.2f", amount)
      end
    end

    def generate_allocation_chart(exposure)
      chart = "Currency Allocation:\n"
      exposure.sort_by { |_, data| data[:percentage] }.reverse.each do |currency, data|
        bar_length = (data[:percentage] / 5).to_i
        bar = "█" * bar_length
        chart += "  #{currency}: #{bar} #{data[:percentage]}%\n"
      end
      chart
    end

    def generate_alerts(report)
      alerts = []

      # High concentration risk
      if report[:risk_metrics][:concentration_risk] == "high"
        alerts << {
          severity: "high",
          message: "High currency concentration detected. Consider diversifying assets.",
        }
      end

      # Low liquidity
      if report[:risk_metrics][:liquidity_health] == "low"
        alerts << {
          severity: "warning",
          message: "Liquidity levels are low. Review incoming transactions.",
        }
      end

      # High volatility
      if report[:risk_metrics][:currency_volatility] == "high"
        alerts << {
          severity: "info",
          message: "Significant daily position changes detected.",
        }
      end

      alerts
    end

    def generate_csv_report(report)
      csv = "Executive Overview Report\n"
      csv += "Generated: #{report[:report_generated_at]}\n\n"
      csv += "Total Liquidity,#{report[:liquidity_summary][:total_liquidity_usd_equiv]}\n"
      csv += "Net Daily Change,#{report[:daily_cash_position][:total_change_usd]}\n"
      csv
    end

    def generate_text_report(report)
      text = ("=" * 60) + "\n"
      text += "EXECUTIVE OVERVIEW REPORT\n"
      text += ("=" * 60) + "\n"
      text += "Generated: #{report[:report_generated_at]}\n\n"

      text += "TOTAL LIQUIDITY\n"
      report[:liquidity_summary][:total_liquidity_by_currency].each do |curr, amount|
        text += "  #{curr}: $#{format('%.2f', amount)}\n"
      end

      text += "\nDAILY NET POSITION\n"
      report[:daily_cash_position][:net_change].each do |curr, amount|
        text += "  #{curr}: $#{format('%.2f', amount)}\n"
      end

      text += "\nCURRENCY EXPOSURE\n"
      report[:currency_exposure].each do |curr, data|
        text += "  #{curr}: #{data[:percentage]}% ($#{format('%.2f', data[:amount])})\n"
      end

      text += "\n" + ("=" * 60) + "\n"
      text
    end
  end
end
