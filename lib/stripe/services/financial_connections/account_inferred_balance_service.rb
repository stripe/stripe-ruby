# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AccountInferredBalanceService < StripeService
      # Lists the recorded inferred balances for a Financial Connections Account.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<id>s/inferred_balances", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
