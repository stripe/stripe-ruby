# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionListParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Customer object. If provided, only Pricing Plan Subscriptions that are subscribed on the Billing Groups with the specified payer will be returned.
          attr_accessor :customer
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          attr_accessor :type

          def initialize(customer: nil, type: nil)
            @customer = customer
            @type = type
          end
        end
        # Filter by Billing Group ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
        attr_accessor :billing_group
        # Expand to include additional data such as discount_details or pricing_plan_component_details.
        attr_accessor :include
        # Optionally set the maximum number of results per page. Defaults to 20.
        attr_accessor :limit
        # Filter by payer. Mutually exclusive with `billing_group`, `pricing_plan`, and `pricing_plan_version`.
        attr_accessor :payer
        # Filter by PricingPlan ID. Mutually exclusive with `billing_group`, `payer`, and `pricing_plan_version`.
        attr_accessor :pricing_plan
        # Filter by Pricing Plan Version ID. Mutually exclusive with `billing_group`, `payer`, and `pricing_plan`.
        attr_accessor :pricing_plan_version
        # Filter by servicing status.
        attr_accessor :servicing_status

        def initialize(
          billing_group: nil,
          include: nil,
          limit: nil,
          payer: nil,
          pricing_plan: nil,
          pricing_plan_version: nil,
          servicing_status: nil
        )
          @billing_group = billing_group
          @include = include
          @limit = limit
          @payer = payer
          @pricing_plan = pricing_plan
          @pricing_plan_version = pricing_plan_version
          @servicing_status = servicing_status
        end
      end
    end
  end
end
