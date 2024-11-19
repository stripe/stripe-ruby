# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # An active entitlement describes access to a feature for a customer.
    class ActiveEntitlement < APIResource
      sig { returns(T.any(String, Stripe::Entitlements::Feature)) }
      # The [Feature](https://stripe.com/docs/api/entitlements/feature) that the customer is entitled to.
      attr_reader :feature
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      attr_reader :lookup_key
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end