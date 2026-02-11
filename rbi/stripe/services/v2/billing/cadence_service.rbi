# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CadenceService < StripeService
        attr_reader :spend_modifier_rules
        # Cancel the Billing Cadence.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Cadence)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a Billing Cadence object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CadenceCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Cadence)
         }
        def create(params = {}, opts = {}); end

        # List Billing Cadences.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CadenceListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Billing Cadence object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Cadence)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Billing Cadence object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Cadence)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end