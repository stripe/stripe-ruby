# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CustomPricingUnitService < StripeService
        # Create a Custom Pricing Unit object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CustomPricingUnitCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CustomPricingUnit)
         }
        def create(params = {}, opts = {}); end

        # List all Custom Pricing Unit objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CustomPricingUnitListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Custom Pricing Unit object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CustomPricingUnitRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CustomPricingUnit)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Custom Pricing Unit object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CustomPricingUnitUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CustomPricingUnit)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end