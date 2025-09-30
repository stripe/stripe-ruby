# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionService < StripeService
        # List all Pricing Plan Subscription objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Pricing Plan Subscription object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Pricing Plan Subscription object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanSubscription)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end