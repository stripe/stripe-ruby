# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundFundingService < StripeService
        # Lists InboundFundings.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/inbound_fundings",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an InboundFunding by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/inbound_fundings/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
