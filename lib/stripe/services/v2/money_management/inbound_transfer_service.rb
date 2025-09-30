# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferService < StripeService
        # InboundTransfers APIs are used to create, retrieve or list InboundTransfers.
        #
        # ** raises BlockedByStripeError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/inbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a list of InboundTransfers.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/inbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an InboundTransfer by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/inbound_transfers/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
