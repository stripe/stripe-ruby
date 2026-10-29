# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedCreditService < StripeService
        # Retrieves a list of ReceivedCredits.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/received_credits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a ReceivedCredit by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/received_credits/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
