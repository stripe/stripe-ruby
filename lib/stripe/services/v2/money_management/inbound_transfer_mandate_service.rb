# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateService < StripeService
        # Cancel a pending or active InboundTransferMandate.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/inbound_transfer_mandates/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create an InboundTransferMandate for a v2 credential. If a pending or
        # active mandate already exists for the same user and credential, that
        # mandate is returned instead of creating a new one.
        #
        # ** raises AlreadyExistsError
        # ** raises ServiceUnavailableError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/inbound_transfer_mandates",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a list of InboundTransferMandates for the authenticated compartment.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/inbound_transfer_mandates",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an InboundTransferMandate by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/inbound_transfer_mandates/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
