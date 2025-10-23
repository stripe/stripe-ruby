# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionService < StripeService
        attr_reader :components

        def initialize(requestor)
          super
          @components = Stripe::V2::Billing::PricingPlanSubscriptions::ComponentService
                        .new(@requestor)
        end

        # List all Pricing Plan Subscription objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/pricing_plan_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Pricing Plan Subscription object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/pricing_plan_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Pricing Plan Subscription object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/pricing_plan_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
