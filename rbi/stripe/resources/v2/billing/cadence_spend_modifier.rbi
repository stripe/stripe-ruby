# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Spend Modifier changes how spend is computed when billing for specific cadence.
      class CadenceSpendModifier < APIResource
        class MaxBillingPeriodSpend < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            class CustomPricingUnit < ::Stripe::StripeObject
              # The decimal value of custom pricing units, represented as a string.
              sig { returns(String) }
              def value; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit amount. Present if type is `custom_pricing_unit`.
            sig { returns(T.nilable(CustomPricingUnit)) }
            def custom_pricing_unit; end
            # The type of the spend modifier amount.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {custom_pricing_unit: CustomPricingUnit}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CustomPricingUnitOverageRate < ::Stripe::StripeObject
            # ID of the custom pricing unit overage rate.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The billing alert associated with the maximum spend threshold.
          sig { returns(String) }
          def alert; end
          # The maximum amount of invoice spend.
          sig { returns(Amount) }
          def amount; end
          # The configuration for the overage rate for the custom pricing unit.
          sig { returns(CustomPricingUnitOverageRate) }
          def custom_pricing_unit_overage_rate; end
          # The timestamp from which this spend modifier is effective.
          sig { returns(String) }
          def effective_from; end
          # The timestamp until which this spend modifier is effective. If not set, the modifier is effective indefinitely.
          sig { returns(T.nilable(String)) }
          def effective_until; end
          def self.inner_class_types
            @inner_class_types = {
              amount: Amount,
              custom_pricing_unit_overage_rate: CustomPricingUnitOverageRate,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Billing Cadence this spend modifier is associated with.
        sig { returns(String) }
        def billing_cadence; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The type of the spend modifier.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Max invoice spend details. Present if type is `max_billing_period_spend`.
        sig { returns(T.nilable(MaxBillingPeriodSpend)) }
        def max_billing_period_spend; end
      end
    end
  end
end