# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Filter by lookup keys. Mutually exclusive with `pricing_plan_version`.
          # You can specify up to 10 lookup keys.
          attr_accessor :lookup_keys
          # The ID of the Pricing Plan Version to list components for. Will use the latest version if not provided.
          # Mutually exclusive with `lookup_keys`.
          attr_accessor :pricing_plan_version

          def initialize(limit: nil, lookup_keys: nil, pricing_plan_version: nil)
            @limit = limit
            @lookup_keys = lookup_keys
            @pricing_plan_version = pricing_plan_version
          end
        end
      end
    end
  end
end
