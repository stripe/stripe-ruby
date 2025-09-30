# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteService < StripeService
        # Creates an OutboundPaymentQuote usable in an OutboundPayment.
        #
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/outbound_payment_quotes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing OutboundPaymentQuote by passing the unique OutboundPaymentQuote ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/outbound_payment_quotes/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
