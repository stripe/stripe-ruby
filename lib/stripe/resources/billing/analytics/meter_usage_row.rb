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

        # Timestamp indicating the end of the bucket. Measured in seconds since the Unix epoch.
        attr_reader :bucket_end_time
        # Timestamp indicating the start of the bucket. Measured in seconds since the Unix epoch.
        attr_reader :bucket_start_time
        # The aggregated meter usage value for the specified bucket.
        attr_reader :bucket_value
        # A set of key-value pairs representing the dimensions of the meter usage.
        attr_reader :dimensions
        # Unique identifier for the object.
        attr_reader :id
        # The unique identifier for the meter. Null if no meters were provided and usage was aggregated across all meters.
        attr_reader :meter_id
        # String representing the object's type. Objects of the same type share the same value.
        attr_reader :object
      end
    end
  end
end
