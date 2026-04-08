# frozen_string_literal: true

module Stripe
  module Audit
    # Service for logging and retrieving audit events
    class AuditLogger
      attr_reader :events

      def initialize
        @events = []
        @lock = Mutex.new
      end

      # Log an audit event
      def log(event)
        raise ArgumentError, "Expected AuditEvent, got #{event.class}" unless event.is_a?(AuditEvent)

        @lock.synchronize do
          @events << event
        end

        event
      end

      # Log from current RBAC context
      def log_from_context(action:, resource_type:, resource_id: nil, changes: {},
                           investigator_notes: nil, risk_level: "low", module_name: "general")
        event = AuditEvent.from_context(
          action: action,
          resource_type: resource_type,
          resource_id: resource_id,
          changes: changes,
          investigator_notes: investigator_notes,
          risk_level: risk_level,
          module_name: module_name
        )
        log(event)
      end

      # Find events by criteria
      def find_events(user_id: nil, action: nil, resource_type: nil,
                      resource_id: nil, start_time: nil, end_time: nil, risk_level: nil)
        results = @lock.synchronize { @events.dup }

        results = results.select { |e| e.user_id == user_id } if user_id
        results = results.select { |e| e.action == action } if action
        results = results.select { |e| e.resource_type == resource_type } if resource_type
        results = results.select { |e| e.resource_id == resource_id } if resource_id
        results = results.select { |e| e.risk_level == risk_level } if risk_level

        if start_time
          start_time = Time.parse(start_time.to_s) unless start_time.is_a?(Time)
          results = results.select { |e| e.timestamp >= start_time }
        end

        if end_time
          end_time = Time.parse(end_time.to_s) unless end_time.is_a?(Time)
          # Add 23:59:59 to ensure we capture all events on that day
          end_time = end_time + 86_400 if end_time.hour == 0 && end_time.min == 0 && end_time.sec == 0
          results = results.select { |e| e.timestamp <= end_time }
        end

        results
      end

      # Get all events
      def all_events
        @lock.synchronize { @events.dup }
      end

      # Get events by time range
      def events_in_range(start_time, end_time)
        find_events(start_time: start_time, end_time: end_time)
      end

      # Get events by user
      def events_by_user(user_id)
        find_events(user_id: user_id)
      end

      # Get events by resource
      def events_for_resource(resource_type, resource_id = nil)
        find_events(resource_type: resource_type, resource_id: resource_id)
      end

      # Get high-risk events
      def high_risk_events
        find_events(risk_level: "high")
      end

      # Get events by module
      def events_by_module(module_name)
        @lock.synchronize do
          @events.select { |e| e.module_name == module_name }
        end
      end

      # Export events as JSON
      def export_as_json(filters = {})
        events = find_events(**filters)
        JSON.pretty_generate(events.map(&:to_h))
      end

      # Export events as CSV
      def export_as_csv(filters = {})
        events = find_events(**filters)
        return "" if events.empty?

        csv = "ID,User ID,User Name,Action,Resource Type,Resource ID,Timestamp,Status,Risk Level,Module,IP Address\n"
        events.each do |event|
          csv += "#{event.id},#{event.user_id},#{event.user_name},#{event.action},"
          csv += "#{event.resource_type},#{event.resource_id},#{event.timestamp.iso8601},"
          csv += "#{event.status},#{event.risk_level},#{event.module_name},#{event.ip_address}\n"
        end
        csv
      end

      # Clear all events (for testing)
      def clear!
        @lock.synchronize { @events.clear }
      end

      def count
        @lock.synchronize { @events.size }
      end

      def self.instance
        @instance ||= new
      end
    end

    # Global singleton instance
    def self.logger
      AuditLogger.instance
    end
  end
end
