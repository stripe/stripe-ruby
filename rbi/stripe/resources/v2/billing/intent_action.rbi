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
                attr_reader :type
              end
              # The maximum number of times this discount can be applied for this Billing Cadence.
              sig { returns(MaximumApplications) }
              attr_reader :maximum_applications
              # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
              sig { returns(String) }
              attr_reader :percent_off
            end
            # The entity that the discount rule applies to, for example, the Billing Cadence.
            sig { returns(String) }
            attr_reader :applies_to
            # The ID of the created discount rule. This is only present once the Billing Intent is committed and the discount rule is created.
            sig { returns(T.nilable(String)) }
            attr_reader :invoice_discount_rule
            # Type of the discount rule.
            sig { returns(String) }
            attr_reader :type
            # Configuration for percentage off discount.
            sig { returns(T.nilable(PercentOff)) }
            attr_reader :percent_off
          end
          # Type of the apply action details.
          sig { returns(String) }
          attr_reader :type
          # Details for applying a discount rule to future invoices.
          sig { returns(T.nilable(InvoiceDiscountRule)) }
          attr_reader :invoice_discount_rule
        end
        class Deactivate < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            attr_reader :proration_behavior
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp
            # When the deactivate action will take effect.
            sig { returns(String) }
            attr_reader :type
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            # ID of the Pricing Plan Subscription to deactivate.
            sig { returns(String) }
            attr_reader :pricing_plan_subscription
          end
          # Configuration for the billing details.
          sig { returns(BillingDetails) }
          attr_reader :billing_details
          # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          attr_reader :effective_at
          # Type of the action details.
          sig { returns(String) }
          attr_reader :type
          # Details for deactivating a Pricing Plan Subscription.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          attr_reader :pricing_plan_subscription_details
        end
        class Modify < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            attr_reader :proration_behavior
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the modify action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp
            # When the modify action will take effect.
            sig { returns(String) }
            attr_reader :type
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            class ComponentConfiguration < Stripe::StripeObject
              # Quantity of the component to be used.
              sig { returns(T.nilable(Integer)) }
              attr_reader :quantity
              # Lookup key for the pricing plan component.
              sig { returns(T.nilable(String)) }
              attr_reader :lookup_key
              # ID of the pricing plan component.
              sig { returns(T.nilable(String)) }
              attr_reader :pricing_plan_component
            end
            # New configurations for the components of the Pricing Plan.
            sig { returns(T::Array[ComponentConfiguration]) }
            attr_reader :component_configurations
            # ID of the new Pricing Plan.
            sig { returns(String) }
            attr_reader :new_pricing_plan
            # Version of the Pricing Plan to use.
            sig { returns(String) }
            attr_reader :new_pricing_plan_version
            # ID of the Pricing Plan Subscription to modify.
            sig { returns(String) }
            attr_reader :pricing_plan_subscription
          end
          # Configuration for the billing details.
          sig { returns(BillingDetails) }
          attr_reader :billing_details
          # When the modify action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          attr_reader :effective_at
          # Type of the action details.
          sig { returns(String) }
          attr_reader :type
          # Details for modifying a Pricing Plan Subscription.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          attr_reader :pricing_plan_subscription_details
        end
        class Remove < Stripe::StripeObject
          # Type of the remove action.
          sig { returns(String) }
          attr_reader :type
          # The ID of the discount rule to remove for future invoices.
          sig { returns(T.nilable(String)) }
          attr_reader :invoice_discount_rule
        end
        class Subscribe < Stripe::StripeObject
          class BillingDetails < Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            sig { returns(T.nilable(String)) }
            attr_reader :proration_behavior
          end
          class EffectiveAt < Stripe::StripeObject
            # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp
            # When the subscribe action will take effect.
            sig { returns(String) }
            attr_reader :type
          end
          class PricingPlanSubscriptionDetails < Stripe::StripeObject
            class ComponentConfiguration < Stripe::StripeObject
              # Quantity of the component to be used.
              sig { returns(T.nilable(Integer)) }
              attr_reader :quantity
              # Lookup key for the pricing plan component.
              sig { returns(T.nilable(String)) }
              attr_reader :lookup_key
              # ID of the pricing plan component.
              sig { returns(T.nilable(String)) }
              attr_reader :pricing_plan_component
            end
            # Configurations for the components of the Pricing Plan.
            sig { returns(T::Array[ComponentConfiguration]) }
            attr_reader :component_configurations
            # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_reader :metadata
            # ID of the Pricing Plan to subscribe to.
            sig { returns(String) }
            attr_reader :pricing_plan
            # ID of the created Pricing Plan Subscription. This is only present once the Billing Intent is committed and the Pricing Plan Subscription is created.
            sig { returns(T.nilable(String)) }
            attr_reader :pricing_plan_subscription
            # Version of the Pricing Plan to use.
            sig { returns(String) }
            attr_reader :pricing_plan_version
          end
          class V1SubscriptionDetails < Stripe::StripeObject
            class Item < Stripe::StripeObject
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              attr_reader :metadata
              # The ID of the price object.
              sig { returns(String) }
              attr_reader :price
              # Quantity for this item. If not provided, will default to 1.
              sig { returns(T.nilable(Integer)) }
              attr_reader :quantity
            end
            # The subscription’s description, meant to be displayable to the customer.
            # Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
            sig { returns(T.nilable(String)) }
            attr_reader :description
            # A list of up to 20 subscription items, each with an attached price.
            sig { returns(T::Array[Item]) }
            attr_reader :items
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_reader :metadata
          end
          # Configuration for the billing details. If not specified, see the default behavior for individual attributes.
          sig { returns(BillingDetails) }
          attr_reader :billing_details
          # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
          sig { returns(EffectiveAt) }
          attr_reader :effective_at
          # Type of the action details.
          sig { returns(String) }
          attr_reader :type
          # Details for subscribing to a Pricing Plan.
          sig { returns(T.nilable(PricingPlanSubscriptionDetails)) }
          attr_reader :pricing_plan_subscription_details
          # Details for subscribing to a V1 subscription.
          sig { returns(T.nilable(V1SubscriptionDetails)) }
          attr_reader :v1_subscription_details
        end
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Type of the Billing Intent Action.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # Details for an apply action.
        sig { returns(T.nilable(Apply)) }
        attr_reader :apply
        # Details for a deactivate action.
        sig { returns(T.nilable(Deactivate)) }
        attr_reader :deactivate
        # Details for a modify action.
        sig { returns(T.nilable(Modify)) }
        attr_reader :modify
        # Details for a remove action.
        sig { returns(T.nilable(Remove)) }
        attr_reader :remove
        # Details for a subscribe action.
        sig { returns(T.nilable(Subscribe)) }
        attr_reader :subscribe
      end
    end
  end
end