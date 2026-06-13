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

        class BillingSettings < ::Stripe::StripeObject
          class ContractBillingDetails < ::Stripe::StripeObject
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
            # The bill settings details.
            attr_reader :bill_settings_details
            # The billing profile details.
            attr_reader :billing_profile_details
            # The collection settings details.
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
          # Billing settings details for the contract.
          attr_reader :contract_billing_details

          def self.inner_class_types
            @inner_class_types = { contract_billing_details: ContractBillingDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ContractLineDetail < ::Stripe::StripeObject
          class ContractLineValueDetails < ::Stripe::StripeObject
            # Computed sum of all licensed fees. Represented as a decimal string in minor currency units.
            attr_reader :total

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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

          class Override < ::Stripe::StripeObject
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

            class ServiceAction < ::Stripe::StripeObject
              class Add < ::Stripe::StripeObject
                class CreditGrant < ::Stripe::StripeObject
                  class Amount < ::Stripe::StripeObject
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    attr_reader :monetary
                    # The type of the credit grant amount.
                    attr_reader :type

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end

                  class ApplicabilityConfig < ::Stripe::StripeObject
                    class Scope < ::Stripe::StripeObject
                      # The billable items to apply the credit grant to.
                      attr_reader :billable_items
                      # The price type that credit grants can apply to.
                      attr_reader :price_type

                      def self.inner_class_types
                        @inner_class_types = {}
                      end

                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # The applicability scope of the credit grant.
                    attr_reader :scope

                    def self.inner_class_types
                      @inner_class_types = { scope: Scope }
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end

                  class ExpiryConfig < ::Stripe::StripeObject
                    # The type of the expiry configuration.
                    attr_reader :type

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # The amount of the credit grant.
                  attr_reader :amount
                  # Defines the scope where the credit grant is applicable.
                  attr_reader :applicability_config
                  # The category of the credit grant.
                  attr_reader :category
                  # The expiry configuration for the credit grant.
                  attr_reader :expiry_config
                  # A descriptive name.
                  attr_reader :name
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  attr_reader :priority

                  def self.inner_class_types
                    @inner_class_types = {
                      amount: Amount,
                      applicability_config: ApplicabilityConfig,
                      expiry_config: ExpiryConfig,
                    }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Details for the credit grant. Required if `type` is `credit_grant`.
                attr_reader :credit_grant
                # The interval for assessing service.
                attr_reader :service_interval
                # The length of the interval for assessing service.
                attr_reader :service_interval_count
                # The type of the service action.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { credit_grant: CreditGrant }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Replace < ::Stripe::StripeObject
                class CreditGrant < ::Stripe::StripeObject
                  class Amount < ::Stripe::StripeObject
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    attr_reader :monetary
                    # The type of the credit grant amount.
                    attr_reader :type

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end

                  class ApplicabilityConfig < ::Stripe::StripeObject
                    class Scope < ::Stripe::StripeObject
                      # The billable items to apply the credit grant to.
                      attr_reader :billable_items
                      # The price type that credit grants can apply to.
                      attr_reader :price_type

                      def self.inner_class_types
                        @inner_class_types = {}
                      end

                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # The applicability scope of the credit grant.
                    attr_reader :scope

                    def self.inner_class_types
                      @inner_class_types = { scope: Scope }
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end

                  class ExpiryConfig < ::Stripe::StripeObject
                    # The type of the expiry configuration.
                    attr_reader :type

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # The amount of the credit grant.
                  attr_reader :amount
                  # Defines the scope where the credit grant is applicable.
                  attr_reader :applicability_config
                  # The category of the credit grant.
                  attr_reader :category
                  # The expiry configuration for the credit grant.
                  attr_reader :expiry_config
                  # A descriptive name.
                  attr_reader :name
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  attr_reader :priority

                  def self.inner_class_types
                    @inner_class_types = {
                      amount: Amount,
                      applicability_config: ApplicabilityConfig,
                      expiry_config: ExpiryConfig,
                    }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Details for the credit grant. Required if `type` is `credit_grant`.
                attr_reader :credit_grant
                # The ID of the service action to replace.
                attr_reader :id
                # The lookup key for the service action to replace.
                attr_reader :lookup_key
                # The interval for assessing service.
                attr_reader :service_interval
                # The length of the interval for assessing service.
                attr_reader :service_interval_count
                # The type of the service action.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { credit_grant: CreditGrant }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Parameters for adding a new service action.
              attr_reader :add
              # Parameters for replacing an existing service action.
              attr_reader :replace
              # The type of service action override.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { add: Add, replace: Replace }
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
            # Timestamp to indicate when the override ends.
            attr_reader :ends_at
            # Service action override details.
            attr_reader :service_action
            # Timestamp to indicate when the override starts.
            attr_reader :starts_at
            # The type of the override.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {
                ends_at: EndsAt,
                service_action: ServiceAction,
                starts_at: StartsAt,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Pricing < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
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
          # The ID of the contract line.
          attr_reader :contract_line
          # The computed value details for the contract line.
          attr_reader :contract_line_value_details
          # Timestamp of when the object was created.
          attr_reader :created
          # Timestamp to indicate when the contract line ends.
          attr_reader :ends_at
          # Set of key-value pairs that you can attach to an object.
          attr_reader :metadata
          # List of overrides applied to the contract line.
          attr_reader :overrides
          # The pricing configuration for the contract line.
          attr_reader :pricing
          # Timestamp to indicate when the contract line starts.
          attr_reader :starts_at

          def self.inner_class_types
            @inner_class_types = {
              contract_line_value_details: ContractLineValueDetails,
              ends_at: EndsAt,
              overrides: Override,
              pricing: Pricing,
              starts_at: StartsAt,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ContractValueDetails < ::Stripe::StripeObject
          # The total value represented as a decimal string in minor currency units.
          attr_reader :total

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class LicenseQuantity < ::Stripe::StripeObject
          # The ID of the license pricing.
          attr_reader :license_pricing_id
          # The type of the license pricing.
          attr_reader :license_pricing_type
          # The ID of the pricing line associated with this license quantity.
          attr_reader :pricing_line
          # The current quantity of the license.
          attr_reader :quantity

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class OneTimeFee < ::Stripe::StripeObject
          class BillSchedule < ::Stripe::StripeObject
            class BillAt < ::Stripe::StripeObject
              # The datetime at which the entry will be billed. Set when `type` is `datetime`.
              attr_reader :timestamp
              # The type of the bill_at.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # When this entry will be billed.
            attr_reader :bill_at
            # The amount to bill for this entry, in the smallest currency unit.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = { bill_at: BillAt }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { value: :int64_string }
            end
          end

          class ProductDetails < ::Stripe::StripeObject
            # The ID of the v1 Product.
            attr_reader :product

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The resolved bill schedule for the fee.
          attr_reader :bill_schedule
          # The type of billable item that this fee references.
          attr_reader :billable_item_type
          # Details for a product billable target. Set when `billable_item_type` is `product`.
          attr_reader :product_details

          def self.inner_class_types
            @inner_class_types = { bill_schedule: BillSchedule, product_details: ProductDetails }
          end

          def self.field_remappings
            @field_remappings = {}
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

        class PricingLine < ::Stripe::StripeObject
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
              # The ID of the V1 price.
              attr_reader :price

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
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
          # The user-provided lookup key for the pricing line.
          attr_reader :lookup_key
          # Set of key-value pairs that you can attach to an object.
          attr_reader :metadata
          # The pricing configuration for the pricing line.
          attr_reader :pricing
          # The ID of the pricing line.
          attr_reader :pricing_line
          # Resolved timestamp when the pricing line starts.
          attr_reader :starts_at

          def self.inner_class_types
            @inner_class_types = { ends_at: EndsAt, pricing: Pricing, starts_at: StartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PricingOverride < ::Stripe::StripeObject
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
              class MetadataCondition < ::Stripe::StripeObject
                class AllOf < ::Stripe::StripeObject
                  # The metadata key.
                  attr_reader :key
                  # The metadata value.
                  attr_reader :value

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # All of these key-value conditions must match.
                attr_reader :all_of

                def self.inner_class_types
                  @inner_class_types = { all_of: AllOf }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Filter by billable item IDs.
              attr_reader :billable_item_ids
              # Filter by billable item lookup keys.
              attr_reader :billable_item_lookup_keys
              # Filter by billable item type.
              attr_reader :billable_item_types
              # Filter by metadata conditions.
              attr_reader :metadata_conditions
              # Filter by rate card IDs. Only applicable for `multiplier` overrides.
              attr_reader :rate_card_ids
              # Whether to include or exclude items matching these criteria.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { metadata_conditions: MetadataCondition }
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
            # The ID of the V1 price to overwrite.
            attr_reader :price
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
          # Resolved timestamp when the pricing override ends.
          attr_reader :ends_at
          # The user-provided lookup key for the pricing override.
          attr_reader :lookup_key
          # Details for a multiplier override.
          attr_reader :multiplier
          # Details for an overwrite_price override.
          attr_reader :overwrite_price
          # The ID of the pricing override.
          attr_reader :pricing_override
          # The priority of this override relative to others. Lower number = higher priority.
          attr_reader :priority
          # Resolved timestamp when the pricing override starts.
          attr_reader :starts_at
          # The type of pricing override.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              ends_at: EndsAt,
              multiplier: Multiplier,
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

        class StatusDetails < ::Stripe::StripeObject
          class Active < ::Stripe::StripeObject
            # The timestamp when the contract was activated.
            attr_reader :activated_at

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Canceled < ::Stripe::StripeObject
            # The timestamp when the contract was canceled.
            attr_reader :canceled_at

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of the active contract status.
          attr_reader :active
          # Details of the canceled contract status.
          attr_reader :canceled

          def self.inner_class_types
            @inner_class_types = { active: Active, canceled: Canceled }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing settings for the contract.
        attr_reader :billing_settings
        # The contract line details of the contract. Only populated when `contract_line_details` is passed in the `include` parameter.
        attr_reader :contract_line_details
        # A unique user-provided contract number e.g. C-2026-0001.
        attr_reader :contract_number
        # The computed total value of all contract lines.
        attr_reader :contract_value_details
        # Timestamp of when the object was created.
        attr_reader :created
        # The currency of the contract.
        attr_reader :currency
        # The ID of the customer associated with the contract.
        attr_reader :customer
        # The ID of the contract object.
        attr_reader :id
        # The license quantities of the contract. Only populated when `license_quantities` is passed in the `include` parameter.
        attr_reader :license_quantities
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
        # Information about the contract status transitions.
        attr_reader :status_details

        def self.inner_class_types
          @inner_class_types = {
            billing_settings: BillingSettings,
            contract_line_details: ContractLineDetail,
            contract_value_details: ContractValueDetails,
            license_quantities: LicenseQuantity,
            one_time_fees: OneTimeFee,
            pricing_lines: PricingLine,
            pricing_overrides: PricingOverride,
            status_details: StatusDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
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
