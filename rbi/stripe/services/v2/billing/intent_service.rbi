# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class IntentService < StripeService
        attr_reader :actions
        # Cancel a Billing Intent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Commit a Billing Intent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentCommitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def commit(id, params = {}, opts = {}); end

        # Create a Billing Intent.
        sig {
          params(params: T.any(::Stripe::V2::Billing::IntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def create(params = {}, opts = {}); end

        # List Billing Intents.
        sig {
          params(params: T.any(::Stripe::V2::Billing::IntentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Release a Billing Intent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentReleaseReservationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def release_reservation(id, params = {}, opts = {}); end

        # Reserve a Billing Intent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentReserveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def reserve(id, params = {}, opts = {}); end

        # Retrieve a Billing Intent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Intent)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end