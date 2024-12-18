# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
    class CreditBalanceTransaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "billing.credit_balance_transaction"
      def self.object_name
        "billing.credit_balance_transaction"
      end

      # Retrieve a list of credit balance transactions.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/credit_balance_transactions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
