# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionService < StripeService
        # Returns a list of Transactions that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/transactions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of a Transaction by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/transactions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
