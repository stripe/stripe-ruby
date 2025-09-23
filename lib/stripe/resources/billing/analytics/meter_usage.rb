# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    module Analytics
      # A billing meter usage event represents an aggregated view of a customer's billing meter events within a specified timeframe.
      class MeterUsage < SingletonAPIResource
        OBJECT_NAME = "billing.analytics.meter_usage"
        def self.object_name
          "billing.analytics.meter_usage"
        end

        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value.
        attr_reader :object
        # The timestamp to indicate data freshness, measured in seconds since the Unix epoch.
        attr_reader :refreshed_at
        # Attribute for field rows
        attr_reader :rows

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
