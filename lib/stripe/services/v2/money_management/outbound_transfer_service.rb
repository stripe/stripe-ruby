# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundTransferService < StripeService
        # Cancels an OutboundTransfer. Only processing OutboundTransfers can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/outbound_transfers/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates an OutboundTransfer.
        #
        # ** raises InsufficientFundsError
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/outbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of OutboundTransfers that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/outbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundPayment create or list response.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/outbound_transfers/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
