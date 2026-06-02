# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # Main Contract resource representing a comprehensive billing agreement
      class Contract < APIResource
        class BillingSettings < ::Stripe::StripeObject
          class ContractBillingDetails < ::Stripe::StripeObject
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
            # The bill settings details.
            sig { returns(T.nilable(BillSettingsDetails)) }
            def bill_settings_details; end
            # The billing profile details.
            sig { returns(BillingProfileDetails) }
            def billing_profile_details; end
            # The collection settings details.
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
          # Billing settings details for the contract.
          sig { returns(T.nilable(ContractBillingDetails)) }
          def contract_billing_details; end
          def self.inner_class_types
            @inner_class_types = {contract_billing_details: ContractBillingDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ContractLineDetail < ::Stripe::StripeObject
          class ContractLineValueDetails < ::Stripe::StripeObject
            # Computed sum of all licensed fees. Represented as a decimal string in minor currency units.
            sig { returns(String) }
            def total; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
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
          class Override < ::Stripe::StripeObject
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
            class ServiceAction < ::Stripe::StripeObject
              class Add < ::Stripe::StripeObject
                class CreditGrant < ::Stripe::StripeObject
                  class Amount < ::Stripe::StripeObject
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    sig { returns(T.nilable(::Stripe::V2::Amount)) }
                    def monetary; end
                    # The type of the credit grant amount.
                    sig { returns(String) }
                    def type; end
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
                      sig { returns(T.nilable(T::Array[String])) }
                      def billable_items; end
                      # The price type that credit grants can apply to.
                      sig { returns(T.nilable(String)) }
                      def price_type; end
                      def self.inner_class_types
                        @inner_class_types = {}
                      end
                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # The applicability scope of the credit grant.
                    sig { returns(Scope) }
                    def scope; end
                    def self.inner_class_types
                      @inner_class_types = {scope: Scope}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  class ExpiryConfig < ::Stripe::StripeObject
                    # The type of the expiry configuration.
                    sig { returns(String) }
                    def type; end
                    def self.inner_class_types
                      @inner_class_types = {}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # The amount of the credit grant.
                  sig { returns(Amount) }
                  def amount; end
                  # Defines the scope where the credit grant is applicable.
                  sig { returns(ApplicabilityConfig) }
                  def applicability_config; end
                  # The category of the credit grant.
                  sig { returns(T.nilable(String)) }
                  def category; end
                  # The expiry configuration for the credit grant.
                  sig { returns(ExpiryConfig) }
                  def expiry_config; end
                  # A descriptive name.
                  sig { returns(String) }
                  def name; end
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  sig { returns(T.nilable(Integer)) }
                  def priority; end
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
                sig { returns(T.nilable(CreditGrant)) }
                def credit_grant; end
                # The interval for assessing service.
                sig { returns(String) }
                def service_interval; end
                # The length of the interval for assessing service.
                sig { returns(Integer) }
                def service_interval_count; end
                # The type of the service action.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {credit_grant: CreditGrant}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class Replace < ::Stripe::StripeObject
                class CreditGrant < ::Stripe::StripeObject
                  class Amount < ::Stripe::StripeObject
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    sig { returns(T.nilable(::Stripe::V2::Amount)) }
                    def monetary; end
                    # The type of the credit grant amount.
                    sig { returns(String) }
                    def type; end
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
                      sig { returns(T.nilable(T::Array[String])) }
                      def billable_items; end
                      # The price type that credit grants can apply to.
                      sig { returns(T.nilable(String)) }
                      def price_type; end
                      def self.inner_class_types
                        @inner_class_types = {}
                      end
                      def self.field_remappings
                        @field_remappings = {}
                      end
                    end
                    # The applicability scope of the credit grant.
                    sig { returns(Scope) }
                    def scope; end
                    def self.inner_class_types
                      @inner_class_types = {scope: Scope}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  class ExpiryConfig < ::Stripe::StripeObject
                    # The type of the expiry configuration.
                    sig { returns(String) }
                    def type; end
                    def self.inner_class_types
                      @inner_class_types = {}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # The amount of the credit grant.
                  sig { returns(Amount) }
                  def amount; end
                  # Defines the scope where the credit grant is applicable.
                  sig { returns(ApplicabilityConfig) }
                  def applicability_config; end
                  # The category of the credit grant.
                  sig { returns(T.nilable(String)) }
                  def category; end
                  # The expiry configuration for the credit grant.
                  sig { returns(ExpiryConfig) }
                  def expiry_config; end
                  # A descriptive name.
                  sig { returns(String) }
                  def name; end
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  sig { returns(T.nilable(Integer)) }
                  def priority; end
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
                sig { returns(T.nilable(CreditGrant)) }
                def credit_grant; end
                # The ID of the service action to replace.
                sig { returns(T.nilable(String)) }
                def id; end
                # The lookup key for the service action to replace.
                sig { returns(T.nilable(String)) }
                def lookup_key; end
                # The interval for assessing service.
                sig { returns(String) }
                def service_interval; end
                # The length of the interval for assessing service.
                sig { returns(Integer) }
                def service_interval_count; end
                # The type of the service action.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {credit_grant: CreditGrant}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Parameters for adding a new service action.
              sig { returns(T.nilable(Add)) }
              def add; end
              # Parameters for replacing an existing service action.
              sig { returns(T.nilable(Replace)) }
              def replace; end
              # The type of service action override.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {add: Add, replace: Replace}
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
            # Timestamp to indicate when the override ends.
            sig { returns(EndsAt) }
            def ends_at; end
            # Service action override details.
            sig { returns(T.nilable(ServiceAction)) }
            def service_action; end
            # Timestamp to indicate when the override starts.
            sig { returns(StartsAt) }
            def starts_at; end
            # The type of the override.
            sig { returns(String) }
            def type; end
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
            sig { returns(String) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The ID of the contract line.
          sig { returns(String) }
          def contract_line; end
          # The computed value details for the contract line.
          sig { returns(ContractLineValueDetails) }
          def contract_line_value_details; end
          # Timestamp of when the object was created.
          sig { returns(String) }
          def created; end
          # Timestamp to indicate when the contract line ends.
          sig { returns(EndsAt) }
          def ends_at; end
          # Set of key-value pairs that you can attach to an object.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          # List of overrides applied to the contract line.
          sig { returns(T::Array[Override]) }
          def overrides; end
          # The pricing configuration for the contract line.
          sig { returns(Pricing) }
          def pricing; end
          # Timestamp to indicate when the contract line starts.
          sig { returns(StartsAt) }
          def starts_at; end
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
          sig { returns(String) }
          def total; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LicenseQuantity < ::Stripe::StripeObject
          # The ID of the license pricing.
          sig { returns(String) }
          def license_pricing_id; end
          # The type of the license pricing.
          sig { returns(String) }
          def license_pricing_type; end
          # The ID of the pricing line associated with this license quantity.
          sig { returns(String) }
          def pricing_line; end
          # The current quantity of the license.
          sig { returns(Integer) }
          def quantity; end
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
              sig { returns(T.nilable(String)) }
              def timestamp; end
              # The type of the bill_at.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # When this entry will be billed.
            sig { returns(BillAt) }
            def bill_at; end
            # The amount to bill for this entry, in the smallest currency unit.
            sig { returns(Integer) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {bill_at: BillAt}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {value: :int64_string}
            end
          end
          class ProductDetails < ::Stripe::StripeObject
            # The ID of the v1 Product.
            sig { returns(String) }
            def product; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The resolved bill schedule for the fee.
          sig { returns(T::Array[BillSchedule]) }
          def bill_schedule; end
          # The type of billable item that this fee references.
          sig { returns(String) }
          def billable_item_type; end
          # Details for a product billable target. Set when `billable_item_type` is `product`.
          sig { returns(T.nilable(ProductDetails)) }
          def product_details; end
          def self.inner_class_types
            @inner_class_types = {bill_schedule: BillSchedule, product_details: ProductDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              bill_schedule: {
                kind: :array,
                element: {kind: :object, fields: {value: :int64_string}},
              },
            }
          end
        end
        class PricingLine < ::Stripe::StripeObject
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
              # The ID of the V1 price.
              sig { returns(String) }
              def price; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
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
          # The user-provided lookup key for the pricing line.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          # Set of key-value pairs that you can attach to an object.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          # The pricing configuration for the pricing line.
          sig { returns(Pricing) }
          def pricing; end
          # The ID of the pricing line.
          sig { returns(String) }
          def pricing_line; end
          # Resolved timestamp when the pricing line starts.
          sig { returns(StartsAt) }
          def starts_at; end
          def self.inner_class_types
            @inner_class_types = {ends_at: EndsAt, pricing: Pricing, starts_at: StartsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PricingOverride < ::Stripe::StripeObject
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
              class MetadataCondition < ::Stripe::StripeObject
                class AllOf < ::Stripe::StripeObject
                  # The metadata key.
                  sig { returns(String) }
                  def key; end
                  # The metadata value.
                  sig { returns(String) }
                  def value; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # All of these key-value conditions must match.
                sig { returns(T::Array[AllOf]) }
                def all_of; end
                def self.inner_class_types
                  @inner_class_types = {all_of: AllOf}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Filter by billable item IDs.
              sig { returns(T::Array[String]) }
              def billable_item_ids; end
              # Filter by billable item lookup keys.
              sig { returns(T::Array[String]) }
              def billable_item_lookup_keys; end
              # Filter by billable item type.
              sig { returns(T::Array[String]) }
              def billable_item_types; end
              # Filter by metadata conditions.
              sig { returns(T::Array[MetadataCondition]) }
              def metadata_conditions; end
              # Filter by rate card IDs. Only applicable for `multiplier` overrides.
              sig { returns(T::Array[String]) }
              def rate_card_ids; end
              # Whether to include or exclude items matching these criteria.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {metadata_conditions: MetadataCondition}
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
            # The ID of the V1 price to overwrite.
            sig { returns(String) }
            def price; end
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
          # Resolved timestamp when the pricing override ends.
          sig { returns(EndsAt) }
          def ends_at; end
          # The user-provided lookup key for the pricing override.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          # Details for a multiplier override.
          sig { returns(T.nilable(Multiplier)) }
          def multiplier; end
          # Details for an overwrite_price override.
          sig { returns(T.nilable(OverwritePrice)) }
          def overwrite_price; end
          # The ID of the pricing override.
          sig { returns(String) }
          def pricing_override; end
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
                    element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                  },
                },
              },
            }
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Active < ::Stripe::StripeObject
            # The timestamp when the contract was activated.
            sig { returns(String) }
            def activated_at; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Canceled < ::Stripe::StripeObject
            # The timestamp when the contract was canceled.
            sig { returns(String) }
            def canceled_at; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of the active contract status.
          sig { returns(T.nilable(Active)) }
          def active; end
          # Details of the canceled contract status.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          def self.inner_class_types
            @inner_class_types = {active: Active, canceled: Canceled}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing settings for the contract.
        sig { returns(T.nilable(BillingSettings)) }
        def billing_settings; end
        # The contract line details of the contract. Only populated when `contract_line_details` is passed in the `include` parameter.
        sig { returns(T::Array[ContractLineDetail]) }
        def contract_line_details; end
        # A unique user-provided contract number e.g. C-2026-0001.
        sig { returns(String) }
        def contract_number; end
        # The computed total value of all contract lines.
        sig { returns(ContractValueDetails) }
        def contract_value_details; end
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
        # The license quantities of the contract. Only populated when `license_quantities` is passed in the `include` parameter.
        sig { returns(T::Array[LicenseQuantity]) }
        def license_quantities; end
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
        sig { returns(T.nilable(T::Array[OneTimeFee])) }
        def one_time_fees; end
        # The pricing lines of the contract. Only populated when `pricing_lines` is passed in the `include` parameter.
        sig { returns(T::Array[PricingLine]) }
        def pricing_lines; end
        # The pricing overrides of the contract. Only populated when `pricing_overrides` is passed in the `include` parameter.
        sig { returns(T::Array[PricingOverride]) }
        def pricing_overrides; end
        # The current status of the contract.
        sig { returns(String) }
        def status; end
        # Information about the contract status transitions.
        sig { returns(StatusDetails) }
        def status_details; end
      end
    end
  end
end