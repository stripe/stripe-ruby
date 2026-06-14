# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Billing Intent Action represents a specific operation within a Billing Intent, such as subscribing to a Pricing Plan,
      # modifying a subscription's quantity, or deactivating service. Each action has a specific type and associated details that
      # define what change will be made when the Intent is committed.
      class IntentAction < APIResource
        OBJECT_NAME = "v2.billing.intent_action"
        def self.object_name
          "v2.billing.intent_action"
        end

        class Apply < ::Stripe::StripeObject
          class Discount < ::Stripe::StripeObject
            # The ID of the Coupon applied.
            attr_reader :coupon
            # The ID of the created Discount.
            attr_reader :discount
            # The ID of the PromotionCode applied.
            attr_reader :promotion_code
            # Type of the discount.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the apply action takes effect. Only present if type is timestamp. Only allowed for discount actions.
            attr_reader :timestamp
            # When the apply action takes effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class InvoiceDiscountRule < ::Stripe::StripeObject
            class PercentOff < ::Stripe::StripeObject
              class MaximumApplications < ::Stripe::StripeObject
                # The type of maximum applications configuration.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The maximum number of times this discount can be applied for this Billing Cadence.
              attr_reader :maximum_applications
              # Percent that is taken off the amount. For example, a percent_off of 50.0 reduces a 100 USD amount to 50 USD.
              attr_reader :percent_off

              def self.inner_class_types
                @inner_class_types = { maximum_applications: MaximumApplications }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { percent_off: :decimal_string }
              end
            end
            # The entity that the discount rule applies to, for example, the Billing Cadence.
            attr_reader :applies_to
            # The ID of the created discount rule. This is only present once the Billing Intent is committed and the discount rule is created.
            attr_reader :invoice_discount_rule
            # Configuration for percentage off discount.
            attr_reader :percent_off
            # Type of the discount rule.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { percent_off: PercentOff }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                percent_off: { kind: :object, fields: { percent_off: :decimal_string } },
              }
            end
          end

          class SpendModifierRule < ::Stripe::StripeObject
            class MaxBillingPeriodSpend < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                class CustomPricingUnit < ::Stripe::StripeObject
                  # The id of the custom pricing unit.
                  attr_reader :id
                  # The value of the custom pricing unit.
                  attr_reader :value

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The custom pricing unit amount.
                attr_reader :custom_pricing_unit
                # The type of the amount.
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
              # The maximum amount allowed for the billing period.
              attr_reader :amount
              # The configuration for the overage rate for the custom pricing unit.
              attr_reader :custom_pricing_unit_overage_rate

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
            # What the spend modifier applies to.
            attr_reader :applies_to
            # The ID of the spend modifier.
            attr_reader :id
            # Details for max billing period spend modifier. Only present if type is max_billing_period_spend.
            attr_reader :max_billing_period_spend
            # Type of the spend modifier.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { max_billing_period_spend: MaxBillingPeriodSpend }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details for applying a discount.
          attr_reader :discount
          # When the apply action takes effect. If not specified, defaults to on_reserve.
          attr_reader :effective_at
          # Details for applying a discount rule to future invoices.
          attr_reader :invoice_discount_rule
          # Details for applying a spend modifier rule. Only present if type is spend_modifier_rule.
          attr_reader :spend_modifier_rule
          # Type of the apply action details.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              discount: Discount,
              effective_at: EffectiveAt,
              invoice_discount_rule: InvoiceDiscountRule,
              spend_modifier_rule: SpendModifierRule,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              invoice_discount_rule: {
                kind: :object,
                fields: { percent_off: { kind: :object, fields: { percent_off: :decimal_string } } },
              },
            }
          end
        end

        class Deactivate < ::Stripe::StripeObject
          class CancellationDetails < ::Stripe::StripeObject
            # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
            attr_reader :comment
            # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
            attr_reader :feedback

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the deactivate action takes effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the deactivate action takes effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PricingPlanSubscriptionDetails < ::Stripe::StripeObject
            class Overrides < ::Stripe::StripeObject
              class PartialPeriodBehavior < ::Stripe::StripeObject
                class LicenseFee < ::Stripe::StripeObject
                  # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is deactivating. If not specified, defaults to none.
                  attr_reader :credit_proration_behavior

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Overrides the behavior for license fee components when the action takes effect during the service period.
                attr_reader :license_fee
                # The type of behavior to override.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { license_fee: LicenseFee }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Configurations for behaviors when the action takes effect during the service period.
              attr_reader :partial_period_behaviors

              def self.inner_class_types
                @inner_class_types = { partial_period_behaviors: PartialPeriodBehavior }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Configurations for overriding behaviors related to the subscription.
            attr_reader :overrides
            # ID of the Pricing Plan Subscription to deactivate.
            attr_reader :pricing_plan_subscription

            def self.inner_class_types
              @inner_class_types = { overrides: Overrides }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about why the cancellation was requested by the user.
          attr_reader :cancellation_details
          # Allows users to override the collect at behavior.
          attr_reader :collect_at
          # When the deactivate action takes effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Details for deactivating a Pricing Plan Subscription.
          attr_reader :pricing_plan_subscription_details
          # Type of the action details.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              cancellation_details: CancellationDetails,
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Modify < ::Stripe::StripeObject
          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the modify action takes effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the modify action takes effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PricingPlanSubscriptionDetails < ::Stripe::StripeObject
            class ComponentConfiguration < ::Stripe::StripeObject
              # Lookup key for the pricing plan component.
              attr_reader :lookup_key
              # ID of the pricing plan component.
              attr_reader :pricing_plan_component
              # Quantity of the component to be used.
              attr_reader :quantity

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Overrides < ::Stripe::StripeObject
              class PartialPeriodBehavior < ::Stripe::StripeObject
                class LicenseFee < ::Stripe::StripeObject
                  # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                  attr_reader :credit_proration_behavior
                  # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                  attr_reader :debit_proration_behavior

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class RecurringCreditGrant < ::Stripe::StripeObject
                  # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                  attr_reader :create_behavior

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Overrides the behavior for license fee components when the action takes effect during the service period.
                attr_reader :license_fee
                # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                attr_reader :recurring_credit_grant
                # The type of behavior to override.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {
                    license_fee: LicenseFee,
                    recurring_credit_grant: RecurringCreditGrant,
                  }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Configurations for behaviors when the action takes effect during the service period.
              attr_reader :partial_period_behaviors

              def self.inner_class_types
                @inner_class_types = { partial_period_behaviors: PartialPeriodBehavior }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # New configurations for the components of the Pricing Plan.
            attr_reader :component_configurations
            # ID of the new Pricing Plan.
            attr_reader :new_pricing_plan
            # Version of the Pricing Plan to use.
            attr_reader :new_pricing_plan_version
            # Configurations for overriding behaviors related to the subscription.
            attr_reader :overrides
            # ID of the Pricing Plan Subscription to modify.
            attr_reader :pricing_plan_subscription

            def self.inner_class_types
              @inner_class_types = {
                component_configurations: ComponentConfiguration,
                overrides: Overrides,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Allows users to override the collect at behavior.
          attr_reader :collect_at
          # When the modify action takes effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Details for modifying a Pricing Plan Subscription.
          attr_reader :pricing_plan_subscription_details
          # Type of the action details.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Remove < ::Stripe::StripeObject
          class EffectiveAt < ::Stripe::StripeObject
            # When the remove action takes effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # When the remove action takes effect. If not specified, defaults to on_reserve.
          attr_reader :effective_at
          # The ID of the discount rule to remove for future invoices.
          attr_reader :invoice_discount_rule
          # The ID of the spend modifier rule removed.
          attr_reader :spend_modifier_rule
          # Type of the remove action.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { effective_at: EffectiveAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Subscribe < ::Stripe::StripeObject
          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the subscribe action takes effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the subscribe action takes effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PricingPlanSubscriptionDetails < ::Stripe::StripeObject
            class ComponentConfiguration < ::Stripe::StripeObject
              # Lookup key for the pricing plan component.
              attr_reader :lookup_key
              # ID of the pricing plan component.
              attr_reader :pricing_plan_component
              # Quantity of the component to be used.
              attr_reader :quantity

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Overrides < ::Stripe::StripeObject
              class PartialPeriodBehavior < ::Stripe::StripeObject
                class LicenseFee < ::Stripe::StripeObject
                  # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is subscribing. If not specified, defaults to prorated.
                  attr_reader :debit_proration_behavior

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class RecurringCreditGrant < ::Stripe::StripeObject
                  # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                  attr_reader :create_behavior

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Overrides the behavior for license fee components when the action takes effect during the service period.
                attr_reader :license_fee
                # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                attr_reader :recurring_credit_grant
                # The type of behavior to override.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {
                    license_fee: LicenseFee,
                    recurring_credit_grant: RecurringCreditGrant,
                  }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Configurations for behaviors when the action takes effect during the service period.
              attr_reader :partial_period_behaviors

              def self.inner_class_types
                @inner_class_types = { partial_period_behaviors: PartialPeriodBehavior }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Configurations for the components of the Pricing Plan.
            attr_reader :component_configurations
            # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            attr_reader :metadata
            # Configurations for overriding behaviors related to the subscription.
            attr_reader :overrides
            # ID of the Pricing Plan to subscribe to.
            attr_reader :pricing_plan
            # ID of the created Pricing Plan Subscription. This is only present once the Billing Intent is committed and the Pricing Plan Subscription is created.
            attr_reader :pricing_plan_subscription
            # Version of the Pricing Plan to use.
            attr_reader :pricing_plan_version

            def self.inner_class_types
              @inner_class_types = {
                component_configurations: ComponentConfiguration,
                overrides: Overrides,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class V1SubscriptionDetails < ::Stripe::StripeObject
            class Item < ::Stripe::StripeObject
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_reader :metadata
              # The ID of the price object.
              attr_reader :price
              # Quantity for this item. If not provided, defaults to 1.
              attr_reader :quantity

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The subscription’s description, meant to be displayable to the customer.
            # Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
            attr_reader :description
            # A list of up to 20 subscription items, each with an attached price.
            attr_reader :items
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            attr_reader :metadata

            def self.inner_class_types
              @inner_class_types = { items: Item }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Allows users to override the collect at behavior.
          attr_reader :collect_at
          # When the subscribe action takes effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Details for subscribing to a Pricing Plan.
          attr_reader :pricing_plan_subscription_details
          # Type of the action details.
          attr_reader :type
          # Details for subscribing to a V1 subscription.
          attr_reader :v1_subscription_details

          def self.inner_class_types
            @inner_class_types = {
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
              v1_subscription_details: V1SubscriptionDetails,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details for an apply action.
        attr_reader :apply
        # Time at which the object was created.
        attr_reader :created
        # Details for a deactivate action.
        attr_reader :deactivate
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details for a modify action.
        attr_reader :modify
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Details for a remove action.
        attr_reader :remove
        # Details for a subscribe action.
        attr_reader :subscribe
        # Type of the Billing Intent Action.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            apply: Apply,
            deactivate: Deactivate,
            modify: Modify,
            remove: Remove,
            subscribe: Subscribe,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            apply: {
              kind: :object,
              fields: {
                invoice_discount_rule: {
                  kind: :object,
                  fields: { percent_off: { kind: :object, fields: { percent_off: :decimal_string } } },
                },
              },
            },
          }
        end
      end
    end
  end
end
