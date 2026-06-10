# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractCreateParams < ::Stripe::RequestParams
        class BillingSettings < ::Stripe::RequestParams
          class ContractBillingDetails < ::Stripe::RequestParams
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
                # The number of time units before the invoice is past due.
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
              # The collection method.
              attr_accessor :collection_method
              # The payment method configuration.
              attr_accessor :payment_method_configuration

              def initialize(collection_method: nil, payment_method_configuration: nil)
                @collection_method = collection_method
                @payment_method_configuration = payment_method_configuration
              end
            end
            # The bill settings details.
            attr_accessor :bill_settings_details
            # The billing profile details.
            attr_accessor :billing_profile_details
            # The collection settings details.
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
          # Billing settings details for the contract.
          attr_accessor :contract_billing_details

          def initialize(contract_billing_details: nil)
            @contract_billing_details = contract_billing_details
          end
        end

        class ContractLine < ::Stripe::RequestParams
          class EndsAt < ::Stripe::RequestParams
            # The timestamp when the item ends.
            attr_accessor :timestamp

            def initialize(timestamp: nil)
              @timestamp = timestamp
            end
          end

          class Override < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              attr_accessor :timestamp

              def initialize(timestamp: nil)
                @timestamp = timestamp
              end
            end

            class ServiceAction < ::Stripe::RequestParams
              class Add < ::Stripe::RequestParams
                class CreditGrant < ::Stripe::RequestParams
                  class Amount < ::Stripe::RequestParams
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    attr_accessor :monetary
                    # The type of the credit grant amount.
                    attr_accessor :type

                    def initialize(monetary: nil, type: nil)
                      @monetary = monetary
                      @type = type
                    end
                  end

                  class ApplicabilityConfig < ::Stripe::RequestParams
                    class Scope < ::Stripe::RequestParams
                      # The billable items to apply the credit grant to.
                      attr_accessor :billable_items
                      # The price type that credit grants can apply to.
                      attr_accessor :price_type

                      def initialize(billable_items: nil, price_type: nil)
                        @billable_items = billable_items
                        @price_type = price_type
                      end
                    end
                    # The applicability scope of the credit grant.
                    attr_accessor :scope

                    def initialize(scope: nil)
                      @scope = scope
                    end
                  end

                  class ExpiryConfig < ::Stripe::RequestParams
                    # The type of the expiry configuration.
                    attr_accessor :type

                    def initialize(type: nil)
                      @type = type
                    end
                  end
                  # The amount of the credit grant.
                  attr_accessor :amount
                  # Defines the scope where the credit grant is applicable.
                  attr_accessor :applicability_config
                  # The category of the credit grant.
                  attr_accessor :category
                  # The expiry configuration for the credit grant.
                  attr_accessor :expiry_config
                  # A descriptive name.
                  attr_accessor :name
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  attr_accessor :priority

                  def initialize(
                    amount: nil,
                    applicability_config: nil,
                    category: nil,
                    expiry_config: nil,
                    name: nil,
                    priority: nil
                  )
                    @amount = amount
                    @applicability_config = applicability_config
                    @category = category
                    @expiry_config = expiry_config
                    @name = name
                    @priority = priority
                  end
                end
                # Details for the credit grant. Required if `type` is `credit_grant`.
                attr_accessor :credit_grant
                # The interval for assessing service.
                attr_accessor :service_interval
                # The length of the interval for assessing service.
                attr_accessor :service_interval_count
                # The type of the service action.
                attr_accessor :type

                def initialize(
                  credit_grant: nil,
                  service_interval: nil,
                  service_interval_count: nil,
                  type: nil
                )
                  @credit_grant = credit_grant
                  @service_interval = service_interval
                  @service_interval_count = service_interval_count
                  @type = type
                end
              end

              class Replace < ::Stripe::RequestParams
                class CreditGrant < ::Stripe::RequestParams
                  class Amount < ::Stripe::RequestParams
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    attr_accessor :monetary
                    # The type of the credit grant amount.
                    attr_accessor :type

                    def initialize(monetary: nil, type: nil)
                      @monetary = monetary
                      @type = type
                    end
                  end

                  class ApplicabilityConfig < ::Stripe::RequestParams
                    class Scope < ::Stripe::RequestParams
                      # The billable items to apply the credit grant to.
                      attr_accessor :billable_items
                      # The price type that credit grants can apply to.
                      attr_accessor :price_type

                      def initialize(billable_items: nil, price_type: nil)
                        @billable_items = billable_items
                        @price_type = price_type
                      end
                    end
                    # The applicability scope of the credit grant.
                    attr_accessor :scope

                    def initialize(scope: nil)
                      @scope = scope
                    end
                  end

                  class ExpiryConfig < ::Stripe::RequestParams
                    # The type of the expiry configuration.
                    attr_accessor :type

                    def initialize(type: nil)
                      @type = type
                    end
                  end
                  # The amount of the credit grant.
                  attr_accessor :amount
                  # Defines the scope where the credit grant is applicable.
                  attr_accessor :applicability_config
                  # The category of the credit grant.
                  attr_accessor :category
                  # The expiry configuration for the credit grant.
                  attr_accessor :expiry_config
                  # A descriptive name.
                  attr_accessor :name
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  attr_accessor :priority

                  def initialize(
                    amount: nil,
                    applicability_config: nil,
                    category: nil,
                    expiry_config: nil,
                    name: nil,
                    priority: nil
                  )
                    @amount = amount
                    @applicability_config = applicability_config
                    @category = category
                    @expiry_config = expiry_config
                    @name = name
                    @priority = priority
                  end
                end
                # Details for the credit grant. Required if `type` is `credit_grant`.
                attr_accessor :credit_grant
                # The ID of the service action to replace.
                attr_accessor :id
                # The lookup key for the service action to replace.
                attr_accessor :lookup_key
                # The interval for assessing service.
                attr_accessor :service_interval
                # The length of the interval for assessing service.
                attr_accessor :service_interval_count
                # The type of the service action.
                attr_accessor :type

                def initialize(
                  credit_grant: nil,
                  id: nil,
                  lookup_key: nil,
                  service_interval: nil,
                  service_interval_count: nil,
                  type: nil
                )
                  @credit_grant = credit_grant
                  @id = id
                  @lookup_key = lookup_key
                  @service_interval = service_interval
                  @service_interval_count = service_interval_count
                  @type = type
                end
              end
              # Parameters for adding a new service action.
              attr_accessor :add
              # Parameters for replacing an existing service action.
              attr_accessor :replace
              # The type of service action override.
              attr_accessor :type

              def initialize(add: nil, replace: nil, type: nil)
                @add = add
                @replace = replace
                @type = type
              end
            end

            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              attr_accessor :timestamp

              def initialize(timestamp: nil)
                @timestamp = timestamp
              end
            end
            # Timestamp to indicate when the override ends.
            attr_accessor :ends_at
            # Service action override parameters. Required if `type` is `service_action`.
            attr_accessor :service_action
            # Timestamp to indicate when the override starts.
            attr_accessor :starts_at
            # The type of the override.
            attr_accessor :type

            def initialize(ends_at: nil, service_action: nil, starts_at: nil, type: nil)
              @ends_at = ends_at
              @service_action = service_action
              @starts_at = starts_at
              @type = type
            end
          end

          class Pricing < ::Stripe::RequestParams; end

          class StartsAt < ::Stripe::RequestParams
            # The timestamp when the item starts.
            attr_accessor :timestamp

            def initialize(timestamp: nil)
              @timestamp = timestamp
            end
          end
          # Timestamp to indicate when the contract line ends.
          attr_accessor :ends_at
          # Set of key-value pairs that you can attach to an object.
          attr_accessor :metadata
          # List of overrides. Later overrides in the list override earlier ones.
          attr_accessor :overrides
          # The pricing configuration for the contract line.
          attr_accessor :pricing
          # Timestamp to indicate when the contract line starts.
          attr_accessor :starts_at

          def initialize(ends_at: nil, metadata: nil, overrides: nil, pricing: nil, starts_at: nil)
            @ends_at = ends_at
            @metadata = metadata
            @overrides = overrides
            @pricing = pricing
            @starts_at = starts_at
          end
        end

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
          # The pricing line for the license quantity action.
          attr_accessor :pricing_line
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
            set: nil,
            type: nil
          )
            @effective_at = effective_at
            @license_pricing_id = license_pricing_id
            @license_pricing_lookup_key = license_pricing_lookup_key
            @license_pricing_type = license_pricing_type
            @pricing_line = pricing_line
            @set = set
            @type = type
          end
        end

        class OneTimeFee < ::Stripe::RequestParams
          class BillSchedule < ::Stripe::RequestParams
            class BillAt < ::Stripe::RequestParams
              # The datetime at which the entry should be billed. Required if `type` is `datetime`.
              attr_accessor :timestamp
              # The type of the bill_at.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end
            # When this entry should be billed.
            attr_accessor :bill_at
            # The amount to bill for this entry, in the smallest currency unit.
            attr_accessor :value

            def initialize(bill_at: nil, value: nil)
              @bill_at = bill_at
              @value = value
            end

            def self.field_encodings
              @field_encodings = { value: :int64_string }
            end
          end

          class ProductDetails < ::Stripe::RequestParams
            # The ID of the v1 Product.
            attr_accessor :product

            def initialize(product: nil)
              @product = product
            end
          end
          # The bill schedule for the fee. Each entry produces an individual invoice item billed at `bill_at`.
          attr_accessor :bill_schedule
          # The type of billable item that this fee references.
          attr_accessor :billable_item_type
          # Details for a product billable target. Required when `billable_item_type` is `product`.
          attr_accessor :product_details

          def initialize(bill_schedule: nil, billable_item_type: nil, product_details: nil)
            @bill_schedule = bill_schedule
            @billable_item_type = billable_item_type
            @product_details = product_details
          end

          def self.field_encodings
            @field_encodings = {
              bill_schedule: {
                kind: :array,
                element: { kind: :object, fields: { value: :int64_string } },
              },
            }
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

              def initialize(flat_amount: nil, unit_amount: nil, up_to_decimal: nil, up_to_inf: nil)
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
          # Parameters for a multiplier override. Required if `type` is `multiplier`.
          attr_accessor :multiplier
          # Parameters for an overwrite_price override. Required if `type` is `overwrite_price`.
          attr_accessor :overwrite_price
          # The priority of this override relative to others. The highest priority is 0 and the lowest is 100.
          attr_accessor :priority
          # When the pricing override starts.
          attr_accessor :starts_at
          # The type of pricing override.
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
        # The billing settings for the contract.
        attr_accessor :billing_settings
        # A list of contract lines to create with the contract.
        attr_accessor :contract_lines
        # A unique user-provided contract number e.g. C-2026-0001.
        attr_accessor :contract_number
        # Currency of the contract.
        attr_accessor :currency
        # Additional fields to include in the response.
        attr_accessor :include
        # A list of license quantity actions to create with the contract.
        attr_accessor :license_quantity_actions
        # Set of key-value pairs that you can attach to an object.
        attr_accessor :metadata
        # A list of one-time fees to create with the contract. Each fee is billed as individual invoice items per its bill_schedule.
        attr_accessor :one_time_fees
        # A list of pricing lines to create with the contract.
        attr_accessor :pricing_lines
        # A list of pricing overrides to create with the contract.
        attr_accessor :pricing_overrides

        def initialize(
          billing_settings: nil,
          contract_lines: nil,
          contract_number: nil,
          currency: nil,
          include: nil,
          license_quantity_actions: nil,
          metadata: nil,
          one_time_fees: nil,
          pricing_lines: nil,
          pricing_overrides: nil
        )
          @billing_settings = billing_settings
          @contract_lines = contract_lines
          @contract_number = contract_number
          @currency = currency
          @include = include
          @license_quantity_actions = license_quantity_actions
          @metadata = metadata
          @one_time_fees = one_time_fees
          @pricing_lines = pricing_lines
          @pricing_overrides = pricing_overrides
        end

        def self.field_encodings
          @field_encodings = {
            one_time_fees: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  bill_schedule: {
                    kind: :array,
                    element: { kind: :object, fields: { value: :int64_string } },
                  },
                },
              },
            },
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
          }
        end
      end
    end
  end
end
