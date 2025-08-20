# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    module Analytics
      class MeterUsageRow < APIResource
        # Timestamp indicating the end of the bucket. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :bucket_end_time
        # Timestamp indicating the start of the bucket. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :bucket_start_time
        # The aggregated meter usage value for the specified bucket.
        sig { returns(Float) }
        attr_reader :bucket_value
        # A set of key-value pairs representing the dimensions of the meter usage.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :dimensions
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # The unique identifier for the meter. Null if no meters were provided and usage was aggregated across all meters.
        sig { returns(T.nilable(String)) }
        attr_reader :meter_id
        # String representing the object's type. Objects of the same type share the same value.
        sig { returns(String) }
        attr_reader :object
      end
    end
  end
end