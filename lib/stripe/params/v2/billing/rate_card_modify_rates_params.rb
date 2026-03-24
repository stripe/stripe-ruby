# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardModifyRatesParams < ::Stripe::RequestParams
        class RatesToCreate < ::Stripe::RequestParams
          class MeteredItemData < ::Stripe::RequestParams
            class MeterSegmentCondition < ::Stripe::RequestParams
              # A Meter dimension.
              attr_accessor :dimension
              # To count usage towards this metered item, the dimension must have this value.
              attr_accessor :value

              def initialize(dimension: nil, value: nil)
                @dimension = dimension
                @value = value
              end
            end
            # Description that customers will see in the invoice line item.
            # Maximum length of 250 characters.
            attr_accessor :display_name
            # An internal key you can use to search for a particular metered item.
            # Must be unique among metered items.
            # Maximum length of 200 characters.
            attr_accessor :lookup_key
            # ID of the Meter that measures usage for this Metered Item.
            attr_accessor :meter
            # Optional array of Meter segments to filter event dimension keys for billing.
            attr_accessor :meter_segment_conditions
            # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
            # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
            # million events".
            # Maximum length of 100 characters.
            attr_accessor :unit_label

            def initialize(
              display_name: nil,
              lookup_key: nil,
              meter: nil,
              meter_segment_conditions: nil,
              unit_label: nil
            )
              @display_name = display_name
              @lookup_key = lookup_key
              @meter = meter
              @meter_segment_conditions = meter_segment_conditions
              @unit_label = unit_label
            end
          end

          class Tier < ::Stripe::RequestParams
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

          class TransformQuantity < ::Stripe::RequestParams
            # Divide usage by this number.
            attr_accessor :divide_by
            # After division, round the result up or down.
            attr_accessor :round

            def initialize(divide_by: nil, round: nil)
              @divide_by = divide_by
              @round = round
            end

            def self.field_encodings
              @field_encodings = { divide_by: :int64_string }
            end
          end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The Metered Item that this rate binds to. Cannot be set if `metered_item_data` is provided, and must be set if it isn't.
          attr_accessor :metered_item
          # The data to create a metered item that binds to this rate. Cannot be set if `metered_item` is provided, and must be set if it isn't.
          attr_accessor :metered_item_data
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
            metadata: nil,
            metered_item: nil,
            metered_item_data: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          )
            @metadata = metadata
            @metered_item = metered_item
            @metered_item_data = metered_item_data
            @tiering_mode = tiering_mode
            @tiers = tiers
            @transform_quantity = transform_quantity
            @unit_amount = unit_amount
          end

          def self.field_encodings
            @field_encodings = {
              transform_quantity: { kind: :object, fields: { divide_by: :int64_string } },
            }
          end
        end

        class RatesToDelete < ::Stripe::RequestParams
          # The ID of the RateCard rate to delete.
          attr_accessor :id

          def initialize(id: nil)
            @id = id
          end
        end
        # The list of RateCard rates to create or update. Maximum of 100 rates.
        attr_accessor :rates_to_create
        # The list of RateCard rates to delete. Maximum of 100 rates.
        attr_accessor :rates_to_delete

        def initialize(rates_to_create: nil, rates_to_delete: nil)
          @rates_to_create = rates_to_create
          @rates_to_delete = rates_to_delete
        end

        def self.field_encodings
          @field_encodings = {
            rates_to_create: {
              kind: :array,
              element: {
                kind: :object,
                fields: { transform_quantity: { kind: :object, fields: { divide_by: :int64_string } } },
              },
            },
          }
        end
      end
    end
  end
end
