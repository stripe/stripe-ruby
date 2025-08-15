# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only PricingPlanSubscriptions that are subscribed on the Cadences with the specified Payer will be returned.
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            attr_accessor :type

            def initialize(customer: nil, type: nil)
              @customer = customer
              @type = type
            end
          end
          # Filter by Cadence ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
          attr_accessor :billing_cadence
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Filter by payer. Mutually exclusive with `billing_cadence`, `pricing_plan`, and `pricing_plan_version`.
          attr_accessor :payer
          # Filter by PricingPlan ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan_version`.
          attr_accessor :pricing_plan
          # Filter by PricingPlanVersion ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan`.
          attr_accessor :pricing_plan_version
          # Filter by servicing status.
          attr_accessor :servicing_status

          def initialize(
            billing_cadence: nil,
            limit: nil,
            payer: nil,
            pricing_plan: nil,
            pricing_plan_version: nil,
            servicing_status: nil
          )
            @billing_cadence = billing_cadence
            @limit = limit
            @payer = payer
            @pricing_plan = pricing_plan
            @pricing_plan_version = pricing_plan_version
            @servicing_status = servicing_status
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        # List all PricingPlanSubscription objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/pricing_plan_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a PricingPlanSubscription object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
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
