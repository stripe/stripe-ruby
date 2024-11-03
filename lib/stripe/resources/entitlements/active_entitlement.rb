# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # An active entitlement describes access to a feature for a customer.
    class ActiveEntitlement < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "entitlements.active_entitlement"
      def self.object_name
        "entitlements.active_entitlement"
      end

      # Retrieve a list of active entitlements for a customer
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/entitlements/active_entitlements",
          params: params,
          opts: opts
        )
      end
    end
  end
end
