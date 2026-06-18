# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractCancelParams < ::Stripe::RequestParams
        class CancelPricingLine < ::Stripe::RequestParams
          # The ID of the pricing line.
          attr_accessor :id
          # The lookup key of the pricing line.
          attr_accessor :lookup_key
          # Proration behavior scoped to this pricing line. If not provided, falls back to the
          # top-level `proration_behavior` on the cancel request. Defaults to `prorated`.
          attr_accessor :proration_behavior

          def initialize(id: nil, lookup_key: nil, proration_behavior: nil)
            @id = id
            @lookup_key = lookup_key
            @proration_behavior = proration_behavior
          end
        end
        # Per-pricing-line proration behavior overrides. Falls back to `proration_behavior` if
        # not specified for a given line.
        attr_accessor :cancel_pricing_lines
        # Additional fields to include in the response.
        attr_accessor :include
        # Top-level proration behavior for the cancellation. Defaults to `prorated` if not set.
        attr_accessor :proration_behavior

        def initialize(cancel_pricing_lines: nil, include: nil, proration_behavior: nil)
          @cancel_pricing_lines = cancel_pricing_lines
          @include = include
          @proration_behavior = proration_behavior
        end
      end
    end
  end
end
