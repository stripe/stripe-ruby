# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class RateCreateParams < Stripe::RequestParams
          class CustomPricingUnitAmount < Stripe::RequestParams
            # The id of the custom pricing unit.
            attr_accessor :id
            # The unit value for the custom pricing unit, as a string.
            attr_accessor :value

            def initialize(id: nil, value: nil)
              @id = id
              @value = value
            end
          end

          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            attr_accessor :flat_amount
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            attr_accessor :unit_amount
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            attr_accessor :up_to_decimal
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            attr_accessor :up_to_inf

            def initialize(flat_amount: nil, unit_amount: nil, up_to_decimal: nil, up_to_inf: nil)
              @flat_amount = flat_amount
              @unit_amount = unit_amount
              @up_to_decimal = up_to_decimal
              @up_to_inf = up_to_inf
            end
          end

          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            attr_accessor :divide_by
            # After division, round the result up or down.
            attr_accessor :round

            def initialize(divide_by: nil, round: nil)
              @divide_by = divide_by
              @round = round
            end
          end
          # The custom pricing unit that this rate binds to.
          attr_accessor :custom_pricing_unit_amount
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The Metered Item that this rate binds to.
          attr_accessor :metered_item
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          attr_accessor :tiering_mode
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          attr_accessor :tiers
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          attr_accessor :transform_quantity
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          attr_accessor :unit_amount

          def initialize(
            custom_pricing_unit_amount: nil,
            metadata: nil,
            metered_item: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          )
            @custom_pricing_unit_amount = custom_pricing_unit_amount
            @metadata = metadata
            @metered_item = metered_item
            @tiering_mode = tiering_mode
            @tiers = tiers
            @transform_quantity = transform_quantity
            @unit_amount = unit_amount
          end
        end
      end
    end
  end
end
