# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingTransactionService < StripeService
      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/capital/financing_transactions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a financing transaction for a financing offer.
      def retrieve(financing_transaction, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/capital/financing_transactions/%<financing_transaction>s", { financing_transaction: CGI.escape(financing_transaction) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
