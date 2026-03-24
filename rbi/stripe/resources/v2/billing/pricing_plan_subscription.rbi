# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Pricing Plan Subscription represents a customer's active subscription to a Pricing Plan. It tracks both the servicing
      # status (whether the customer is receiving service) and collection status (whether payments are current). Subscriptions
      # are created through Billing Intents and bill according to the associated Billing Cadence.
      class PricingPlanSubscription < APIResource
        class CancellationDetails < ::Stripe::StripeObject
          # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
          sig { returns(T.nilable(String)) }
          def comment; end
          # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
          sig { returns(T.nilable(String)) }
          def feedback; end
          # System-generated reason for cancellation.
          sig { returns(T.nilable(String)) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CollectionStatusTransitions < ::Stripe::StripeObject
          # When the collection status transitioned to awaiting customer action.
          sig { returns(T.nilable(String)) }
          def awaiting_customer_action_at; end
          # When the collection status transitioned to current.
          sig { returns(T.nilable(String)) }
          def current_at; end
          # When the collection status transitioned to past due.
          sig { returns(T.nilable(String)) }
          def past_due_at; end
          # When the collection status transitioned to paused.
          sig { returns(T.nilable(String)) }
          def paused_at; end
          # When the collection status transitioned to unpaid.
          sig { returns(T.nilable(String)) }
          def unpaid_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class DiscountDetail < ::Stripe::StripeObject
          class Source < ::Stripe::StripeObject
            # The ID of the Coupon.
            sig { returns(T.nilable(String)) }
            def coupon; end
            # Type of the Discount source.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The ID of the Discount.
          sig { returns(String) }
          def discount; end
          # The time at which the Discount ends, if applicable.
          sig { returns(T.nilable(String)) }
          def end; end
          # The ID of the PromotionCode, if applicable.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          # The source of the Discount.
          sig { returns(Source) }
          def source; end
          # The time at which the Discount starts.
          sig { returns(String) }
          def start; end
          def self.inner_class_types
            @inner_class_types = {source: Source}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PricingPlanComponentDetail < ::Stripe::StripeObject
          class LicenseFeeDetails < ::Stripe::StripeObject
            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              sig { returns(String) }
              def interval; end
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              sig { returns(Integer) }
              def interval_count; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Tier < ::Stripe::StripeObject
              # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
              sig { returns(T.nilable(String)) }
              def flat_amount; end
              # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
              # most 12 decimal places.
              sig { returns(T.nilable(String)) }
              def unit_amount; end
              # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
              # be set.
              sig { returns(T.nilable(String)) }
              def up_to_decimal; end
              # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
              sig { returns(T.nilable(String)) }
              def up_to_inf; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class TransformQuantity < ::Stripe::StripeObject
              # Divide usage by this number.
              sig { returns(Integer) }
              def divide_by; end
              # After division, round the result up or down.
              sig { returns(String) }
              def round; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {divide_by: :int64_string}
              end
            end
            # Three-letter ISO currency code, in lowercase.
            sig { returns(String) }
            def currency; end
            # A customer-facing name for the license fee.
            sig { returns(String) }
            def display_name; end
            # The ID of the License Fee.
            sig { returns(String) }
            def license_fee; end
            # The ID of the License Fee Version.
            sig { returns(String) }
            def license_fee_version; end
            # Quantity of the license fee on the subscription.
            sig { returns(Integer) }
            def quantity; end
            # The service cycle configuration.
            sig { returns(ServiceCycle) }
            def service_cycle; end
            # Defines whether the tiering price should be graduated or volume-based.
            sig { returns(T.nilable(String)) }
            def tiering_mode; end
            # Each element represents a pricing tier.
            sig { returns(T::Array[Tier]) }
            def tiers; end
            # Apply a transformation to the reported usage or set quantity before computing the amount billed.
            sig { returns(T.nilable(TransformQuantity)) }
            def transform_quantity; end
            # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def unit_amount; end
            # The unit label from the licensed item, used for display purposes (e.g. "seat", "environment").
            sig { returns(T.nilable(String)) }
            def unit_label; end
            def self.inner_class_types
              @inner_class_types = {
                service_cycle: ServiceCycle,
                tiers: Tier,
                transform_quantity: TransformQuantity,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                transform_quantity: {kind: :object, fields: {divide_by: :int64_string}},
              }
            end
          end
          class RateCardDetails < ::Stripe::StripeObject
            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              sig { returns(String) }
              def interval; end
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              sig { returns(Integer) }
              def interval_count; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Three-letter ISO currency code, in lowercase.
            sig { returns(String) }
            def currency; end
            # A customer-facing name for the rate card.
            sig { returns(String) }
            def display_name; end
            # The ID of the Rate Card.
            sig { returns(String) }
            def rate_card; end
            # The ID of the Rate Card Version.
            sig { returns(String) }
            def rate_card_version; end
            # The service cycle configuration.
            sig { returns(ServiceCycle) }
            def service_cycle; end
            # Whether the rates are inclusive or exclusive of tax.
            sig { returns(String) }
            def tax_behavior; end
            def self.inner_class_types
              @inner_class_types = {service_cycle: ServiceCycle}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class RecurringCreditGrantDetails < ::Stripe::StripeObject
            class CreditGrantDetails < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                class CustomPricingUnit < ::Stripe::StripeObject
                  # The Custom Pricing Unit object.
                  sig { returns(T.nilable(::Stripe::V2::Billing::CustomPricingUnit)) }
                  def custom_pricing_unit_details; end
                  # The id of the custom pricing unit.
                  sig { returns(String) }
                  def id; end
                  # The value of the credit grant, decimal value represented as a string.
                  sig { returns(String) }
                  def value; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
                sig { returns(String) }
                def type; end
                # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
                sig { returns(T.nilable(CustomPricingUnit)) }
                def custom_pricing_unit; end
                # The monetary amount of the credit grant. Required if `type` is `monetary`.
                sig { returns(T.nilable(::Stripe::V2::Amount)) }
                def monetary; end
                def self.inner_class_types
                  @inner_class_types = {custom_pricing_unit: CustomPricingUnit}
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
                  # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
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
                # The type of the expiry configuration. We currently support `end_of_service_period`.
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
              # The expiry configuration for the credit grant.
              sig { returns(ExpiryConfig) }
              def expiry_config; end
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
            class CreditGrantPerTenantDetails < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                class CustomPricingUnit < ::Stripe::StripeObject
                  # The Custom Pricing Unit object.
                  sig { returns(T.nilable(::Stripe::V2::Billing::CustomPricingUnit)) }
                  def custom_pricing_unit_details; end
                  # The id of the custom pricing unit.
                  sig { returns(String) }
                  def id; end
                  # The value of the credit grant, decimal value represented as a string.
                  sig { returns(String) }
                  def value; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
                sig { returns(String) }
                def type; end
                # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
                sig { returns(T.nilable(CustomPricingUnit)) }
                def custom_pricing_unit; end
                # The monetary amount of the credit grant. Required if `type` is `monetary`.
                sig { returns(T.nilable(::Stripe::V2::Amount)) }
                def monetary; end
                def self.inner_class_types
                  @inner_class_types = {custom_pricing_unit: CustomPricingUnit}
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
                  # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
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
                # The type of the expiry configuration. We currently support `end_of_service_period`.
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
              # The expiry configuration for the credit grant.
              sig { returns(ExpiryConfig) }
              def expiry_config; end
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
            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              sig { returns(String) }
              def interval; end
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              sig { returns(Integer) }
              def interval_count; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Credit grant details, present when type is CREDIT_GRANT.
            sig { returns(T.nilable(CreditGrantDetails)) }
            def credit_grant_details; end
            # Credit grant per tenant details, present when type is CREDIT_GRANT_PER_TENANT.
            sig { returns(T.nilable(CreditGrantPerTenantDetails)) }
            def credit_grant_per_tenant_details; end
            # The ID of the Recurring Credit Grant.
            sig { returns(String) }
            def recurring_credit_grant; end
            # The service cycle configuration.
            sig { returns(ServiceCycle) }
            def service_cycle; end
            # The type of the recurring credit grant.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {
                credit_grant_details: CreditGrantDetails,
                credit_grant_per_tenant_details: CreditGrantPerTenantDetails,
                service_cycle: ServiceCycle,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # License fee details, present when type is license_fee_details.
          sig { returns(T.nilable(LicenseFeeDetails)) }
          def license_fee_details; end
          # The ID of the Pricing Plan Component.
          sig { returns(String) }
          def pricing_plan_component; end
          # Rate card details, present when type is rate_card_details.
          sig { returns(T.nilable(RateCardDetails)) }
          def rate_card_details; end
          # Recurring credit grant details, present when type is recurring_credit_grant_details.
          sig { returns(T.nilable(RecurringCreditGrantDetails)) }
          def recurring_credit_grant_details; end
          # The type of component details included.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              license_fee_details: LicenseFeeDetails,
              rate_card_details: RateCardDetails,
              recurring_credit_grant_details: RecurringCreditGrantDetails,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              license_fee_details: {
                kind: :object,
                fields: {transform_quantity: {kind: :object, fields: {divide_by: :int64_string}}},
              },
            }
          end
        end
        class ServicingStatusTransitions < ::Stripe::StripeObject
          # When the servicing status transitioned to activated.
          sig { returns(T.nilable(String)) }
          def activated_at; end
          # When the servicing status transitioned to canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # When the servicing status transitioned to paused.
          sig { returns(T.nilable(String)) }
          def paused_at; end
          # When the servicing is scheduled to transition to activate.
          sig { returns(T.nilable(String)) }
          def will_activate_at; end
          # When the servicing is scheduled to cancel.
          sig { returns(T.nilable(String)) }
          def will_cancel_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Billing Cadence this subscription is billed on.
        sig { returns(String) }
        def billing_cadence; end
        # Details about why the subscription was canceled, if applicable. Includes system-generated reason.
        sig { returns(T.nilable(CancellationDetails)) }
        def cancellation_details; end
        # Current collection status of this subscription.
        sig { returns(String) }
        def collection_status; end
        # Timestamps for collection status transitions.
        sig { returns(CollectionStatusTransitions) }
        def collection_status_transitions; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Details about Discounts applied to this subscription.
        sig { returns(T.nilable(T::Array[DiscountDetail])) }
        def discount_details; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Pricing Plan for this subscription.
        sig { returns(String) }
        def pricing_plan; end
        # Pricing plan component details for the subscription, populated when pricing_plan_component_details is included.
        sig { returns(T.nilable(T::Array[PricingPlanComponentDetail])) }
        def pricing_plan_component_details; end
        # The ID of the Pricing Plan Version for this subscription.
        sig { returns(String) }
        def pricing_plan_version; end
        # Current servicing status of this subscription.
        sig { returns(String) }
        def servicing_status; end
        # Timestamps for servicing status transitions.
        sig { returns(ServicingStatusTransitions) }
        def servicing_status_transitions; end
        # The ID of the Test Clock of the associated Billing Cadence, if any.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end