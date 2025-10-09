# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanService < StripeService
        attr_reader :components
        attr_reader :versions
        # Create a Pricing Plan object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::PricingPlan)
         }
        def create(params = {}, opts = {}); end

        # List all Pricing Plan objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Pricing Plan object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::PricingPlan)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Pricing Plan object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::PricingPlan)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end