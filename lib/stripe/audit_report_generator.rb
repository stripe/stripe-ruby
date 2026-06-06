# frozen_string_literal: true

module Stripe
  # Audit report generation for compliance and investigation
  class AuditReportGenerator
    attr_reader :report_data, :report_id

    def initialize
      @report_data = {}
      @report_id = nil
    end

    # Generate comprehensive audit report
    def generate_report(start_date:, end_date:, include_sections: :all, filters: {})
      RBAC::Policy.require_permission!("reports.audit_create")

      @report_id = generate_report_id
      @report_data = {
        report_id: @report_id,
        generated_at: Time.now.utc.iso8601,
        generated_by: RBAC::Context.current.user_id,
        generated_by_role: RBAC::Context.current.role.key.to_s,
        report_period: {
          start_date: start_date.to_s,
          end_date: end_date.to_s,
          days_covered: (end_date - start_date).to_i + 1,
        },
        sections: {},
      }

      sections = if include_sections == :all
                   %i[executive_summary bank_module_activity crypto_module_activity
                      high_risk_events investigator_notes compliance_summary]
                 else
                   include_sections
                 end

      sections.each do |section|
        case section
        when :executive_summary
          @report_data[:sections][:executive_summary] = generate_executive_summary(
            start_date, end_date, filters
          )
        when :bank_module_activity
          @report_data[:sections][:bank_module_activity] = generate_bank_activity(
            start_date, end_date, filters
          )
        when :crypto_module_activity
          @report_data[:sections][:crypto_module_activity] = generate_crypto_activity(
            start_date, end_date, filters
          )
        when :high_risk_events
          @report_data[:sections][:high_risk_events] = generate_high_risk_section(
            start_date, end_date
          )
        when :investigator_notes
          @report_data[:sections][:investigator_notes] = generate_investigator_notes(
            start_date, end_date
          )
        when :compliance_summary
          @report_data[:sections][:compliance_summary] = generate_compliance_summary(
            start_date, end_date
          )
        end
      end

      @report_data[:metadata] = {
        document_type: "Audit Report",
        classification: "Confidential",
        prepared_by: "Stripe Audit System",
        stakeholders: ["Compliance", "Internal Audit", "Legal"],
        report_route: "QCF",
        compliance_route: "QCF",
      }

      @report_data
    end

    # Export report as JSON
    def export_as_json
      RBAC::Policy.require_permission!("reports.export")
      JSON.pretty_generate(@report_data)
    end

    # Export report as CSV
    def export_as_csv
      RBAC::Policy.require_permission!("reports.export")

      csv = "Audit Report\n"
      csv += "Generated: #{@report_data[:generated_at]}\n"
      csv += "Period: #{@report_data[:report_period][:start_date]} to #{@report_data[:report_period][:end_date]}\n\n"

      # Summary section
      summary = @report_data[:sections][:executive_summary]
      csv += "EXECUTIVE SUMMARY\n"
      summary[:metrics].each do |metric, value|
        csv += "#{metric},#{value}\n"
      end

      csv += "\nBANK TRANSACTIONS\n"
      bank_activity = @report_data[:sections][:bank_module_activity]
      csv += "Transaction ID,Amount,Currency,Status,Risk Level,Created At\n"
      bank_activity[:transactions].each do |tx|
        csv += "#{tx[:id]},#{tx[:amount]},#{tx[:currency]},#{tx[:status]},#{tx[:risk_level]},#{tx[:created_at]}\n"
      end

      csv += "\nCRYPTO TRANSACTIONS\n"
      crypto_activity = @report_data[:sections][:crypto_module_activity]
      csv += "Tx Hash,Amount,Currency,Status,Confirmations,Gas Fee,Risk Level\n"
      crypto_activity[:transactions].each do |tx|
        csv += "#{tx[:transaction_hash]},#{tx[:amount]},#{tx[:currency]},#{tx[:status]},"
        csv += "#{tx[:confirmations]},#{tx[:gas_fee]},#{tx[:risk_level]}\n"
      end

      csv
    end

    # Export report as PDF
    def export_as_pdf(output_path: nil)
      RBAC::Policy.require_permission!("reports.export")

      begin
        require "prawn"
        pdf = Prawn::Document.new

        # Header
        pdf.text "Audit Report", size: 24, style: :bold
        pdf.text "Report ID: #{@report_id}", size: 12
        pdf.text "Generated: #{@report_data[:generated_at]}", size: 10
        pdf.move_down 20

        # Executive Summary
        pdf.text "Executive Summary", size: 16, style: :bold
        summary = @report_data[:sections][:executive_summary]
        summary[:metrics].each do |metric, value|
          pdf.text "#{metric}: #{value}", size: 11
        end
        pdf.move_down 15

        # Bank Activity
        if @report_data[:sections][:bank_module_activity]
          pdf.text "Bank Module Activity", size: 14, style: :bold
          bank = @report_data[:sections][:bank_module_activity]
          pdf.text "Total Transactions: #{bank[:total_transactions]}", size: 11
          pdf.text "Total Volume: #{bank[:total_volume]}", size: 11
          pdf.text "High Risk Events: #{bank[:high_risk_count]}", size: 11
          pdf.move_down 15
        end

        # Crypto Activity
        if @report_data[:sections][:crypto_module_activity]
          pdf.text "Crypto Module Activity", size: 14, style: :bold
          crypto = @report_data[:sections][:crypto_module_activity]
          pdf.text "Total Transactions: #{crypto[:total_transactions]}", size: 11
          pdf.text "Total Volume: #{crypto[:total_volume]}", size: 11
          pdf.text "Wallets Monitored: #{crypto[:wallets_monitored]}", size: 11
          pdf.move_down 15
        end

        # High Risk Events
        if @report_data[:sections][:high_risk_events]
          pdf.text "High Risk Events", size: 14, style: :bold
          high_risk = @report_data[:sections][:high_risk_events]
          pdf.text "Total High Risk Events: #{high_risk[:count]}", size: 11
          pdf.move_down 10
          high_risk[:events].each do |event|
            pdf.text "• #{event[:action]} - #{event[:resource_type]} - Risk: #{event[:risk_level]}", size: 10
          end
          pdf.move_down 15
        end

        # Investigator Notes
        if @report_data[:sections][:investigator_notes]
          pdf.text "Investigator Notes", size: 14, style: :bold
          notes = @report_data[:sections][:investigator_notes]
          notes[:entries].each do |note|
            pdf.text "#{note[:timestamp]}: #{note[:note]}", size: 10
          end
          pdf.move_down 15
        end

        filename = output_path || "/tmp/audit_report_#{@report_id}_#{Time.now.to_i}.pdf"
        pdf.render_file(filename)

        { success: true, filepath: filename, size: ::File.size(filename) }
      rescue LoadError
        # Fallback to mock PDF
        mock_pdf(output_path)
      end
    end

    private

    def generate_report_id
      "AR-#{Time.now.strftime('%Y%m%d')}-#{SecureRandom.hex(4)}"
    end

    def generate_executive_summary(start_date, end_date, filters)
      events = Audit.find_events(start_time: start_date, end_time: end_date)
      bank_events = events.select { |e| e.module_name == "banking" }
      crypto_events = events.select { |e| e.module_name == "crypto" }

      {
        metrics: {
          total_events: events.count,
          total_bank_events: bank_events.count,
          total_crypto_events: crypto_events.count,
          high_risk_events: Audit.find_events(risk_level: "high", start_time: start_date, end_time: end_date).count,
          unique_users: events.map(&:user_id).uniq.count,
          report_period: "#{start_date} to #{end_date}",
        },
      }
    end

    def generate_bank_activity(start_date, end_date, filters)
      events = Audit.find_events(
        start_time: start_date,
        end_time: end_date
      ).select { |e| e.resource_type == "bank_transaction" }

      high_risk = events.select { |e| e.risk_level == "high" }

      {
        total_transactions: events.count,
        total_volume: calculate_volume(events),
        high_risk_count: high_risk.count,
        transactions: events.map do |e|
          {
            id: e.resource_id,
            action: e.action,
            user: e.user_name,
            timestamp: e.timestamp.iso8601,
            risk_level: e.risk_level,
            created_at: e.timestamp.iso8601,
            status: e.status,
            amount: e.changes.dig(:amount) || "N/A",
            currency: e.changes.dig(:currency) || "USD",
          }
        end,
      }
    end

    def generate_crypto_activity(start_date, end_date, filters)
      events = Audit.find_events(
        start_time: start_date,
        end_time: end_date
      ).select { |e| e.resource_type == "crypto_transaction" }

      wallet_events = Audit.find_events(
        start_time: start_date,
        end_time: end_date
      ).select { |e| e.resource_type == "crypto_wallet" }

      {
        total_transactions: events.count,
        total_volume: calculate_volume(events),
        wallets_monitored: wallet_events.count,
        transactions: events.map do |e|
          {
            transaction_hash: e.changes.dig(:transaction_hash) || e.resource_id,
            user: e.user_name,
            timestamp: e.timestamp.iso8601,
            risk_level: e.risk_level,
            status: e.status,
            created_at: e.timestamp.iso8601,
            amount: e.changes.dig(:amount) || "N/A",
            currency: e.changes.dig(:currency) || "BTC",
            confirmations: e.changes.dig(:confirmations) || 0,
            gas_fee: e.changes.dig(:gas_fee) || "N/A",
          }
        end,
      }
    end

    def generate_high_risk_section(start_date, end_date)
      high_risk_events = Audit.find_events(
        risk_level: "high",
        start_time: start_date,
        end_time: end_date
      )

      {
        count: high_risk_events.count,
        events: high_risk_events.map do |e|
          {
            id: e.id,
            action: e.action,
            resource_type: e.resource_type,
            user: e.user_name,
            timestamp: e.timestamp.iso8601,
            risk_level: e.risk_level,
            notes: e.investigator_notes,
          }
        end,
      }
    end

    def generate_investigator_notes(start_date, end_date)
      events = Audit.find_events(
        start_time: start_date,
        end_time: end_date
      ).select { |e| !e.investigator_notes.nil? && e.investigator_notes != "" }

      {
        entries: events.map do |e|
          {
            timestamp: e.timestamp.iso8601,
            user: e.user_name,
            resource: "#{e.resource_type}:#{e.resource_id}",
            note: e.investigator_notes,
          }
        end,
      }
    end

    def generate_compliance_summary(start_date, end_date)
      all_events = Audit.find_events(
        start_time: start_date,
        end_time: end_date
      )

      {
        total_events: all_events.count,
        by_action: group_by_action(all_events),
        by_risk_level: group_by_risk_level(all_events),
        by_module: group_by_module(all_events),
        compliance_status: determine_compliance_status(all_events),
      }
    end

    def calculate_volume(events)
      events.sum { |e| e.changes.dig(:amount).to_f }
    rescue StandardError
      0
    end

    def group_by_action(events)
      events.group_by(&:action).transform_values(&:count)
    end

    def group_by_risk_level(events)
      events.group_by(&:risk_level).transform_values(&:count)
    end

    def group_by_module(events)
      events.group_by(&:module_name).transform_values(&:count)
    end

    def determine_compliance_status(events)
      high_risk_count = events.select { |e| e.risk_level == "high" }.count
      if high_risk_count > 10
        "concerning"
      elsif high_risk_count > 5
        "warning"
      else
        "compliant"
      end
    end

    def mock_pdf(output_path)
      filename = output_path || "/tmp/audit_report_#{@report_id}_#{Time.now.to_i}.pdf"
      content = "AUDIT REPORT\n"
      content += "ID: #{@report_id}\n"
      content += "Generated: #{@report_data[:generated_at]}\n"
      content += JSON.pretty_generate(@report_data)

      ::File.write(filename, content)
      { success: true, filepath: filename, format: "text/pdf", size: ::File.size(filename), mock: true }
    end

    def self.instance
      @instance ||= new
    end
  end

  def self.audit_reports
    AuditReportGenerator.instance
  end
end
