# frozen_string_literal: true

module Stripe
  module Audit
    # Represents an audit event that occurred in the system
    class AuditEvent
      attr_reader :id, :user_id, :user_name, :action, :resource_type, :resource_id,
                  :timestamp, :changes, :investigator_notes, :ip_address, :status,
                  :risk_level, :module_name

      def initialize(
        user_id:,
        user_name:,
        action:,
        resource_type:,
        resource_id: nil,
        changes: {},
        investigator_notes: nil,
        ip_address: nil,
        status: "completed",
        risk_level: "low",
        module_name: "general"
      )
        @id = SecureRandom.uuid
        @user_id = user_id
        @user_name = user_name
        @action = action
        @resource_type = resource_type
        @resource_id = resource_id
        @timestamp = Time.now.utc
        @changes = changes.is_a?(Hash) ? changes : {}
        @investigator_notes = investigator_notes
        @ip_address = ip_address
        @status = status
        @risk_level = risk_level
        @module_name = module_name
      end

      def to_h
        {
          id: @id,
          user_id: @user_id,
          user_name: @user_name,
          action: @action,
          resource_type: @resource_type,
          resource_id: @resource_id,
          timestamp: @timestamp.iso8601,
          changes: @changes,
          investigator_notes: @investigator_notes,
          ip_address: @ip_address,
          status: @status,
          risk_level: @risk_level,
          module_name: @module_name,
        }
      end

      def to_json(options = {})
        JSON.generate(to_h, options)
      end

      def self.from_context(action:, resource_type:, resource_id: nil, changes: {},
                            investigator_notes: nil, risk_level: "low", module_name: "general")
        context = RBAC::Context.current
        raise "No active RBAC context" unless context

        new(
          user_id: context.user_id,
          user_name: context.user_name,
          action: action,
          resource_type: resource_type,
          resource_id: resource_id,
          changes: changes,
          investigator_notes: investigator_notes,
          ip_address: context.ip_address,
          status: "completed",
          risk_level: risk_level,
          module_name: module_name
        )
      end
    end
  end
end
