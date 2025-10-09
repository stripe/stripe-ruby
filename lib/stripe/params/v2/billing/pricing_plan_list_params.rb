# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanListParams < ::Stripe::RequestParams
        # Filter for active/inactive PricingPlans. Mutually exclusive with `lookup_keys`.
        attr_accessor :active
        # Optionally set the maximum number of results per page. Defaults to 20.
        attr_accessor :limit
        # Filter by lookup keys. Mutually exclusive with `active`.
        # You can specify up to 10 lookup keys.
        attr_accessor :lookup_keys

        def initialize(active: nil, limit: nil, lookup_keys: nil)
          @active = active
          @limit = limit
          @lookup_keys = lookup_keys
        end
      end
    end
  end
end
