# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # Main Contract resource representing a comprehensive billing agreement
      class Contract < APIResource
        class BillingCycleAnchor < ::Stripe::StripeObject
          # The billing cycle anchor as a UTC timestamp.
          sig { returns(String) }
          def timestamp; end
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
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Tax calculation settings.
              sig { returns(T.nilable(Tax)) }
              def tax; end
              def self.inner_class_types
                @inner_class_types = {tax: Tax}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Invoice < ::Stripe::StripeObject
              class TimeUntilDue < ::Stripe::StripeObject
                # The interval unit.
                sig { returns(String) }
                def interval; end
                # The number of intervals.
                sig { returns(Integer) }
                def interval_count; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The number of time units before the invoice is past due.
              sig { returns(T.nilable(TimeUntilDue)) }
              def time_until_due; end
              def self.inner_class_types
                @inner_class_types = {time_until_due: TimeUntilDue}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Calculation settings.
            sig { returns(T.nilable(Calculation)) }
            def calculation; end
            # Invoice settings.
            sig { returns(T.nilable(Invoice)) }
            def invoice; end
            def self.inner_class_types
              @inner_class_types = {calculation: Calculation, invoice: Invoice}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class BillingProfileDetails < ::Stripe::StripeObject
            # The customer who pays for the contract invoice.
            sig { returns(String) }
            def customer; end
            # The default payment method for the contract.
            sig { returns(T.nilable(String)) }
            def default_payment_method; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CollectionSettingsDetails < ::Stripe::StripeObject
            # The collection method.
            sig { returns(String) }
            def collection_method; end
            # The payment method configuration.
            sig { returns(T.nilable(String)) }
            def payment_method_configuration; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The bill settings details configures invoice and tax settings for the contract.
          sig { returns(T.nilable(BillSettingsDetails)) }
          def bill_settings_details; end
          # The billing profile details configures who is charged for the contract.
          sig { returns(BillingProfileDetails) }
          def billing_profile_details; end
          # The collection settings details configures how payments are collected on the contract.
          sig { returns(CollectionSettingsDetails) }
          def collection_settings_details; end
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
              sig { returns(String) }
              def timestamp; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The amount billed for this fee.
            sig { returns(::Stripe::V2::Amount) }
            def amount; end
            # When this fee will be billed. Always contains a concrete timestamp.
            sig { returns(BillAt) }
            def bill_at; end
            # The ID of the one-time fee.
            sig { returns(String) }
            def id; end
            # The user-provided lookup key.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            # The ID of the v1 Product for this fee.
            sig { returns(String) }
            def product; end
            def self.inner_class_types
              @inner_class_types = {bill_at: BillAt}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The one-time fees for this page.
          sig { returns(T::Array[Data]) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PricingLines < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class EndsAt < ::Stripe::StripeObject
              # The timestamp when the item ends.
              sig { returns(String) }
              def timestamp; end
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
                      sig { returns(String) }
                      def timestamp; end
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
                        sig { returns(T.nilable(String)) }
                        def flat_amount; end
                        # Per-unit price for units included in this tier, represented as a decimal string in minor currency units.
                        sig { returns(T.nilable(String)) }
                        def unit_amount; end
                        # Up to and including this quantity will be contained in the tier.
                        sig { returns(T.nilable(BigDecimal)) }
                        def up_to_decimal; end
                        # No upper bound to this tier.
                        sig { returns(T.nilable(String)) }
                        def up_to_inf; end
                        def self.inner_class_types
                          @inner_class_types = {}
                        end
                        def self.field_remappings
                          @field_remappings = {}
                        end
                        def self.field_encodings
                          @field_encodings = {up_to_decimal: :decimal_string}
                        end
                      end
                      # Defines whether the tiered price should be graduated or volume-based.
                      sig { returns(T.nilable(String)) }
                      def tiering_mode; end
                      # Each element represents a pricing tier.
                      sig { returns(T::Array[Tier]) }
                      def tiers; end
                      # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                      sig { returns(T.nilable(String)) }
                      def unit_amount; end
                      def self.inner_class_types
                        @inner_class_types = {tiers: Tier}
                      end
                      def self.field_remappings
                        @field_remappings = {}
                      end
                      def self.field_encodings
                        @field_encodings = {
                          tiers: {
                            kind: :array,
                            element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                          },
                        }
                      end
                    end
                    class StartsAt < ::Stripe::StripeObject
                      # The timestamp when the item starts.
                      sig { returns(String) }
                      def timestamp; end
                      def self.inner_class_types
                        @inner_class_types = {}
                      end
                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # Resolved timestamp when this override ends.
                    sig { returns(EndsAt) }
                    def ends_at; end
                    # The user-provided lookup key for this override.
                    sig { returns(T.nilable(String)) }
                    def lookup_key; end
                    # Details for an overwrite_price override.
                    sig { returns(T.nilable(OverwritePrice)) }
                    def overwrite_price; end
                    # The ID of the pricing line override.
                    sig { returns(String) }
                    def pricing_override; end
                    # Resolved timestamp when this override starts.
                    sig { returns(StartsAt) }
                    def starts_at; end
                    # The type of override.
                    sig { returns(String) }
                    def type; end
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
                              element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                            },
                          },
                        },
                      }
                    end
                  end
                  # The pricing line overrides.
                  sig { returns(T::Array[Data]) }
                  def data; end
                  def self.inner_class_types
                    @inner_class_types = {data: Data}
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
                                    fields: {up_to_decimal: :decimal_string},
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
                sig { returns(BigDecimal) }
                def current_quantity; end
                # The ID of the V1 price.
                sig { returns(String) }
                def price; end
                # The overwrite_price overrides embedded directly on this pricing line.
                sig { returns(T.nilable(PricingOverrides)) }
                def pricing_overrides; end
                def self.inner_class_types
                  @inner_class_types = {pricing_overrides: PricingOverrides}
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
                                      fields: {up_to_decimal: :decimal_string},
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
              sig { returns(T.nilable(PriceDetails)) }
              def price_details; end
              # The type of pricing.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {price_details: PriceDetails}
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
                                        fields: {up_to_decimal: :decimal_string},
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
              sig { returns(String) }
              def timestamp; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Resolved timestamp when the pricing line ends.
            sig { returns(EndsAt) }
            def ends_at; end
            # The ID of the pricing line.
            sig { returns(String) }
            def id; end
            # The user-provided lookup key for the pricing line.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            # Set of key-value pairs that you can attach to an object.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            # The pricing configuration for the pricing line.
            sig { returns(Pricing) }
            def pricing; end
            # Resolved timestamp when the pricing line starts.
            sig { returns(StartsAt) }
            def starts_at; end
            def self.inner_class_types
              @inner_class_types = {ends_at: EndsAt, pricing: Pricing, starts_at: StartsAt}
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
                                          fields: {up_to_decimal: :decimal_string},
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
          sig { returns(T::Array[Data]) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
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
                                              fields: {up_to_decimal: :decimal_string},
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
              sig { returns(String) }
              def timestamp; end
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
                sig { returns(T.nilable(T::Array[String])) }
                def pricing_line_ids; end
                # Filter by pricing line lookup keys.
                sig { returns(T.nilable(T::Array[String])) }
                def pricing_line_lookup_keys; end
                # Whether to include or exclude items matching these criteria.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Criteria determining which rates the multiplier applies to.
              sig { returns(T::Array[Criterion]) }
              def criteria; end
              # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
              sig { returns(String) }
              def factor; end
              def self.inner_class_types
                @inner_class_types = {criteria: Criterion}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class StartsAt < ::Stripe::StripeObject
              # The timestamp when the item starts.
              sig { returns(String) }
              def timestamp; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Resolved timestamp when the pricing override ends.
            sig { returns(EndsAt) }
            def ends_at; end
            # The ID of the pricing override.
            sig { returns(String) }
            def id; end
            # The user-provided lookup key for the pricing override.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            # Details for a multiplier override.
            sig { returns(T.nilable(Multiplier)) }
            def multiplier; end
            # The priority of this override relative to others. Lower number = higher priority.
            sig { returns(Integer) }
            def priority; end
            # Resolved timestamp when the pricing override starts.
            sig { returns(StartsAt) }
            def starts_at; end
            # The type of pricing override.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {ends_at: EndsAt, multiplier: Multiplier, starts_at: StartsAt}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The pricing overrides for this page.
          sig { returns(T::Array[Data]) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # The timestamp when the contract was activated.
          sig { returns(T.nilable(String)) }
          def activated_at; end
          # The timestamp when the contract was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # The timestamp when the contract ended.
          sig { returns(T.nilable(String)) }
          def ended_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing cycle anchor for the contract.
        sig { returns(T.nilable(BillingCycleAnchor)) }
        def billing_cycle_anchor; end
        # The billing settings for the contract.
        sig { returns(T.nilable(BillingSettings)) }
        def billing_settings; end
        # A unique user-provided contract number e.g. C-2026-0001.
        sig { returns(String) }
        def contract_number; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # The currency of the contract.
        sig { returns(String) }
        def currency; end
        # The ID of the customer associated with the contract.
        sig { returns(String) }
        def customer; end
        # The ID of the contract object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The one-time fees of the contract. Only populated when `one_time_fees` is passed in the `include` parameter.
        sig { returns(T.nilable(OneTimeFees)) }
        def one_time_fees; end
        # The pricing lines of the contract. Only populated when `pricing_lines` is passed in the `include` parameter.
        sig { returns(T.nilable(PricingLines)) }
        def pricing_lines; end
        # The pricing overrides of the contract. Only populated when `pricing_overrides` is passed in the `include` parameter.
        sig { returns(T.nilable(PricingOverrides)) }
        def pricing_overrides; end
        # The current status of the contract.
        sig { returns(String) }
        def status; end
        # Historical timestamps of when the contract transitioned into each status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
      end
    end
  end
end