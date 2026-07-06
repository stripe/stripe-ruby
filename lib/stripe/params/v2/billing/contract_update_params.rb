# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractUpdateParams < ::Stripe::RequestParams
        class PricingLineAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the pricing ends.
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
                class PricingOverride < ::Stripe::RequestParams
                  class EndsAt < ::Stripe::RequestParams
                    # The timestamp when the item ends. Required if `type` is `timestamp`.
                    attr_accessor :timestamp
                    # The type of the ends_at.
                    attr_accessor :type

                    def initialize(timestamp: nil, type: nil)
                      @timestamp = timestamp
                      @type = type
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
                    # Defines whether the tiered price should be graduated or volume-based.
                    attr_accessor :tiering_mode
                    # Each element represents a pricing tier.
                    attr_accessor :tiers
                    # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                    attr_accessor :unit_amount

                    def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil)
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
                    # The timestamp when the item starts. Required if `type` is `timestamp`.
                    attr_accessor :timestamp
                    # The type of the starts_at.
                    attr_accessor :type

                    def initialize(timestamp: nil, type: nil)
                      @timestamp = timestamp
                      @type = type
                    end
                  end
                  # When the override ends. Defaults to the pricing line's end if not specified.
                  attr_accessor :ends_at
                  # A user-provided lookup key to reference this override.
                  attr_accessor :lookup_key
                  # Set of key-value pairs that you can attach to an object.
                  attr_accessor :metadata
                  # Parameters for the overwrite_price override. Required if `type` is `overwrite_price`.
                  attr_accessor :overwrite_price
                  # The priority of this override relative to others. 0 is highest, 100 is lowest. Defaults to 50.
                  attr_accessor :priority
                  # When the override starts. Defaults to the pricing line's start if not specified.
                  attr_accessor :starts_at
                  # The type of override.
                  attr_accessor :type

                  def initialize(
                    ends_at: nil,
                    lookup_key: nil,
                    metadata: nil,
                    overwrite_price: nil,
                    priority: nil,
                    starts_at: nil,
                    type: nil
                  )
                    @ends_at = ends_at
                    @lookup_key = lookup_key
                    @metadata = metadata
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

                class QuantityChange < ::Stripe::RequestParams
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
                  # When this quantity change takes effect.
                  attr_accessor :effective_at
                  # The quantity to set.
                  attr_accessor :set

                  def initialize(effective_at: nil, set: nil)
                    @effective_at = effective_at
                    @set = set
                  end

                  def self.field_encodings
                    @field_encodings = { set: :decimal_string }
                  end
                end
                # The id of the price.
                attr_accessor :price
                # Pricing overrides embedded directly on this pricing line.
                attr_accessor :pricing_overrides
                # Quantity changes for the pricing line. For now, at most one entry is allowed.
                # A quantity change clears all future quantity changes on this pricing line. Defaults to 1.
                attr_accessor :quantity_changes

                def initialize(price: nil, pricing_overrides: nil, quantity_changes: nil)
                  @price = price
                  @pricing_overrides = pricing_overrides
                  @quantity_changes = quantity_changes
                end

                def self.field_encodings
                  @field_encodings = {
                    pricing_overrides: {
                      kind: :array,
                      element: {
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
                    quantity_changes: {
                      kind: :array,
                      element: { kind: :object, fields: { set: :decimal_string } },
                    },
                  }
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

              def self.field_encodings
                @field_encodings = {
                  price_details: {
                    kind: :object,
                    fields: {
                      pricing_overrides: {
                        kind: :array,
                        element: {
                          kind: :object,
                          fields: {
                            overwrite_price: {
                              kind: :object,
                              fields: {
                                tiers: {
                                  kind: :array,
                                  element: {
                                    kind: :object,
                                    fields: { up_to_decimal: :decimal_string },
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                      quantity_changes: {
                        kind: :array,
                        element: { kind: :object, fields: { set: :decimal_string } },
                      },
                    },
                  },
                }
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the pricing starts.
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

            def self.field_encodings
              @field_encodings = {
                pricing: {
                  kind: :object,
                  fields: {
                    price_details: {
                      kind: :object,
                      fields: {
                        pricing_overrides: {
                          kind: :array,
                          element: {
                            kind: :object,
                            fields: {
                              overwrite_price: {
                                kind: :object,
                                fields: {
                                  tiers: {
                                    kind: :array,
                                    element: {
                                      kind: :object,
                                      fields: { up_to_decimal: :decimal_string },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                        quantity_changes: {
                          kind: :array,
                          element: { kind: :object, fields: { set: :decimal_string } },
                        },
                      },
                    },
                  },
                },
              }
            end
          end

          class Remove < ::Stripe::RequestParams
            # The id of the pricing line to remove.
            attr_accessor :id

            def initialize(id: nil)
              @id = id
            end
          end

          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the pricing ends.
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
                class PricingOverrideAction < ::Stripe::RequestParams
                  class Add < ::Stripe::RequestParams
                    class EndsAt < ::Stripe::RequestParams
                      # The timestamp when the pricing ends.
                      attr_accessor :timestamp
                      # The type of end time to apply.
                      attr_accessor :type

                      def initialize(timestamp: nil, type: nil)
                        @timestamp = timestamp
                        @type = type
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
                      # Defines whether the tiered price should be graduated or volume-based.
                      attr_accessor :tiering_mode
                      # Each element represents a pricing tier.
                      attr_accessor :tiers
                      # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                      attr_accessor :unit_amount

                      def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil)
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
                      # The timestamp when the pricing starts.
                      attr_accessor :timestamp
                      # The type of start time to apply.
                      attr_accessor :type

                      def initialize(timestamp: nil, type: nil)
                        @timestamp = timestamp
                        @type = type
                      end
                    end
                    # The end time for the override.
                    attr_accessor :ends_at
                    # A lookup key for the override.
                    attr_accessor :lookup_key
                    # Metadata for the pricing override.
                    attr_accessor :metadata
                    # Parameters for an overwrite_price override. Required if `type` is `overwrite_price`.
                    attr_accessor :overwrite_price
                    # The priority of this override relative to others. 0 is highest, 100 is lowest. Defaults to 50.
                    attr_accessor :priority
                    # The start time for the override.
                    attr_accessor :starts_at
                    # The type of override to add.
                    attr_accessor :type

                    def initialize(
                      ends_at: nil,
                      lookup_key: nil,
                      metadata: nil,
                      overwrite_price: nil,
                      priority: nil,
                      starts_at: nil,
                      type: nil
                    )
                      @ends_at = ends_at
                      @lookup_key = lookup_key
                      @metadata = metadata
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
                    # The id of the pricing override to remove.
                    attr_accessor :id
                    # Lookup key of the override to remove.
                    attr_accessor :lookup_key

                    def initialize(id: nil, lookup_key: nil)
                      @id = id
                      @lookup_key = lookup_key
                    end
                  end

                  class Update < ::Stripe::RequestParams
                    class EndsAt < ::Stripe::RequestParams
                      # The timestamp when the pricing ends.
                      attr_accessor :timestamp
                      # The type of end time to apply.
                      attr_accessor :type

                      def initialize(timestamp: nil, type: nil)
                        @timestamp = timestamp
                        @type = type
                      end
                    end

                    class StartsAt < ::Stripe::RequestParams
                      # The timestamp when the pricing starts.
                      attr_accessor :timestamp
                      # The type of start time to apply.
                      attr_accessor :type

                      def initialize(timestamp: nil, type: nil)
                        @timestamp = timestamp
                        @type = type
                      end
                    end
                    # Updated end time.
                    attr_accessor :ends_at
                    # The id of the pricing override to update.
                    attr_accessor :id
                    # Updated lookup key.
                    attr_accessor :lookup_key
                    # Metadata for the pricing override.
                    attr_accessor :metadata
                    # Updated start time.
                    attr_accessor :starts_at

                    def initialize(
                      ends_at: nil,
                      id: nil,
                      lookup_key: nil,
                      metadata: nil,
                      starts_at: nil
                    )
                      @ends_at = ends_at
                      @id = id
                      @lookup_key = lookup_key
                      @metadata = metadata
                      @starts_at = starts_at
                    end
                  end
                  # Add a pricing line override.
                  attr_accessor :add
                  # Remove a pricing line override.
                  attr_accessor :remove
                  # The type of pricing line override action.
                  attr_accessor :type
                  # Update a pricing line override.
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

                class QuantityChange < ::Stripe::RequestParams
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
                  # When this quantity change takes effect.
                  attr_accessor :effective_at
                  # The quantity to set.
                  attr_accessor :set

                  def initialize(effective_at: nil, set: nil)
                    @effective_at = effective_at
                    @set = set
                  end

                  def self.field_encodings
                    @field_encodings = { set: :decimal_string }
                  end
                end
                # Pricing override actions to apply to the overrides embedded on this pricing line.
                attr_accessor :pricing_override_actions
                # Quantity changes for the pricing line. Setting this clears all future quantity changes.
                attr_accessor :quantity_changes

                def initialize(pricing_override_actions: nil, quantity_changes: nil)
                  @pricing_override_actions = pricing_override_actions
                  @quantity_changes = quantity_changes
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
                                    element: {
                                      kind: :object,
                                      fields: { up_to_decimal: :decimal_string },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                    },
                    quantity_changes: {
                      kind: :array,
                      element: { kind: :object, fields: { set: :decimal_string } },
                    },
                  }
                end
              end
              # V1 price details. Present when the pricing line type is `price`.
              attr_accessor :price_details

              def initialize(price_details: nil)
                @price_details = price_details
              end

              def self.field_encodings
                @field_encodings = {
                  price_details: {
                    kind: :object,
                    fields: {
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
                                      element: {
                                        kind: :object,
                                        fields: { up_to_decimal: :decimal_string },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                      quantity_changes: {
                        kind: :array,
                        element: { kind: :object, fields: { set: :decimal_string } },
                      },
                    },
                  },
                }
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the pricing starts.
              attr_accessor :timestamp
              # The type of start time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # Updated end time.
            attr_accessor :ends_at
            # The id of the pricing line.
            attr_accessor :id
            # Updated pricing configuration.
            attr_accessor :pricing
            # Updated start time.
            attr_accessor :starts_at

            def initialize(ends_at: nil, id: nil, pricing: nil, starts_at: nil)
              @ends_at = ends_at
              @id = id
              @pricing = pricing
              @starts_at = starts_at
            end

            def self.field_encodings
              @field_encodings = {
                pricing: {
                  kind: :object,
                  fields: {
                    price_details: {
                      kind: :object,
                      fields: {
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
                                        element: {
                                          kind: :object,
                                          fields: { up_to_decimal: :decimal_string },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                        quantity_changes: {
                          kind: :array,
                          element: { kind: :object, fields: { set: :decimal_string } },
                        },
                      },
                    },
                  },
                },
              }
            end
          end
          # Add a pricing line.
          attr_accessor :add
          # Remove a pricing line.
          attr_accessor :remove
          # The type of pricing line action.
          attr_accessor :type
          # Update a pricing line.
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
                  pricing: {
                    kind: :object,
                    fields: {
                      price_details: {
                        kind: :object,
                        fields: {
                          pricing_overrides: {
                            kind: :array,
                            element: {
                              kind: :object,
                              fields: {
                                overwrite_price: {
                                  kind: :object,
                                  fields: {
                                    tiers: {
                                      kind: :array,
                                      element: {
                                        kind: :object,
                                        fields: { up_to_decimal: :decimal_string },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                          quantity_changes: {
                            kind: :array,
                            element: { kind: :object, fields: { set: :decimal_string } },
                          },
                        },
                      },
                    },
                  },
                },
              },
              update: {
                kind: :object,
                fields: {
                  pricing: {
                    kind: :object,
                    fields: {
                      price_details: {
                        kind: :object,
                        fields: {
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
                                          element: {
                                            kind: :object,
                                            fields: { up_to_decimal: :decimal_string },
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                          quantity_changes: {
                            kind: :array,
                            element: { kind: :object, fields: { set: :decimal_string } },
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

        class PricingOverrideAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the pricing ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class MultiplyPricing < ::Stripe::RequestParams
              class Criterion < ::Stripe::RequestParams
                # Filter by pricing line IDs.
                attr_accessor :pricing_line_ids
                # Filter by pricing line lookup keys.
                attr_accessor :pricing_line_lookup_keys
                # Whether to include or exclude items matching these criteria.
                attr_accessor :type

                def initialize(pricing_line_ids: nil, pricing_line_lookup_keys: nil, type: nil)
                  @pricing_line_ids = pricing_line_ids
                  @pricing_line_lookup_keys = pricing_line_lookup_keys
                  @type = type
                end
              end
              # Criteria determining which rates the multiply_pricing override applies to.
              attr_accessor :criteria
              # The multiply_pricing factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
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
              # Defines whether the tiered price should be graduated or volume-based.
              attr_accessor :tiering_mode
              # Each element represents a pricing tier.
              attr_accessor :tiers
              # The per-unit amount to be charged, represented as a decimal string in minor currency units.
              attr_accessor :unit_amount

              def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil)
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
              # The timestamp when the pricing starts.
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
            # A multiply_pricing override to add.
            attr_accessor :multiply_pricing
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
              multiply_pricing: nil,
              overwrite_price: nil,
              priority: nil,
              starts_at: nil,
              type: nil
            )
              @ends_at = ends_at
              @lookup_key = lookup_key
              @multiply_pricing = multiply_pricing
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
            # The id of the pricing override to remove.
            attr_accessor :id

            def initialize(id: nil)
              @id = id
            end
          end

          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the pricing ends.
              attr_accessor :timestamp
              # The type of end time to apply.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the pricing starts.
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
          # Add a pricing override.
          attr_accessor :add
          # Remove a pricing override.
          attr_accessor :remove
          # The type of pricing override action.
          attr_accessor :type
          # Update a pricing override.
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
        # Pricing line actions to apply.
        attr_accessor :pricing_line_actions
        # Pricing override actions to apply.
        attr_accessor :pricing_override_actions

        def initialize(include: nil, pricing_line_actions: nil, pricing_override_actions: nil)
          @include = include
          @pricing_line_actions = pricing_line_actions
          @pricing_override_actions = pricing_override_actions
        end

        def self.field_encodings
          @field_encodings = {
            pricing_line_actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  add: {
                    kind: :object,
                    fields: {
                      pricing: {
                        kind: :object,
                        fields: {
                          price_details: {
                            kind: :object,
                            fields: {
                              pricing_overrides: {
                                kind: :array,
                                element: {
                                  kind: :object,
                                  fields: {
                                    overwrite_price: {
                                      kind: :object,
                                      fields: {
                                        tiers: {
                                          kind: :array,
                                          element: {
                                            kind: :object,
                                            fields: { up_to_decimal: :decimal_string },
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                              quantity_changes: {
                                kind: :array,
                                element: { kind: :object, fields: { set: :decimal_string } },
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                  update: {
                    kind: :object,
                    fields: {
                      pricing: {
                        kind: :object,
                        fields: {
                          price_details: {
                            kind: :object,
                            fields: {
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
                                              element: {
                                                kind: :object,
                                                fields: { up_to_decimal: :decimal_string },
                                              },
                                            },
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                              quantity_changes: {
                                kind: :array,
                                element: { kind: :object, fields: { set: :decimal_string } },
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
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
