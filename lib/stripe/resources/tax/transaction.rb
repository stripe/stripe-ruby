# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Transaction records the tax collected from or refunded to your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
    class Transaction < APIResource
      OBJECT_NAME = "tax.transaction"

      # Retrieves the line items of a committed standalone transaction as a collection.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Creates a Tax Transaction from a calculation.
      def self.create_from_calculation(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_from_calculation",
          params: params,
          opts: opts
        )
      end

      # Partially or fully reverses a previously created Transaction.
      def self.create_reversal(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a committed standalone transaction as a collection.
      def self.list_line_items(transaction, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
