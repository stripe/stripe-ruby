# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitService < StripeService
        # Retrieves a list of ReceivedDebits, given the selected filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/received_debits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a single ReceivedDebit by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/received_debits/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
