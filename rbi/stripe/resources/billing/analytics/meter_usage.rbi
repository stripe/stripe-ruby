# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    module Analytics
      # A billing meter usage event represents an aggregated view of a customer's billing meter events within a specified timeframe.
      class MeterUsage < SingletonAPIResource
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value.
        sig { returns(String) }
        def object; end
        # The timestamp to indicate data freshness, measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def refreshed_at; end
        # Attribute for field rows
        sig { returns(Stripe::ListObject) }
        def rows; end
      end
    end
  end
end