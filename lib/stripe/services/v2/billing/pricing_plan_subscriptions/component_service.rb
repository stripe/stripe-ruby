# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlanSubscriptions
        class ComponentService < StripeService
          # Retrieve a Pricing Plan Subscription's components.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plan_subscriptions/%<id>s/components", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
