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

        # Cancels an existing SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending`, `submitted` and `errored` can be `canceled`.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a new SettlementAllocationIntent.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/payments/settlement_allocation_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an existing SettlementAllocationIntent.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submits a SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending` can be `submitted`. The net sum of SettlementAllocationIntentSplit amount must be equal to SettlementAllocationIntent amount to be eligible to be submitted.
        def submit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/settlement_allocation_intents/%<id>s/submit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending`, `submitted` and `errored` can be updated. Only amount and reference fields can be updated for a SettlementAllocationIntent and at least one must be present. Updating an `amount` moves the SettlementAllocationIntent `pending` status and updating the `reference` for `errored` SettlementAllocationIntent moves it to `submitted`.
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
