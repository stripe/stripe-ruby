# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractCreateParams < ::Stripe::RequestParams
        class BillingCycleAnchor < ::Stripe::RequestParams
          class Config < ::Stripe::RequestParams
            # Day of month (1-31).
            attr_accessor :day_of_month
            # Hour of day in UTC (0-23).
            attr_accessor :hour
            # Minute of hour (0-59).
            attr_accessor :minute
            # Month of year (1-12).
            attr_accessor :month_of_year
            # Second of minute (0-59).
            attr_accessor :second

            def initialize(
              day_of_month: nil,
              hour: nil,
              minute: nil,
              month_of_year: nil,
              second: nil
            )
              @day_of_month = day_of_month
              @hour = hour
              @minute = minute
              @month_of_year = month_of_year
              @second = second
            end
          end
          # Configuration for determining the billing cycle anchor by calendar fields.
          attr_accessor :config
          # A specific timestamp to use as the billing cycle anchor.
          attr_accessor :timestamp
          # The type of billing cycle anchor.
          attr_accessor :type

          def initialize(config: nil, timestamp: nil, type: nil)
            @config = config
            @timestamp = timestamp
            @type = type
          end
        end

        class BillingSettings < ::Stripe::RequestParams
          class BillSettingsDetails < ::Stripe::RequestParams
            class Calculation < ::Stripe::RequestParams
              class Tax < ::Stripe::RequestParams
                # The type of tax calculation.
                attr_accessor :type

                def initialize(type: nil)
                  @type = type
                end
              end
              # Tax calculation settings.
              attr_accessor :tax

              def initialize(tax: nil)
                @tax = tax
              end
            end

            class Invoice < ::Stripe::RequestParams
              class TimeUntilDue < ::Stripe::RequestParams
                # The interval unit.
                attr_accessor :interval
                # The number of intervals.
                attr_accessor :interval_count

                def initialize(interval: nil, interval_count: nil)
                  @interval = interval
                  @interval_count = interval_count
                end
              end
              # How long the customer has to pay the invoice before it's past due.
              attr_accessor :time_until_due

              def initialize(time_until_due: nil)
                @time_until_due = time_until_due
              end
            end
            # Calculation settings.
            attr_accessor :calculation
            # Invoice settings.
            attr_accessor :invoice

            def initialize(calculation: nil, invoice: nil)
              @calculation = calculation
              @invoice = invoice
            end
          end

          class BillingProfileDetails < ::Stripe::RequestParams
            # The customer who pays for the contract invoice.
            attr_accessor :customer
            # The default payment method for the contract.
            attr_accessor :default_payment_method

            def initialize(customer: nil, default_payment_method: nil)
              @customer = customer
              @default_payment_method = default_payment_method
            end
          end

          class CollectionSettingsDetails < ::Stripe::RequestParams
            # How payment is collected for the contract.
            attr_accessor :collection_method
            # The payment method configuration.
            attr_accessor :payment_method_configuration

            def initialize(collection_method: nil, payment_method_configuration: nil)
              @collection_method = collection_method
              @payment_method_configuration = payment_method_configuration
            end
          end
          # The bill settings details configures invoice and tax settings for the contract.
          attr_accessor :bill_settings_details
          # The billing profile details configures who is charged for the contract.
          attr_accessor :billing_profile_details
          # The collection settings details configures how payments are collected on the contract.
          attr_accessor :collection_settings_details

          def initialize(
            bill_settings_details: nil,
            billing_profile_details: nil,
            collection_settings_details: nil
          )
            @bill_settings_details = bill_settings_details
            @billing_profile_details = billing_profile_details
            @collection_settings_details = collection_settings_details
          end
        end

        class OneTimeFee < ::Stripe::RequestParams
          class BillAt < ::Stripe::RequestParams
            # The timestamp at which the entry should be billed. Required if `type` is `timestamp`.
            attr_accessor :timestamp
            # The type of the bill_at.
            attr_accessor :type

            def initialize(timestamp: nil, type: nil)
              @timestamp = timestamp
              @type = type
            end
          end
          # The amount to bill.
          attr_accessor :amount
          # When this fee should be billed.
          attr_accessor :bill_at
          # A user-provided lookup key.
          attr_accessor :lookup_key
          # The id of the product for this fee.
          attr_accessor :product

          def initialize(amount: nil, bill_at: nil, lookup_key: nil, product: nil)
            @amount = amount
            @bill_at = bill_at
            @lookup_key = lookup_key
            @product = product
          end
        end

        class PricingLine < ::Stripe::RequestParams
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
                  },
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
          # When the pricing line ends.
          attr_accessor :ends_at
          # A user-provided lookup key to reference this pricing line.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object.
          attr_accessor :metadata
          # The pricing configuration for the pricing line.
          attr_accessor :pricing
          # When the pricing line starts.
          attr_accessor :starts_at

          def initialize(ends_at: nil, lookup_key: nil, metadata: nil, pricing: nil, starts_at: nil)
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
          # When the pricing override ends.
          attr_accessor :ends_at
          # A user-provided lookup key to reference this pricing override.
          attr_accessor :lookup_key
          # Parameters for a multiply_pricing override. Required if `type` is `multiply_pricing`.
          attr_accessor :multiply_pricing
          # The priority of this override relative to others. The highest priority is 0 and the lowest is 100.
          attr_accessor :priority
          # When the pricing override starts.
          attr_accessor :starts_at
          # The type of pricing override.
          attr_accessor :type

          def initialize(
            ends_at: nil,
            lookup_key: nil,
            multiply_pricing: nil,
            priority: nil,
            starts_at: nil,
            type: nil
          )
            @ends_at = ends_at
            @lookup_key = lookup_key
            @multiply_pricing = multiply_pricing
            @priority = priority
            @starts_at = starts_at
            @type = type
          end
        end
        # The billing cycle anchor for the contract. If not provided, defaults to the pricing line start time.
        # It is only at the top-level of the contract with no option to override at the pricing line level.
        attr_accessor :billing_cycle_anchor
        # The billing settings for the contract.
        attr_accessor :billing_settings
        # A unique user-provided contract number e.g. C-2026-0001.
        attr_accessor :contract_number
        # Currency of the contract.
        attr_accessor :currency
        # Additional fields to include in the response.
        attr_accessor :include
        # Set of key-value pairs that you can attach to an object.
        attr_accessor :metadata
        # A list of one-time fees to create with the contract. Each fee is billed as individual invoice items per its bill_schedule.
        attr_accessor :one_time_fees
        # A list of pricing lines to create with the contract.
        attr_accessor :pricing_lines
        # A list of pricing overrides to create with the contract.
        attr_accessor :pricing_overrides

        def initialize(
          billing_cycle_anchor: nil,
          billing_settings: nil,
          contract_number: nil,
          currency: nil,
          include: nil,
          metadata: nil,
          one_time_fees: nil,
          pricing_lines: nil,
          pricing_overrides: nil
        )
          @billing_cycle_anchor = billing_cycle_anchor
          @billing_settings = billing_settings
          @contract_number = contract_number
          @currency = currency
          @include = include
          @metadata = metadata
          @one_time_fees = one_time_fees
          @pricing_lines = pricing_lines
          @pricing_overrides = pricing_overrides
        end

        def self.field_encodings
          @field_encodings = {
            pricing_lines: {
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
            },
          }
        end
      end
    end
  end
end
