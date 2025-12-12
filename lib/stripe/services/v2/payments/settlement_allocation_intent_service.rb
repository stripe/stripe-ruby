# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentService < StripeService
        attr_reader :splits

        def initialize(requestor)
          super
          @splits = Stripe::V2::Payments::SettlementAllocationIntents::SplitService.new(@requestor)
        end

        # Cancel SettlementAllocationIntent API.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create SettlementAllocationIntent API.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/payments/settlement_allocation_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve SettlementAllocationIntent API.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submit SettlementAllocationIntent API.
        def submit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s/submit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update SettlementAllocationIntent API.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
