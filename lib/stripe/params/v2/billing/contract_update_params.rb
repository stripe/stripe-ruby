# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractUpdateParams < ::Stripe::RequestParams
        class LicenseQuantityAction < ::Stripe::RequestParams
          class EffectiveAt < ::Stripe::RequestParams
            # The timestamp for the effective at.
            attr_accessor :timestamp
            # The type of the effective at.
            attr_accessor :type

            def initialize(timestamp: nil, type: nil)
              @timestamp = timestamp
              @type = type
            end
          end

          class Set < ::Stripe::RequestParams
            # The quantity to set.
            attr_accessor :quantity

            def initialize(quantity: nil)
              @quantity = quantity
            end
          end
          # The effective at for the license quantity action.
          attr_accessor :effective_at
          # The ID of the license pricing.
          attr_accessor :license_pricing_id
          # The lookup key for the license pricing.
          attr_accessor :license_pricing_lookup_key
          # The type of the license pricing.
          attr_accessor :license_pricing_type
          # The pricing line ID for the license quantity action.
          attr_accessor :pricing_line
          # The pricing line lookup key for the license quantity action.
          attr_accessor :pricing_line_lookup_key
          # The set quantity for the license quantity action.
          attr_accessor :set
          # The type of the license quantity action.
          attr_accessor :type

          def initialize(
            effective_at: nil,
            license_pricing_id: nil,
            license_pricing_lookup_key: nil,
            license_pricing_type: nil,
            pricing_line: nil,
            pricing_line_lookup_key: nil,
            set: nil,
            type: nil
          )
            @effective_at = effective_at
            @license_pricing_id = license_pricing_id
            @license_pricing_lookup_key = license_pricing_lookup_key
            @license_pricing_type = license_pricing_type
            @pricing_line = pricing_line
            @pricing_line_lookup_key = pricing_line_lookup_key
            @set = set
            @type = type
          end
        end

        class PricingLineAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class Pricing < ::Stripe::RequestParams
              class PriceDetails < ::Stripe::RequestParams
                # The ID of the V1 price.
                attr_accessor :price
                # The quantity for the price. Only applicable for licensed prices.
                attr_accessor :quantity

                def initialize(price: nil, quantity: nil)
                  @price = price
                  @quantity = quantity
                end
              end
              # V1 price details. Required if `type` is `price`.
              attr_accessor :price_details
              # The type of pricing.
              attr_accessor :type

              def initialize(price_details: nil, type: nil)
                @price_details = price_details
                @type = type
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              attr_accessor :timestamp
              # The type of start time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # The end time for the pricing line.
            attr_accessor :ends_at
            # A lookup key for the pricing line.
            attr_accessor :lookup_key
            # Metadata for the pricing line.
            attr_accessor :metadata
            # The pricing configuration for the pricing line.
            attr_accessor :pricing
            # The start time for the pricing line.
            attr_accessor :starts_at

            def initialize(
              ends_at: nil,
              lookup_key: nil,
              metadata: nil,
              pricing: nil,
              starts_at: nil
            )
              @ends_at = ends_at
              @lookup_key = lookup_key
              @metadata = metadata
              @pricing = pricing
              @starts_at = starts_at
            end
          end

          class Remove < ::Stripe::RequestParams
            # The ID of the pricing line to remove.
            attr_accessor :id

            def initialize(id: nil)
              @id = id
            end
          end

          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              attr_accessor :timestamp
              # The type of start time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # The updated end time for the pricing line.
            attr_accessor :ends_at
            # The ID of the pricing line.
            attr_accessor :id
            # The updated start time for the pricing line.
            attr_accessor :starts_at

            def initialize(ends_at: nil, id: nil, starts_at: nil)
              @ends_at = ends_at
              @id = id
              @starts_at = starts_at
            end
          end
          # Parameters for adding a pricing line.
          attr_accessor :add
          # Parameters for removing a pricing line.
          attr_accessor :remove
          # The type of pricing line action.
          attr_accessor :type
          # Parameters for updating a pricing line.
          attr_accessor :update

          def initialize(add: nil, remove: nil, type: nil, update: nil)
            @add = add
            @remove = remove
            @type = type
            @update = update
          end
        end

        class PricingOverrideAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class Multiplier < ::Stripe::RequestParams
              class Criterion < ::Stripe::RequestParams
                class MetadataCondition < ::Stripe::RequestParams
                  class AllOf < ::Stripe::RequestParams
                    # The metadata key.
                    attr_accessor :key
                    # The metadata value.
                    attr_accessor :value

                    def initialize(key: nil, value: nil)
                      @key = key
                      @value = value
                    end
                  end
                  # All of these key-value conditions must match.
                  attr_accessor :all_of

                  def initialize(all_of: nil)
                    @all_of = all_of
                  end
                end
                # Filter by billable item IDs.
                attr_accessor :billable_item_ids
                # Filter by billable item lookup keys.
                attr_accessor :billable_item_lookup_keys
                # Filter by billable item type.
                attr_accessor :billable_item_types
                # Filter by metadata conditions.
                attr_accessor :metadata_conditions
                # Filter by rate card IDs. Only applicable for `multiplier` overrides.
                attr_accessor :rate_card_ids
                # Whether to include or exclude items matching these criteria.
                attr_accessor :type

                def initialize(
                  billable_item_ids: nil,
                  billable_item_lookup_keys: nil,
                  billable_item_types: nil,
                  metadata_conditions: nil,
                  rate_card_ids: nil,
                  type: nil
                )
                  @billable_item_ids = billable_item_ids
                  @billable_item_lookup_keys = billable_item_lookup_keys
                  @billable_item_types = billable_item_types
                  @metadata_conditions = metadata_conditions
                  @rate_card_ids = rate_card_ids
                  @type = type
                end
              end
              # Criteria determining which rates the multiplier applies to.
              attr_accessor :criteria
              # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
              attr_accessor :factor

              def initialize(criteria: nil, factor: nil)
                @criteria = criteria
                @factor = factor
              end
            end

            class OverwritePrice < ::Stripe::RequestParams
              class Tier < ::Stripe::RequestParams
                # Price for the entire tier, represented as a decimal string in minor currency units.
                attr_accessor :flat_amount
                # Per-unit price for units included in this tier, represented as a decimal string in minor currency units.
                attr_accessor :unit_amount
                # Up to and including this quantity will be contained in the tier.
                attr_accessor :up_to_decimal
                # No upper bound to this tier.
                attr_accessor :up_to_inf

                def initialize(
                  flat_amount: nil,
                  unit_amount: nil,
                  up_to_decimal: nil,
                  up_to_inf: nil
                )
                  @flat_amount = flat_amount
                  @unit_amount = unit_amount
                  @up_to_decimal = up_to_decimal
                  @up_to_inf = up_to_inf
                end

                def self.field_encodings
                  @field_encodings = { up_to_decimal: :decimal_string }
                end
              end
              # The ID of the V1 price to overwrite.
              attr_accessor :price
              # Defines whether the tiered price should be graduated or volume-based.
              attr_accessor :tiering_mode
              # Each element represents a pricing tier.
              attr_accessor :tiers
              # The per-unit amount to be charged, represented as a decimal string in minor currency units.
              attr_accessor :unit_amount

              def initialize(price: nil, tiering_mode: nil, tiers: nil, unit_amount: nil)
                @price = price
                @tiering_mode = tiering_mode
                @tiers = tiers
                @unit_amount = unit_amount
              end

              def self.field_encodings
                @field_encodings = {
                  tiers: {
                    kind: :array,
                    element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                  },
                }
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              attr_accessor :timestamp
              # The type of start time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # The end time for the pricing override.
            attr_accessor :ends_at
            # A lookup key for the pricing override.
            attr_accessor :lookup_key
            # A multiplier override to add.
            attr_accessor :multiplier
            # An overwrite price override to add.
            attr_accessor :overwrite_price
            # The priority for the pricing override. The highest priority is 0 and the lowest is 100.
            attr_accessor :priority
            # The start time for the pricing override.
            attr_accessor :starts_at
            # The type of pricing override to add.
            attr_accessor :type

            def initialize(
              ends_at: nil,
              lookup_key: nil,
              multiplier: nil,
              overwrite_price: nil,
              priority: nil,
              starts_at: nil,
              type: nil
            )
              @ends_at = ends_at
              @lookup_key = lookup_key
              @multiplier = multiplier
              @overwrite_price = overwrite_price
              @priority = priority
              @starts_at = starts_at
              @type = type
            end

            def self.field_encodings
              @field_encodings = {
                overwrite_price: {
                  kind: :object,
                  fields: {
                    tiers: {
                      kind: :array,
                      element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                    },
                  },
                },
              }
            end
          end

          class Remove < ::Stripe::RequestParams
            # The ID of the pricing override to remove.
            attr_accessor :id

            def initialize(id: nil)
              @id = id
            end
          end

          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              attr_accessor :timestamp
              # The type of start time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # The updated end time for the pricing override.
            attr_accessor :ends_at
            # The ID of the pricing override.
            attr_accessor :id
            # The updated start time for the pricing override.
            attr_accessor :starts_at

            def initialize(ends_at: nil, id: nil, starts_at: nil)
              @ends_at = ends_at
              @id = id
              @starts_at = starts_at
            end
          end
          # Parameters for adding a pricing override.
          attr_accessor :add
          # Parameters for removing a pricing override.
          attr_accessor :remove
          # The type of pricing override action.
          attr_accessor :type
          # Parameters for updating a pricing override.
          attr_accessor :update

          def initialize(add: nil, remove: nil, type: nil, update: nil)
            @add = add
            @remove = remove
            @type = type
            @update = update
          end

          def self.field_encodings
            @field_encodings = {
              add: {
                kind: :object,
                fields: {
                  overwrite_price: {
                    kind: :object,
                    fields: {
                      tiers: {
                        kind: :array,
                        element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                      },
                    },
                  },
                },
              },
            }
          end
        end
        # Additional fields to include in the response.
        attr_accessor :include
        # Schema-only: License quantity actions (implementation to follow).
        attr_accessor :license_quantity_actions
        # Pricing line actions to apply.
        attr_accessor :pricing_line_actions
        # Pricing override actions to apply.
        attr_accessor :pricing_override_actions

        def initialize(
          include: nil,
          license_quantity_actions: nil,
          pricing_line_actions: nil,
          pricing_override_actions: nil
        )
          @include = include
          @license_quantity_actions = license_quantity_actions
          @pricing_line_actions = pricing_line_actions
          @pricing_override_actions = pricing_override_actions
        end

        def self.field_encodings
          @field_encodings = {
            pricing_override_actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  add: {
                    kind: :object,
                    fields: {
                      overwrite_price: {
                        kind: :object,
                        fields: {
                          tiers: {
                            kind: :array,
                            element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
