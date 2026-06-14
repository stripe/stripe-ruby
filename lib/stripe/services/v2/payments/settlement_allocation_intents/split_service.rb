# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitService < StripeService
          # Cancel SettlementAllocationIntentSplit API.
          def cancel(settlement_allocation_intent_id, id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/payments/settlement_allocation_intents/%<settlement_allocation_intent_id>s/splits/%<id>s/cancel", { settlement_allocation_intent_id: CGI.escape(settlement_allocation_intent_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Create SettlementAllocationIntentSplit API.
          def create(settlement_allocation_intent_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/payments/settlement_allocation_intents/%<settlement_allocation_intent_id>s/splits", { settlement_allocation_intent_id: CGI.escape(settlement_allocation_intent_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List SettlementAllocationIntentSplits API.
          def list(settlement_allocation_intent_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/payments/settlement_allocation_intents/%<settlement_allocation_intent_id>s/splits", { settlement_allocation_intent_id: CGI.escape(settlement_allocation_intent_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve SettlementAllocationIntentSplit API.
          def retrieve(settlement_allocation_intent_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/payments/settlement_allocation_intents/%<settlement_allocation_intent_id>s/splits/%<id>s", { settlement_allocation_intent_id: CGI.escape(settlement_allocation_intent_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
