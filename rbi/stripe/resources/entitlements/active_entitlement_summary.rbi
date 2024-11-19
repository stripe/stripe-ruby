# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    # A summary of a customer's active entitlements.
    class ActiveEntitlementSummary < APIResource
      sig { returns(String) }
      # The customer that is entitled to this feature.
      attr_reader :customer
      sig { returns(Stripe::ListObject) }
      # The list of entitlements this customer has.
      attr_reader :entitlements
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end