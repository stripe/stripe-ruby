# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitMandateService < StripeService
        # Cancels an active ReceivedDebitMandate.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/received_debit_mandates/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of ReceivedDebitMandates.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/received_debit_mandates",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing ReceivedDebitMandate.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/received_debit_mandates/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
