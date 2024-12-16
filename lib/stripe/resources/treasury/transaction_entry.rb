# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # TransactionEntries represent individual units of money movements within a single [Transaction](https://stripe.com/docs/api#transactions).
    class TransactionEntry < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.transaction_entry"
      def self.object_name
        "treasury.transaction_entry"
      end

      # Retrieves a list of TransactionEntry objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/transaction_entries",
          params: params,
          opts: opts
        )
      end

      def self.resource_url
        "/v1/treasury/transaction_entries"
      end
    end
  end
end
