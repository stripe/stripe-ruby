# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Spend Modifier changes how spend is computed when billing for specific cadence.
      class CadenceSpendModifier < APIResource
        OBJECT_NAME = "v2.billing.cadence_spend_modifier"
        def self.object_name
          "v2.billing.cadence_spend_modifier"
        end

        class MaxBillingPeriodSpend < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            class CustomPricingUnit < ::Stripe::StripeObject
              # The decimal value of custom pricing units, represented as a string.
              attr_reader :value

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit amount. Present if type is `custom_pricing_unit`.
            attr_reader :custom_pricing_unit
            # The type of the spend modifier amount.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { custom_pricing_unit: CustomPricingUnit }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CustomPricingUnitOverageRate < ::Stripe::StripeObject
            # ID of the custom pricing unit overage rate.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The billing alert associated with the maximum spend threshold.
          attr_reader :alert
          # The maximum amount of invoice spend.
          attr_reader :amount
          # The configuration for the overage rate for the custom pricing unit.
          attr_reader :custom_pricing_unit_overage_rate
          # The timestamp from which this spend modifier is effective.
          attr_reader :effective_from
          # The timestamp until which this spend modifier is effective. If not set, the modifier is effective indefinitely.
          attr_reader :effective_until

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
        attr_reader :billing_cadence
        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The type of the spend modifier.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Max invoice spend details. Present if type is `max_billing_period_spend`.
        attr_reader :max_billing_period_spend

        def self.inner_class_types
          @inner_class_types = { max_billing_period_spend: MaxBillingPeriodSpend }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
