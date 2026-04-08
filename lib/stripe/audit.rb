# frozen_string_literal: true

require "stripe/audit/audit_event"
require "stripe/audit/audit_logger"

module Stripe
  module Audit
    def self.log_event(event)
      logger.log(event)
    end

    def self.log_from_context(action:, resource_type:, resource_id: nil, changes: {},
                              investigator_notes: nil, risk_level: "low", module_name: "general")
      logger.log_from_context(
        action: action,
        resource_type: resource_type,
        resource_id: resource_id,
        changes: changes,
        investigator_notes: investigator_notes,
        risk_level: risk_level,
        module_name: module_name
      )
    end

    def self.find_events(user_id: nil, action: nil, resource_type: nil,
                         resource_id: nil, start_time: nil, end_time: nil, risk_level: nil)
      logger.find_events(
        user_id: user_id,
        action: action,
        resource_type: resource_type,
        resource_id: resource_id,
        start_time: start_time,
        end_time: end_time,
        risk_level: risk_level
      )
    end

    def self.all_events
      logger.all_events
    end

    def self.events_by_user(user_id)
      logger.events_by_user(user_id)
    end

    def self.events_for_resource(resource_type, resource_id = nil)
      logger.events_for_resource(resource_type, resource_id)
    end

    def self.high_risk_events
      logger.high_risk_events
    end

    def self.logger
      AuditLogger.instance
    end
  end
end
