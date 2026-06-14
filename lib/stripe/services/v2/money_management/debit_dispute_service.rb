# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DebitDisputeService < StripeService
        # Creates a new DebitDispute for a ReceivedDebit.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/debit_disputes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a list of DebitDisputes.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/debit_disputes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing DebitDispute.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/debit_disputes/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
