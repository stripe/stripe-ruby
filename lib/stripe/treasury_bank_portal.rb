# frozen_string_literal: true

require "digest"
require "json"
require "time"

module Stripe
  class TreasuryBankPortal
    class AdapterNotFoundError < StandardError; end
    class AuditIntegrityError < StandardError; end

    ADAPTER_REGISTRY = {}

    attr_reader :adapter, :audit_log

    def self.register_adapter(name, adapter_class)
      ADAPTER_REGISTRY[name.to_sym] = adapter_class
    end

    def self.available_adapters
      ADAPTER_REGISTRY.keys
    end

    def self.adapter_for(name)
      adapter = ADAPTER_REGISTRY[name.to_sym]
      raise AdapterNotFoundError, "No bank adapter registered for #{name}" unless adapter

      adapter
    end

    def initialize(adapter_name, config = {})
      adapter_class = self.class.adapter_for(adapter_name)
      @adapter = adapter_class.new(config)
      @audit_log = AuditLog.new
      audit_event(:portal_initialized, adapter: adapter_name, config: config)
    end

    def switch_adapter(adapter_name, config = {})
      audit_event(:adapter_switch_requested, from: @adapter.class.name, to: adapter_name, config: config)
      adapter_class = self.class.adapter_for(adapter_name)
      @adapter = adapter_class.new(config)
      audit_event(:adapter_switched, adapter: adapter_name)
      @adapter
    end

    def fetch_transactions(since: nil, until_time: nil, limit: 100)
      audit_event(:fetch_transactions_requested, since: since, until_time: until_time, limit: limit)
      transactions = @adapter.fetch_transactions(since: since, until_time: until_time, limit: limit)
      audit_event(:fetch_transactions_completed, count: transactions.count)
      transactions
    end

    def start_realtime_feed(&callback)
      audit_event(:realtime_feed_started, adapter: @adapter.class.name)
      @adapter.start_realtime_feed do |event|
        audit_event(:realtime_event_received, event: event)
        callback.call(event) if callback
      end
    end

    def submit_bank_action(action, metadata = {})
      audit_event(:bank_action_requested, action: action, metadata: metadata)
      result = @adapter.submit_action(action, metadata)
      audit_event(:bank_action_completed, action: action, result: result)
      result
    end

    def audit_history
      @audit_log.entries.dup
    end

    def verify_audit_chain!
      @audit_log.verify_chain!
    end

    private

    def audit_event(action, payload = {})
      @audit_log.add_entry(action, payload)
    end

    class BankAdapter
      attr_reader :config

      def initialize(config = {})
        @config = config
      end

      def fetch_transactions(since: nil, until_time: nil, limit: 100)
        raise NotImplementedError, "fetch_transactions must be implemented by adapter"
      end

      def start_realtime_feed
        raise NotImplementedError, "start_realtime_feed must be implemented by adapter"
      end

      def submit_action(action, metadata)
        raise NotImplementedError, "submit_action must be implemented by adapter"
      end
    end

    class PlaidAdapter < BankAdapter
      def fetch_transactions(since: nil, until_time: nil, limit: 100)
        Array.new(limit) do |index|
          {
            id: "plaid_txn_#{SecureRandom.hex(4)}",
            amount: rand(100..5000),
            currency: "USD",
            description: "Plaid transaction #{index + 1}",
            timestamp: (Time.now.utc - rand(0..86_400)).iso8601,
          }
        end
      end

      def start_realtime_feed
        Thread.new do
          loop do
            sleep 1
            event = {
              event_id: "plaid_evt_#{SecureRandom.hex(4)}",
              type: "transaction.posted",
              data: {
                id: "plaid_txn_#{SecureRandom.hex(4)}",
                amount: rand(100..5_000),
                currency: "USD",
                description: "Realtime Plaid transaction",
              },
              timestamp: Time.now.utc.iso8601,
            }
            yield(event) if block_given?
          end
        end
      end

      def submit_action(action, metadata)
        {
          adapter: "plaid",
          action: action,
          metadata: metadata,
          status: "submitted",
          submitted_at: Time.now.utc.iso8601,
        }
      end
    end

    class BankAPIAdapter < BankAdapter
      def fetch_transactions(since: nil, until_time: nil, limit: 100)
        Array.new(limit) do |index|
          {
            id: "bankapi_txn_#{SecureRandom.hex(4)}",
            amount: rand(100..5_000),
            currency: config[:currency] || "USD",
            description: "Bank API transaction #{index + 1}",
            timestamp: (Time.now.utc - rand(0..86_400)).iso8601,
          }
        end
      end

      def start_realtime_feed
        Thread.new do
          loop do
            sleep 1
            event = {
              event_id: "bankapi_evt_#{SecureRandom.hex(4)}",
              type: "transaction.posted",
              data: {
                id: "bankapi_txn_#{SecureRandom.hex(4)}",
                amount: rand(100..5_000),
                currency: config[:currency] || "USD",
                description: "Realtime Bank API transaction",
              },
              timestamp: Time.now.utc.iso8601,
            }
            yield(event) if block_given?
          end
        end
      end

      def submit_action(action, metadata)
        {
          adapter: "bank_api",
          action: action,
          metadata: metadata,
          status: "received",
          submitted_at: Time.now.utc.iso8601,
        }
      end
    end

    class AuditLog
      attr_reader :entries

      def initialize
        @entries = []
        @previous_hash = nil
      end

      def add_entry(action, metadata = {})
        record = {
          action: action,
          metadata: metadata,
          timestamp: Time.now.utc.iso8601,
          previous_hash: @previous_hash,
        }
        record[:hash] = Digest::SHA256.hexdigest(JSON.generate(record))
        @entries << record
        @previous_hash = record[:hash]
        record
      end

      def verify_chain!
        @entries.each_with_index do |entry, index|
          expected = Digest::SHA256.hexdigest(JSON.generate(entry.reject { |k| k == :hash }))
          raise AuditIntegrityError, "Audit entry #{index} hash mismatch" unless entry[:hash] == expected
          if index.positive? && entry[:previous_hash] != @entries[index - 1][:hash]
            raise AuditIntegrityError, "Audit chain broken at entry #{index}"
          end
        end
        true
      end
    end

    register_adapter(:plaid, PlaidAdapter)
    register_adapter(:bank_api, BankAPIAdapter)
  end
end
