# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax `Transaction` records the tax collected from or refunded to your customer.
    class Transaction < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.transaction"

      def self.create_reversal(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts
        )
      end
    end
  end
end
