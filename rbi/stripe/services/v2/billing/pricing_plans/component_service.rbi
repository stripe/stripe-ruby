# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentService < StripeService
          # Create a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def create(pricing_plan_id, params = {}, opts = {}); end

          # Remove a Pricing Plan Component from the latest version of a Pricing Plan.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::DeletedObject)
           }
          def delete(pricing_plan_id, id, params = {}, opts = {}); end

          # List all Pricing Plan Component objects for a Pricing Plan.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(pricing_plan_id, params = {}, opts = {}); end

          # Retrieve a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def retrieve(pricing_plan_id, id, params = {}, opts = {}); end

          # Update a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def update(pricing_plan_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end