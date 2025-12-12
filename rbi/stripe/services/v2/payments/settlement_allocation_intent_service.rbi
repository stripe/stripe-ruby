# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentService < StripeService
        attr_reader :splits
        # Cancel SettlementAllocationIntent API.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create SettlementAllocationIntent API.
        sig {
          params(params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def create(params = {}, opts = {}); end

        # Retrieve SettlementAllocationIntent API.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Submit SettlementAllocationIntent API.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def submit(id, params = {}, opts = {}); end

        # Update SettlementAllocationIntent API.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end