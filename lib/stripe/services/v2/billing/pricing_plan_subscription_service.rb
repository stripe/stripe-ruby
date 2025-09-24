# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only Pricing Plan Subscriptions that are subscribed on the cadences with the specified payer will be returned.
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            attr_accessor :type

            def initialize(customer: nil, type: nil)
              @customer = customer
              @type = type
            end
          end
          # Filter by Billing Cadence ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
          attr_accessor :billing_cadence
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Filter by payer. Mutually exclusive with `billing_cadence`, `pricing_plan`, and `pricing_plan_version`.
          attr_accessor :payer
          # Filter by PricingPlan ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan_version`.
          attr_accessor :pricing_plan
          # Filter by Pricing Plan Version ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan`.
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

        class UpdateParams < Stripe::RequestParams
          # When set to true, the `servicing_status_transition.will_cancel_at` field will be cleared.
          attr_accessor :clear_cancel_at
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(clear_cancel_at: nil, metadata: nil)
            @clear_cancel_at = clear_cancel_at
            @metadata = metadata
          end
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
