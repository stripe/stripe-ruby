# frozen_string_literal: true

require "digest"
require "json"
require "time"

module Stripe
  class TreasuryReconciliation
    class Discrepancy
      attr_accessor :id, :type, :transaction, :ledger_entry, :status, :created_at, :resolution_note, :resolved_at

      def initialize(type, transaction, ledger_entry)
        @id = "disc_#{SecureRandom.hex(6)}"
        @type = type
        @transaction = transaction
        @ledger_entry = ledger_entry
        @status = :open
        @created_at = Time.now.utc.iso8601
        @resolution_note = nil
        @resolved_at = nil
      end

      def mark_resolved(note)
        @status = :resolved
        @resolution_note = note
        @resolved_at = Time.now.utc.iso8601
      end

      def to_h
        {
          id: @id,
          type: @type,
          transaction: @transaction,
          ledger_entry: @ledger_entry,
          status: @status,
          created_at: @created_at,
          resolution_note: @resolution_note,
          resolved_at: @resolved_at,
        }
      end
    end

    attr_reader :discrepancies, :audit_log

    def initialize
      @discrepancies = []
      @audit_log = []
      log_audit(:reconciliation_engine_initialized)
    end

    def reconcile(transactions, ledger_entries)
      log_audit(:reconciliation_started, { transaction_count: transactions.count, ledger_count: ledger_entries.count })

      matched = 0
      ledger_by_id = {}
      ledger_entries.each { |e| ledger_by_id[e[:transaction_id]] = e }

      transactions.each do |txn|
        ledger_entry = ledger_by_id[txn[:id]]

        if !ledger_entry
          add_discrepancy(:missing_in_ledger, txn, nil)
        elsif txn[:amount] != ledger_entry[:amount]
          add_discrepancy(:amount_mismatch, txn, ledger_entry)
        elsif txn[:currency] != ledger_entry[:currency]
          add_discrepancy(:currency_mismatch, txn, ledger_entry)
        else
          matched += 1
        end
      end

      ledger_entries.each do |ledger_entry|
        next if transactions.find { |t| t[:id] == ledger_entry[:transaction_id] }

        add_discrepancy(:extra_in_ledger, nil, ledger_entry)
      end

      log_audit(:reconciliation_completed, {
        matched: matched,
        discrepancies: @discrepancies.count,
      })

      {
        matched: matched,
        discrepancy_count: @discrepancies.count,
        success_rate: matched.to_f / transactions.count * 100,
      }
    end

    def resolve_discrepancy(discrepancy_id, note)
      discrepancy = @discrepancies.find { |d| d.id == discrepancy_id }
      raise StandardError, "Discrepancy not found: #{discrepancy_id}" unless discrepancy

      discrepancy.mark_resolved(note)
      log_audit(:discrepancy_resolved, {
        discrepancy_id: discrepancy_id,
        type: discrepancy.type,
        resolution_note: note,
      })

      discrepancy
    end

    def get_discrepancies(status: nil)
      if status
        @discrepancies.select { |d| d.status == status }
      else
        @discrepancies
      end
    end

    def audit_log_entries
      @audit_log.dup
    end

    private

    def add_discrepancy(type, transaction, ledger_entry)
      disc = Discrepancy.new(type, transaction, ledger_entry)
      @discrepancies << disc
      log_audit(:discrepancy_detected, { type: type, discrepancy_id: disc.id })
    end

    def log_audit(event, payload = {})
      entry = {
        event: event,
        payload: payload,
        timestamp: Time.now.utc.iso8601,
        previous_hash: @audit_log.last&.dig(:hash),
      }
      entry[:hash] = Digest::SHA256.hexdigest(JSON.generate(entry.reject { |k| k == :hash }))
      @audit_log << entry
    end
  end
end
