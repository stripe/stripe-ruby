# frozen_string_literal: true

require "prawn"

module Stripe
  module Tax
    module Exporters
      # Exports tax data to PDF format
      class PdfExporter
        def self.export_tax_report(gains, calculator, filename = "tax_report.pdf")
          pdf = Prawn::Document.new

          # Title
          pdf.text "Tax Report - Capital Gains & Losses", size: 20, style: :bold
          pdf.text "Generated: #{Time.now.strftime('%B %d, %Y')}", size: 10, color: "666666"
          pdf.move_down 20

          # Summary Section
          pdf.text "SUMMARY", size: 14, style: :bold
          pdf.move_down 10

          by_holding = calculator.gains_by_holding_period

          pdf.text "Total Transactions: #{gains.count}"
          pdf.text "Total Realized Gains: $#{gains.select { |g| g[:gain] > 0 }.sum { |g| g[:gain] }.round(2)}"
          pdf.text "Total Realized Losses: $#{gains.select { |g| g[:gain] < 0 }.sum { |g| g[:gain] }.round(2)}"
          pdf.text "Net Gain/Loss: $#{gains.sum { |g| g[:gain] }.round(2)}"
          pdf.text "Short-term Gains (< 1 year): $#{[by_holding[:short_term][:total_gain], 0].max.round(2)}"
          pdf.text "Long-term Gains (>= 1 year): $#{[by_holding[:long_term][:total_gain], 0].max.round(2)}"
          pdf.text "Estimated Tax Liability: $#{calculator.estimated_tax_liability.round(2)}"
          pdf.move_down 20

          # By Asset Breakdown
          pdf.text "GAINS/LOSSES BY ASSET", size: 12, style: :bold
          pdf.move_down 10

          by_asset = calculator.gains_by_asset

          by_asset.each do |asset, data|
            pdf.text "#{asset}: #{data[:count]} transactions, Total Gain/Loss: $#{data[:total_gain].round(2)}, Quantity: #{data[:total_quantity].round(8)}"
          end
          pdf.move_down 20

          # Detailed Transactions
          pdf.text "DETAILED TRANSACTIONS", size: 12, style: :bold
          pdf.move_down 10

          gains.each do |gain|
            holding_days = gain[:holding_period_days] || gain[:holding_period] || 0
            holding_period = holding_days < 365 ? "short-term" : "long-term"
            sale_price = gain[:sale_price] || (gain[:proceeds].to_f / gain[:quantity].to_f)
            pdf.text "#{gain[:asset]} - Qty: #{gain[:quantity].round(8)} @ $#{gain[:cost_basis].round(2)}/unit -> $#{sale_price.round(2)}/unit = $#{gain[:gain].round(2)} (#{holding_period})"
          end

          # Footer
          pdf.move_down 20
          pdf.text "DISCLAIMER", size: 10, style: :bold
          pdf.text "This tax report is for informational purposes only. It is not professional tax advice.", size: 8
          pdf.text "Please consult with a qualified tax professional to verify your tax liability.", size: 8
          pdf.text "The accounting method used: #{calculator.accounting_method.to_s.upcase}", size: 8

          pdf.render_file(filename) if filename
          filename
        end

        def self.export_transaction_history(transactions, filename = "transaction_history.pdf")
          pdf = Prawn::Document.new

          # Title
          pdf.text "Transaction History Report", size: 18, style: :bold
          pdf.text "Generated: #{Time.now.strftime('%B %d, %Y at %I:%M %p')}", size: 9, color: "666666"
          pdf.move_down 15

          # Summary
          pdf.text "TRANSACTION SUMMARY", size: 12, style: :bold
          pdf.move_down 10

          date_range = if transactions.empty?
                         "N/A"
                       else
                         "#{transactions.map { |t| t[:date] }.min.strftime('%m/%d/%Y')} - #{transactions.map { |t| t[:date] }.max.strftime('%m/%d/%Y')}"
                       end

          pdf.text "Total Transactions: #{transactions.count}"
          pdf.text "Date Range: #{date_range}"
          pdf.text "Total Fees: $#{transactions.sum { |t| t[:fee] }.round(2)}"
          pdf.text "Unique Assets: #{transactions.map { |t| t[:asset] }.uniq.count}"
          pdf.move_down 15

          # Transactions
          pdf.text "ALL TRANSACTIONS", size: 12, style: :bold
          pdf.move_down 10

           transactions.each do |tx|
            pdf.text "#{tx[:date].strftime('%m/%d/%Y')} - #{tx[:type]}: #{tx[:quantity].round(8)} #{tx[:asset]} @ $#{tx[:price_per_unit].round(2)}/unit = $#{tx[:cost_basis].round(2)} (Fee: $#{tx[:fee].round(2)})"
          end

          pdf.render_file(filename) if filename
          filename
        end
      end
    end
  end
end
