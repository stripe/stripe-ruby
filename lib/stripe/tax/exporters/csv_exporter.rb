# frozen_string_literal: true

require "csv"

module Stripe
  module Tax
    module Exporters
      # Exports tax data to CSV formats compatible with tax software
      class CsvExporter
        def self.export_turbotax_format(gains, filename = "tax_report.csv")
          CSV.open(filename, "w") do |csv|
            csv << ["Date", "Asset", "Quantity", "Cost Basis", "Proceeds", "Gain/Loss", "Holding Period (Days)",
                    "Status",]

            gains.each do |gain|
              csv << [
                gain[:sale_date].strftime("%m/%d/%Y"),
                gain[:asset],
                gain[:quantity].round(8),
                gain[:cost_basis].round(8),
                gain[:proceeds].round(8),
                gain[:gain].round(8),
                gain[:holding_period_days],
                gain[:is_long_term] ? "Long-term" : "Short-term",
              ]
            end
          end

          filename
        end

        def self.export_koinly_format(transactions, filename = "koinly_export.csv")
          CSV.open(filename, "w") do |csv|
            csv << ["Date", "Sent Currency", "Sent Amount", "Received Currency", "Received Amount", "Fee Currency",
                    "Fee Amount", "Exchange", "Description",]

            transactions.each do |tx|
              csv << [
                tx[:date].strftime("%m/%d/%Y %H:%M:%S"),
                tx[:type] == :sell ? tx[:asset] : "",
                tx[:type] == :sell ? tx[:quantity].round(8) : "",
                tx[:type] == :buy ? tx[:asset] : "",
                tx[:type] == :buy ? tx[:quantity].round(8) : "",
                "USD",
                tx[:fee].round(8),
                "DeFi",
                tx[:notes] || "",
              ]
            end
          end

          filename
        end

        def self.export_generic_tax_report(gains, transactions, filename = "tax_summary.csv")
          CSV.open(filename, "w") do |csv|
            # Summary section
            csv << ["TAX SUMMARY REPORT"]
            csv << []
            csv << ["Total Transactions", transactions.count]
            csv << ["Total Realized Gains", gains.sum { |g| [g[:gain], 0].max }.round(8)]
            csv << ["Total Realized Losses", gains.sum { |g| [g[:gain], 0].min }.round(8)]
            csv << ["Net Realized Gain/Loss", gains.sum { |g| g[:gain] }.round(8)]
            csv << []

            # Holding period breakdown
            short_term = gains.select { |g| g[:holding_period_days] < 365 }
            long_term = gains.select { |g| g[:holding_period_days] >= 365 }

            csv << ["SHORT-TERM GAINS/LOSSES (< 1 year)"]
            csv << ["Count", "Total Gain/Loss"]
            csv << [short_term.count, short_term.sum { |g| g[:gain] }.round(8)]
            csv << []

            csv << ["LONG-TERM GAINS/LOSSES (>= 1 year)"]
            csv << ["Count", "Total Gain/Loss"]
            csv << [long_term.count, long_term.sum { |g| g[:gain] }.round(8)]
            csv << []

            # By asset breakdown
            csv << ["BY ASSET BREAKDOWN"]
            csv << ["Asset", "Transactions", "Total Gain/Loss", "Total Quantity"]

            gains.group_by { |g| g[:asset] }.each do |asset, asset_gains|
              csv << [
                asset,
                asset_gains.count,
                asset_gains.sum { |g| g[:gain] }.round(8),
                asset_gains.sum { |g| g[:quantity] }.round(8),
              ]
            end
            csv << []

            # Detailed transaction list
            csv << ["DETAILED TRANSACTION LIST"]
            csv << ["Date", "Asset", "Qty", "Cost Basis", "Proceeds", "Gain/Loss", "Days Held", "Type"]

            gains.each do |gain|
              csv << [
                gain[:sale_date].strftime("%m/%d/%Y"),
                gain[:asset],
                gain[:quantity].round(8),
                gain[:cost_basis].round(8),
                gain[:proceeds].round(8),
                gain[:gain].round(8),
                gain[:holding_period_days],
                gain[:is_long_term] ? "Long-term" : "Short-term",
              ]
            end
          end

          filename
        end

        def self.export_transactions_list(transactions, filename = "transactions.csv")
          CSV.open(filename, "w") do |csv|
            csv << ["Date", "Type", "Asset", "Quantity", "Price per Unit", "Cost/Proceeds", "Fee", "Wallet ID", "Notes"]

            transactions.each do |tx|
              csv << [
                tx[:date].strftime("%m/%d/%Y"),
                tx[:type],
                tx[:asset],
                tx[:quantity].round(8),
                tx[:price_per_unit].round(8),
                tx[:cost_basis].round(8),
                tx[:fee].round(8),
                tx[:wallet_id],
                tx[:notes] || "",
              ]
            end
          end

          filename
        end
      end
    end
  end
end
