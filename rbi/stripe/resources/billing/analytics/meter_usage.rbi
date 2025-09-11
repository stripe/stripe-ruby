# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    module Analytics
      # A billing meter usage event represents an aggregated view of a customer's billing meter events within a specified timeframe.
      class MeterUsage < SingletonAPIResource
        # The aggregated meter usage data for the specified customer and time range.
        sig { returns(T::Array[Stripe::Billing::Analytics::MeterUsageRow]) }
        def data; end
        # Timestamp indicating how fresh the data is. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def data_refreshed_at; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value.
        sig { returns(String) }
        def object; end
      end
    end
  end
end