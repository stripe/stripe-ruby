# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # Main Contract resource representing a comprehensive billing agreement
      class Contract < APIResource
        OBJECT_NAME = "v2.billing.contract"
        def self.object_name
          "v2.billing.contract"
        end

        class BillingCycleAnchor < ::Stripe::StripeObject
          # The billing cycle anchor as a UTC timestamp.
          attr_reader :timestamp

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillingSettings < ::Stripe::StripeObject
          class BillSettingsDetails < ::Stripe::StripeObject
            class Calculation < ::Stripe::StripeObject
              class Tax < ::Stripe::StripeObject
                # The type of tax calculation.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Tax calculation settings.
              attr_reader :tax

              def self.inner_class_types
                @inner_class_types = { tax: Tax }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Invoice < ::Stripe::StripeObject
              class TimeUntilDue < ::Stripe::StripeObject
                # The interval unit.
                attr_reader :interval
                # The number of intervals.
                attr_reader :interval_count

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The number of time units before the invoice is past due.
              attr_reader :time_until_due

              def self.inner_class_types
                @inner_class_types = { time_until_due: TimeUntilDue }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Calculation settings.
            attr_reader :calculation
            # Invoice settings.
            attr_reader :invoice

            def self.inner_class_types
              @inner_class_types = { calculation: Calculation, invoice: Invoice }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class BillingProfileDetails < ::Stripe::StripeObject
            # The customer who pays for the contract invoice.
            attr_reader :customer
            # The default payment method for the contract.
            attr_reader :default_payment_method

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CollectionSettingsDetails < ::Stripe::StripeObject
            # The collection method.
            attr_reader :collection_method
            # The payment method configuration.
            attr_reader :payment_method_configuration

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The bill settings details configures invoice and tax settings for the contract.
          attr_reader :bill_settings_details
          # The billing profile details configures who is charged for the contract.
          attr_reader :billing_profile_details
          # The collection settings details configures how payments are collected on the contract.
          attr_reader :collection_settings_details

          def self.inner_class_types
            @inner_class_types = {
              bill_settings_details: BillSettingsDetails,
              billing_profile_details: BillingProfileDetails,
              collection_settings_details: CollectionSettingsDetails,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class OneTimeFees < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class BillAt < ::Stripe::StripeObject
              # The timestamp at which the fee will be billed.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The amount billed for this fee.
            attr_reader :amount
            # When this fee will be billed. Always contains a concrete timestamp.
            attr_reader :bill_at
            # The ID of the one-time fee.
            attr_reader :id
            # The user-provided lookup key.
            attr_reader :lookup_key
            # The ID of the v1 Product for this fee.
            attr_reader :product

            def self.inner_class_types
              @inner_class_types = { bill_at: BillAt }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The one-time fees for this page.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PricingLines < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class EndsAt < ::Stripe::StripeObject
              # The timestamp when the item ends.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Pricing < ::Stripe::StripeObject
              class PriceDetails < ::Stripe::StripeObject
                class PricingOverrides < ::Stripe::StripeObject
                  class Data < ::Stripe::StripeObject
                    class EndsAt < ::Stripe::StripeObject
                      # The timestamp when the item ends.
                      attr_reader :timestamp

                      def self.inner_class_types
                        @inner_class_types = {}
                      end

                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end

                    class OverwritePrice < ::Stripe::StripeObject
                      class Tier < ::Stripe::StripeObject
                        # Price for the entire tier, represented as a decimal string in minor currency units.
                        attr_reader :flat_amount
                        # Per-unit price for units included in this tier, represented as a decimal string in minor currency units.
                        attr_reader :unit_amount
                        # Up to and including this quantity will be contained in the tier.
                        attr_reader :up_to_decimal
                        # No upper bound to this tier.
                        attr_reader :up_to_inf

                        def self.inner_class_types
                          @inner_class_types = {}
                        end

                        def self.field_remappings
                          @field_remappings = {}
                        end

                        def self.field_encodings
                          @field_encodings = { up_to_decimal: :decimal_string }
                        end
                      end
                      # Defines whether the tiered price should be graduated or volume-based.
                      attr_reader :tiering_mode
                      # Each element represents a pricing tier.
                      attr_reader :tiers
                      # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                      attr_reader :unit_amount

                      def self.inner_class_types
                        @inner_class_types = { tiers: Tier }
                      end

                      def self.field_remappings
                        @field_remappings = {}
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

                    class StartsAt < ::Stripe::StripeObject
                      # The timestamp when the item starts.
                      attr_reader :timestamp

                      def self.inner_class_types
                        @inner_class_types = {}
                      end

                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # Resolved timestamp when this override ends.
                    attr_reader :ends_at
                    # The user-provided lookup key for this override.
                    attr_reader :lookup_key
                    # Details for an overwrite_price override.
                    attr_reader :overwrite_price
                    # The ID of the pricing line override.
                    attr_reader :pricing_override
                    # Resolved timestamp when this override starts.
                    attr_reader :starts_at
                    # The type of override.
                    attr_reader :type

                    def self.inner_class_types
                      @inner_class_types = {
                        ends_at: EndsAt,
                        overwrite_price: OverwritePrice,
                        starts_at: StartsAt,
                      }
                    end

                    def self.field_remappings
                      @field_remappings = {}
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
                  # The pricing line overrides.
                  attr_reader :data

                  def self.inner_class_types
                    @inner_class_types = { data: Data }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end

                  def self.field_encodings
                    @field_encodings = {
                      data: {
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
                    }
                  end
                end
                # The current quantity on this pricing line.
                attr_reader :current_quantity
                # The ID of the V1 price.
                attr_reader :price
                # The overwrite_price overrides embedded directly on this pricing line.
                attr_reader :pricing_overrides

                def self.inner_class_types
                  @inner_class_types = { pricing_overrides: PricingOverrides }
                end

                def self.field_remappings
                  @field_remappings = {}
                end

                def self.field_encodings
                  @field_encodings = {
                    current_quantity: :decimal_string,
                    pricing_overrides: {
                      kind: :object,
                      fields: {
                        data: {
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
                      },
                    },
                  }
                end
              end
              # V1 price details. Present when `type` is `price`.
              attr_reader :price_details
              # The type of pricing.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { price_details: PriceDetails }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = {
                  price_details: {
                    kind: :object,
                    fields: {
                      current_quantity: :decimal_string,
                      pricing_overrides: {
                        kind: :object,
                        fields: {
                          data: {
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
                        },
                      },
                    },
                  },
                }
              end
            end

            class StartsAt < ::Stripe::StripeObject
              # The timestamp when the item starts.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Resolved timestamp when the pricing line ends.
            attr_reader :ends_at
            # The ID of the pricing line.
            attr_reader :id
            # The user-provided lookup key for the pricing line.
            attr_reader :lookup_key
            # Set of key-value pairs that you can attach to an object.
            attr_reader :metadata
            # The pricing configuration for the pricing line.
            attr_reader :pricing
            # Resolved timestamp when the pricing line starts.
            attr_reader :starts_at

            def self.inner_class_types
              @inner_class_types = { ends_at: EndsAt, pricing: Pricing, starts_at: StartsAt }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                pricing: {
                  kind: :object,
                  fields: {
                    price_details: {
                      kind: :object,
                      fields: {
                        current_quantity: :decimal_string,
                        pricing_overrides: {
                          kind: :object,
                          fields: {
                            data: {
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
                          },
                        },
                      },
                    },
                  },
                },
              }
            end
          end
          # The pricing lines for this page.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              data: {
                kind: :array,
                element: {
                  kind: :object,
                  fields: {
                    pricing: {
                      kind: :object,
                      fields: {
                        price_details: {
                          kind: :object,
                          fields: {
                            current_quantity: :decimal_string,
                            pricing_overrides: {
                              kind: :object,
                              fields: {
                                data: {
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
                              },
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

        class PricingOverrides < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class EndsAt < ::Stripe::StripeObject
              # The timestamp when the item ends.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Multiplier < ::Stripe::StripeObject
              class Criterion < ::Stripe::StripeObject
                # Filter by pricing line IDs.
                attr_reader :pricing_line_ids
                # Filter by pricing line lookup keys.
                attr_reader :pricing_line_lookup_keys
                # Whether to include or exclude items matching these criteria.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Criteria determining which rates the multiplier applies to.
              attr_reader :criteria
              # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
              attr_reader :factor

              def self.inner_class_types
                @inner_class_types = { criteria: Criterion }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class StartsAt < ::Stripe::StripeObject
              # The timestamp when the item starts.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Resolved timestamp when the pricing override ends.
            attr_reader :ends_at
            # The ID of the pricing override.
            attr_reader :id
            # The user-provided lookup key for the pricing override.
            attr_reader :lookup_key
            # Details for a multiplier override.
            attr_reader :multiplier
            # The priority of this override relative to others. Lower number = higher priority.
            attr_reader :priority
            # Resolved timestamp when the pricing override starts.
            attr_reader :starts_at
            # The type of pricing override.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { ends_at: EndsAt, multiplier: Multiplier, starts_at: StartsAt }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The pricing overrides for this page.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The timestamp when the contract was activated.
          attr_reader :activated_at
          # The timestamp when the contract was canceled.
          attr_reader :canceled_at
          # The timestamp when the contract ended.
          attr_reader :ended_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing cycle anchor for the contract.
        attr_reader :billing_cycle_anchor
        # The billing settings for the contract.
        attr_reader :billing_settings
        # A unique user-provided contract number e.g. C-2026-0001.
        attr_reader :contract_number
        # Timestamp of when the object was created.
        attr_reader :created
        # The currency of the contract.
        attr_reader :currency
        # The ID of the customer associated with the contract.
        attr_reader :customer
        # The ID of the contract object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The one-time fees of the contract. Only populated when `one_time_fees` is passed in the `include` parameter.
        attr_reader :one_time_fees
        # The pricing lines of the contract. Only populated when `pricing_lines` is passed in the `include` parameter.
        attr_reader :pricing_lines
        # The pricing overrides of the contract. Only populated when `pricing_overrides` is passed in the `include` parameter.
        attr_reader :pricing_overrides
        # The current status of the contract.
        attr_reader :status
        # Historical timestamps of when the contract transitioned into each status.
        attr_reader :status_transitions

        def self.inner_class_types
          @inner_class_types = {
            billing_cycle_anchor: BillingCycleAnchor,
            billing_settings: BillingSettings,
            one_time_fees: OneTimeFees,
            pricing_lines: PricingLines,
            pricing_overrides: PricingOverrides,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            pricing_lines: {
              kind: :object,
              fields: {
                data: {
                  kind: :array,
                  element: {
                    kind: :object,
                    fields: {
                      pricing: {
                        kind: :object,
                        fields: {
                          price_details: {
                            kind: :object,
                            fields: {
                              current_quantity: :decimal_string,
                              pricing_overrides: {
                                kind: :object,
                                fields: {
                                  data: {
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
            },
          }
        end
      end
    end
  end
end
