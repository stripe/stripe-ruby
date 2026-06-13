# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentService < StripeService
        # Cancels an OutboundPayment. Only processing OutboundPayments can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/outbound_payments/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates an OutboundPayment.
        #
        # ** raises InsufficientFundsError
        # ** raises FeatureNotEnabledError
        # ** raises QuotaExceededError
        # ** raises RecipientNotNotifiableError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/outbound_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of OutboundPayments that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/outbound_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment create or list response.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/outbound_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
