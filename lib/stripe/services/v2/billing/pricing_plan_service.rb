# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanService < StripeService
        attr_reader :components, :versions

        def initialize(requestor)
          super
          @components = Stripe::V2::Billing::PricingPlans::ComponentService.new(@requestor)
          @versions = Stripe::V2::Billing::PricingPlans::VersionService.new(@requestor)
        end

        # Create a Pricing Plan object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/pricing_plans",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Pricing Plan objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/pricing_plans",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Pricing Plan object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/pricing_plans/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Pricing Plan object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/pricing_plans/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
