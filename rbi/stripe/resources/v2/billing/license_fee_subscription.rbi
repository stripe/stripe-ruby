# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeSubscription < APIResource
        # The ID of the Billing Cadence.
        sig { returns(String) }
        attr_reader :billing_cadence
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # The ID of the License Fee.
        sig { returns(String) }
        attr_reader :license_fee
        # The ID of the License Fee Version.
        sig { returns(String) }
        attr_reader :license_fee_version
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Quantity of the License Fee subscribed to.
        sig { returns(Integer) }
        attr_reader :quantity
        # The ID of the Test Clock, if any.
        sig { returns(T.nilable(String)) }
        attr_reader :test_clock
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end