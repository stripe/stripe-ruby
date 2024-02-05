# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "capital.financing_transaction"

      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/capital/financing_transactions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
