# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.transaction"

      # Retrieves a list of Transaction objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/transactions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
