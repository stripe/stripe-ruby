# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
    class Association < APIResource
      OBJECT_NAME = "tax.association"
      def self.object_name
        "tax.association"
      end

      # Finds a tax association object by PaymentIntent id.
      def self.find(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/associations/find",
          params: params,
          opts: opts
        )
      end
    end
  end
end
