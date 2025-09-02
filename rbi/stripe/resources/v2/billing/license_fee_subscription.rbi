# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeSubscription < APIResource
        # The ID of the Billing Cadence.
        sig { returns(String) }
        def billing_cadence; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The ID of the License Fee.
        sig { returns(String) }
        def license_fee; end
        # The ID of the License Fee Version.
        sig { returns(String) }
        def license_fee_version; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Quantity of the License Fee subscribed to.
        sig { returns(Integer) }
        def quantity; end
        # The ID of the Test Clock, if any.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end