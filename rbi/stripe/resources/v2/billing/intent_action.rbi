# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class IntentAction < APIResource
        class Apply < Stripe::StripeObject
          class InvoiceDiscountRule < Stripe::StripeObject
            class PercentOff < Stripe::StripeObject
              class MaximumApplications < Stripe::StripeObject
                # The type of maximum applications configuration.
                sig { returns(String) }
                def type; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The maximum number of times this discount can be applied for this Billing Cadence.
              sig { returns(MaximumApplications) }
              def maximum_applications; end
              # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
              sig { returns(String) }
              def percent_off; end
              def self.inner_class_types
                @inner_class_types = {maximum_applications: MaximumApplications}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The entity that the discount rule applies to, for example, the Billing Cadence.
            sig { returns(String) }
            def applies_to; end
            # The ID of the created discount rule. This is only present once the Billing Intent is committed and the discount rule is created.
            sig { returns(T.nilable(String)) }
            def invoice_discount_rule; end
            # Type of the discount rule.
            sig { returns(String) }
            def type; end
            # Configuration for percentage off discount.
            sig { returns(T.nilable(PercentOff)) }
            def percent_off; end
            def self.inner_class_types
              @inner_class_types = {percent_off: PercentOff}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Type of the apply action details.
          sig { returns(String) }
          def type; end
          # Details for applying a discount rule to future invoices.
          sig { returns(T.nilable(InvoiceDiscountRule)) }
          def invoice_discount_rule; end
          def self.inner_class_types
            @inner_class_types = {invoice_discount_rule: InvoiceDiscountRule}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Deactivate < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            def proration_behavior; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            def timestamp; end
            # When the deactivate action will take effect.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            # ID of the Pricing Plan Subscription to deactivate.
            sig { returns(String) }
            def pricing_plan_subscription; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Configuration for the billing details.
          sig { returns(BillingDetails) }
          def billing_details; end
          # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          def effective_at; end
          # Type of the action details.
          sig { returns(String) }
          def type; end
          # Details for deactivating a Pricing Plan Subscription.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          def pricing_plan_subscription_details; end
          def self.inner_class_types
            @inner_class_types = {
              billing_details: BillingDetails,
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Modify < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            def proration_behavior; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the modify action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            def timestamp; end
            # When the modify action will take effect.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            class ComponentConfiguration < Stripe::StripeObject
              # Quantity of the component to be used.
              sig { returns(T.nilable(Integer)) }
              def quantity; end
              # Lookup key for the pricing plan component.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              # ID of the pricing plan component.
              sig { returns(T.nilable(String)) }
              def pricing_plan_component; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # New configurations for the components of the Pricing Plan.
            sig { returns(T::Array[ComponentConfiguration]) }
            def component_configurations; end
            # ID of the new Pricing Plan.
            sig { returns(String) }
            def new_pricing_plan; end
            # Version of the Pricing Plan to use.
            sig { returns(String) }
            def new_pricing_plan_version; end
            # ID of the Pricing Plan Subscription to modify.
            sig { returns(String) }
            def pricing_plan_subscription; end
            def self.inner_class_types
              @inner_class_types = {component_configurations: ComponentConfiguration}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Configuration for the billing details.
          sig { returns(BillingDetails) }
          def billing_details; end
          # When the modify action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          def effective_at; end
          # Type of the action details.
          sig { returns(String) }
          def type; end
          # Details for modifying a Pricing Plan Subscription.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          def pricing_plan_subscription_details; end
          def self.inner_class_types
            @inner_class_types = {
              billing_details: BillingDetails,
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Remove < Stripe::StripeObject
          # Type of the remove action.
          sig { returns(String) }
          def type; end
          # The ID of the discount rule to remove for future invoices.
          sig { returns(T.nilable(String)) }
          def invoice_discount_rule; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Subscribe < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            def proration_behavior; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            def timestamp; end
            # When the subscribe action will take effect.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            class ComponentConfiguration < Stripe::StripeObject
              # Quantity of the component to be used.
              sig { returns(T.nilable(Integer)) }
              def quantity; end
              # Lookup key for the pricing plan component.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              # ID of the pricing plan component.
              sig { returns(T.nilable(String)) }
              def pricing_plan_component; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Configurations for the components of the Pricing Plan.
            sig { returns(T::Array[ComponentConfiguration]) }
            def component_configurations; end
            # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            # ID of the Pricing Plan to subscribe to.
            sig { returns(String) }
            def pricing_plan; end
            # ID of the created Pricing Plan Subscription. This is only present once the Billing Intent is committed and the Pricing Plan Subscription is created.
            sig { returns(T.nilable(String)) }
            def pricing_plan_subscription; end
            # Version of the Pricing Plan to use.
            sig { returns(String) }
            def pricing_plan_version; end
            def self.inner_class_types
              @inner_class_types = {component_configurations: ComponentConfiguration}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class V1SubscriptionDetails < Stripe::StripeObject
            class Item < Stripe::StripeObject
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              def metadata; end
              # The ID of the price object.
              sig { returns(String) }
              def price; end
              # Quantity for this item. If not provided, will default to 1.
              sig { returns(T.nilable(Integer)) }
              def quantity; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The subscription’s description, meant to be displayable to the customer.
            # Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
            sig { returns(T.nilable(String)) }
            def description; end
            # A list of up to 20 subscription items, each with an attached price.
            sig { returns(T::Array[Item]) }
            def items; end
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            def self.inner_class_types
              @inner_class_types = {items: Item}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Configuration for the billing details. If not specified, see the default behavior for individual attributes.
          sig { returns(BillingDetails) }
          def billing_details; end
          # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          def effective_at; end
          # Type of the action details.
          sig { returns(String) }
          def type; end
          # Details for subscribing to a Pricing Plan.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          def pricing_plan_subscription_details; end
          # Details for subscribing to a V1 subscription.
          sig { returns(T.nilable(V1SubscriptionDetails)) }
          def v1_subscription_details; end
          def self.inner_class_types
            @inner_class_types = {
              billing_details: BillingDetails,
              effective_at: EffectiveAt,
              pricing_plan_subscription_details: PricingPlanSubscriptionDetails,
              v1_subscription_details: V1SubscriptionDetails,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Type of the Billing Intent Action.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Details for an apply action.
        sig { returns(T.nilable(Apply)) }
        def apply; end
        # Details for a deactivate action.
        sig { returns(T.nilable(Deactivate)) }
        def deactivate; end
        # Details for a modify action.
        sig { returns(T.nilable(Modify)) }
        def modify; end
        # Details for a remove action.
        sig { returns(T.nilable(Remove)) }
        def remove; end
        # Details for a subscribe action.
        sig { returns(T.nilable(Subscribe)) }
        def subscribe; end
      end
    end
  end
end