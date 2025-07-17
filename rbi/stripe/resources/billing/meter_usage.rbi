# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing meter usage event represents an aggregated view of a customer's billing meter events within a specified timeframe.
    class MeterUsage < SingletonAPIResource
      # The aggregated meter usage data for the specified customer and time range.
      sig { returns(T::Array[Stripe::Billing::MeterUsageRow]) }
      attr_reader :data
      # Timestamp indicating how fresh the data is. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :data_refreshed_at
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end