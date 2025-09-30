# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlans
        class VersionService < StripeService
          # List all Pricing Plan Versions of a Pricing Plan.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::VersionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(pricing_plan_id, params = {}, opts = {}); end

          # Retrieve a specific Pricing Plan Version of a Pricing Plan.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::VersionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanVersion)
           }
          def retrieve(pricing_plan_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end