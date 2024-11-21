# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    # An active entitlement describes access to a feature for a customer.
    class ActiveEntitlement < APIResource
      # The [Feature](https://stripe.com/docs/api/entitlements/feature) that the customer is entitled to.
      sig { returns(T.any(String, Stripe::Entitlements::Feature)) }
      attr_reader :feature

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      sig { returns(String) }
      attr_reader :lookup_key

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end