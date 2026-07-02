# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BalanceTransactionService < StripeService
    # Returns a list of transactions that have contributed to the Stripe account balance (for example, charges, transfers, and so on). The transactions return in sorted order, with the most recent transactions appearing first.
    #
    # The previous name of this endpoint was “Balance history,” and it used the path /v1/balance/history.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/balance_transactions",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the balance transaction with the given ID.
    #
    # Note that this endpoint previously used the path /v1/balance/history/:id.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/balance_transactions/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
