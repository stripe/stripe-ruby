# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentService < StripeService
          # Create a Pricing Plan Component object.
          def create(pricing_plan_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components", { pricing_plan_id: CGI.escape(pricing_plan_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Remove a Pricing Plan Component from the latest version of a Pricing Plan.
          def delete(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :delete,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List all Pricing Plan Component objects for a Pricing Plan.
          def list(pricing_plan_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components", { pricing_plan_id: CGI.escape(pricing_plan_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Pricing Plan Component object.
          def retrieve(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Update a Pricing Plan Component object.
          def update(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
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
