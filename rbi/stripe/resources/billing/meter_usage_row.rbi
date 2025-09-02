# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class MeterUsageRow < APIResource
      # Timestamp indicating the end of the bucket. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def bucket_end_time; end
      # Timestamp indicating the start of the bucket. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def bucket_start_time; end
      # The aggregated meter usage value for the specified bucket.
      sig { returns(Float) }
      def bucket_value; end
      # A set of key-value pairs representing the dimensions of the meter usage.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def dimensions; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The unique identifier for the meter. Null if no meters were provided and usage was aggregated across all meters.
      sig { returns(T.nilable(String)) }
      def meter_id; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
    end
  end
end