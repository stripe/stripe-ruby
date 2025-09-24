# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    module Analytics
      class MeterUsageRow < APIResource
        OBJECT_NAME = "billing.analytics.meter_usage_row"
        def self.object_name
          "billing.analytics.meter_usage_row"
        end

        # A set of key-value pairs representing the dimensions of the meter usage.
        attr_reader :dimensions
        # Timestamp indicating the end of the bucket. Measured in seconds since the Unix epoch.
        attr_reader :ends_at
        # Unique identifier for the object.
        attr_reader :id
        # The unique identifier for the meter. Null if no meters were provided and usage was aggregated across all meters.
        attr_reader :meter
        # String representing the object's type. Objects of the same type share the same value.
        attr_reader :object
        # Timestamp indicating the start of the bucket. Measured in seconds since the Unix epoch.
        attr_reader :starts_at
        # The aggregated meter usage value for the specified bucket.
        attr_reader :value

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
