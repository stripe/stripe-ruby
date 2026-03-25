# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RiskSignals < APIResource
    OBJECT_NAME = "risk_signals"
    def self.object_name
      "risk_signals"
    end

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Represents the status of risk signal session metadata collection. When false, the account has payouts and payments disabled.
    attr_reader :session_metadata

    def self.inner_class_types
      @inner_class_types = {}
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
