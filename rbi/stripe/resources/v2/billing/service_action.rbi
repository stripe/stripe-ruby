# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceAction < APIResource
        class CreditGrant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The Custom Pricing Unit object.
              sig { returns(T.nilable(Stripe::V2::Billing::CustomPricingUnit)) }
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
            sig { returns(T.nilable(Stripe::V2::Amount)) }
            def monetary; end
            def self.inner_class_types
              @inner_class_types = {custom_pricing_unit: CustomPricingUnit}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
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
          class ExpiryConfig < Stripe::StripeObject
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
          # The category of the credit grant.
          sig { returns(T.nilable(String)) }
          def category; end
          # The expiry configuration for the credit grant.
          sig { returns(ExpiryConfig) }
          def expiry_config; end
          # A descriptive name shown in dashboard.
          sig { returns(String) }
          def name; end
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
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
        class CreditGrantPerTenant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The Custom Pricing Unit object.
              sig { returns(T.nilable(Stripe::V2::Billing::CustomPricingUnit)) }
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
            sig { returns(T.nilable(Stripe::V2::Amount)) }
            def monetary; end
            def self.inner_class_types
              @inner_class_types = {custom_pricing_unit: CustomPricingUnit}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
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
          class ExpiryConfig < Stripe::StripeObject
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
          # The category of the credit grant.
          sig { returns(T.nilable(String)) }
          def category; end
          # The expiry configuration for the credit grant.
          sig { returns(ExpiryConfig) }
          def expiry_config; end
          # Customer-facing name for the credit grant.
          sig { returns(String) }
          def name; end
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
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
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # An internal key you can use to search for this service action.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The interval for assessing service.
        sig { returns(String) }
        def service_interval; end
        # The length of the interval for assessing service.
        sig { returns(Integer) }
        def service_interval_count; end
        # The type of the service action.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Details for the credit grant. Provided only if `type` is "credit_grant".
        sig { returns(T.nilable(CreditGrant)) }
        def credit_grant; end
        # Details for the credit grant per tenant. Provided only if `type` is "credit_grant_per_tenant".
        sig { returns(T.nilable(CreditGrantPerTenant)) }
        def credit_grant_per_tenant; end
      end
    end
  end
end