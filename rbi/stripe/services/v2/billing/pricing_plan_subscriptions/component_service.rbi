# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlanSubscriptions
        class ComponentService < StripeService
          # Retrieve a Pricing Plan Subscription's components.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptions::ComponentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::PricingPlanSubscriptionComponents)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end