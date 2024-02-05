# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.transaction"

      # Returns a list of Financial Connections Transaction objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/transactions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
