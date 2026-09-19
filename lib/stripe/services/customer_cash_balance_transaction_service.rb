# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerCashBalanceTransactionService < StripeService
    # Returns a list of transactions that modified the customer's [cash balance](https://docs.stripe.com/docs/payments/customer-balance).
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/cash_balance_transactions", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a specific cash balance transaction, which updated the customer's [cash balance](https://docs.stripe.com/docs/payments/customer-balance).
    def retrieve(customer_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer_id>s/cash_balance_transactions/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
