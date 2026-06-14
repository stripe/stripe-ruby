# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class VersionService < StripeService
          # List all Pricing Plan Versions of a Pricing Plan.
          def list(pricing_plan_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/versions", { pricing_plan_id: CGI.escape(pricing_plan_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a specific Pricing Plan Version of a Pricing Plan.
          def retrieve(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/versions/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
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
