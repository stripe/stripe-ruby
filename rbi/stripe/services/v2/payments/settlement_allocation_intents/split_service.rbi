# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitService < StripeService
          # Cancel SettlementAllocationIntentSplit API.
          sig {
            params(settlement_allocation_intent_id: String, id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntents::SplitCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntentSplit)
           }
          def cancel(settlement_allocation_intent_id, id, params = {}, opts = {}); end

          # Create SettlementAllocationIntentSplit API.
          sig {
            params(settlement_allocation_intent_id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntents::SplitCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntentSplit)
           }
          def create(settlement_allocation_intent_id, params = {}, opts = {}); end

          # List SettlementAllocationIntentSplits API.
          sig {
            params(settlement_allocation_intent_id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntents::SplitListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(settlement_allocation_intent_id, params = {}, opts = {}); end

          # Retrieve SettlementAllocationIntentSplit API.
          sig {
            params(settlement_allocation_intent_id: String, id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntents::SplitRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntentSplit)
           }
          def retrieve(settlement_allocation_intent_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end