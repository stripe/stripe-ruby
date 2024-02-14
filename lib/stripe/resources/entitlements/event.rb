# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # An entitlement event either grants or revokes an entitlement to a feature for a customer.
    class Event < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "entitlements.event"
      def self.object_name
        "entitlements.event"
      end

      # Create an entitlement event manually, outside of the entitlement events automatically created by Stripe lifecycle events.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/entitlements/events",
          params: params,
          opts: opts
        )
      end
    end
  end
end
