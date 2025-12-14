# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentService < StripeService
        attr_reader :splits
        # Cancels an existing SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending`, `submitted` and `errored` can be `canceled`.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a new SettlementAllocationIntent.
        sig {
          params(params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def create(params = {}, opts = {}); end

        # Retrieve an existing SettlementAllocationIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Submits a SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending` can be `submitted`. The net sum of SettlementAllocationIntentSplit amount must be equal to SettlementAllocationIntent amount to be eligible to be submitted.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def submit(id, params = {}, opts = {}); end

        # Updates SettlementAllocationIntent. Only SettlementAllocationIntent with status `pending`, `submitted` and `errored` can be updated. Only amount and reference fields can be updated for a SettlementAllocationIntent and at least one must be present. Updating an `amount` moves the SettlementAllocationIntent `pending` status and updating the `reference` for `errored` SettlementAllocationIntent moves it to `submitted`.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Payments::SettlementAllocationIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end