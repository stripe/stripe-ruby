# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    # A summary of a customer's active entitlements.
    class ActiveEntitlementSummary < APIResource
      # The customer that is entitled to this feature.
      sig { returns(String) }
      attr_reader :customer
      # The list of entitlements this customer has.
      sig { returns(Stripe::ListObject) }
      attr_reader :entitlements
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end