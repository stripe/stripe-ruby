# frozen_string_literal: true

require_relative "tax/transaction_aggregator"
require_relative "tax/capital_gains_calculator"
require_relative "tax/exporters/csv_exporter"
require_relative "tax/exporters/pdf_exporter"

module Stripe
  module Tax
    # Convenience methods for tax reporting operations

    def self.create_aggregator
      TransactionAggregator.new
    end

    def self.calculate_gains(transactions, accounting_method = :fifo)
      CapitalGainsCalculator.new(transactions, accounting_method)
    end

    def self.export_turbotax_csv(gains, filename = "tax_report.csv")
      Exporters::CsvExporter.export_turbotax_format(gains, filename)
    end

    def self.export_koinly_csv(transactions, filename = "koinly_export.csv")
      Exporters::CsvExporter.export_koinly_format(transactions, filename)
    end

    def self.export_tax_pdf(gains, calculator, filename = "tax_report.pdf")
      Exporters::PdfExporter.export_tax_report(gains, calculator, filename)
    end

    def self.export_transaction_history_pdf(transactions, filename = "transaction_history.pdf")
      Exporters::PdfExporter.export_transaction_history(transactions, filename)
    end

    def self.export_generic_tax_report(gains, transactions, filename = "tax_summary.csv")
      Exporters::CsvExporter.export_generic_tax_report(gains, transactions, filename)
    end

    def self.export_transactions_csv(transactions, filename = "transactions.csv")
      Exporters::CsvExporter.export_transactions_list(transactions, filename)
    end
  end
end
