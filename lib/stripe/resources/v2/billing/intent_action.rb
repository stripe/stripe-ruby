# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentAction < APIResource
        OBJECT_NAME = "v2.billing.intent_action"
        def self.object_name
          "v2.billing.intent_action"
        end

        class Apply < ::Stripe::StripeObject
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
              # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
              attr_reader :percent_off

              def self.inner_class_types
                @inner_class_types = { maximum_applications: MaximumApplications }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The entity that the discount rule applies to, for example, the Billing Cadence.
            attr_reader :applies_to
            # The ID of the created discount rule. This is only present once the Billing Intent is committed and the discount rule is created.
            attr_reader :invoice_discount_rule
            # Type of the discount rule.
            attr_reader :type
            # Configuration for percentage off discount.
            attr_reader :percent_off

            def self.inner_class_types
              @inner_class_types = { percent_off: PercentOff }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Type of the apply action details.
          attr_reader :type
          # Details for applying a discount rule to future invoices.
          attr_reader :invoice_discount_rule

          def self.inner_class_types
            @inner_class_types = { invoice_discount_rule: InvoiceDiscountRule }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Deactivate < ::Stripe::StripeObject
          class BillingDetails < ::Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            attr_reader :proration_behavior

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the deactivate action will take effect.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PricingPlanSubscriptionDetails < ::Stripe::StripeObject
            # ID of the Pricing Plan Subscription to deactivate.
            attr_reader :pricing_plan_subscription

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Configuration for the billing details.
          attr_reader :billing_details
          # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Type of the action details.
          attr_reader :type
          # Details for deactivating a Pricing Plan Subscription.
          attr_reader :pricing_plan_subscription_details

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

        class Modify < ::Stripe::StripeObject
          class BillingDetails < ::Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            attr_reader :proration_behavior

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the modify action will take effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the modify action will take effect.
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
              # Quantity of the component to be used.
              attr_reader :quantity
              # Lookup key for the pricing plan component.
              attr_reader :lookup_key
              # ID of the pricing plan component.
              attr_reader :pricing_plan_component

              def self.inner_class_types
                @inner_class_types = {}
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
            # ID of the Pricing Plan Subscription to modify.
            attr_reader :pricing_plan_subscription

            def self.inner_class_types
              @inner_class_types = { component_configurations: ComponentConfiguration }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Configuration for the billing details.
          attr_reader :billing_details
          # When the modify action will take effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Type of the action details.
          attr_reader :type
          # Details for modifying a Pricing Plan Subscription.
          attr_reader :pricing_plan_subscription_details

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

        class Remove < ::Stripe::StripeObject
          # Type of the remove action.
          attr_reader :type
          # The ID of the discount rule to remove for future invoices.
          attr_reader :invoice_discount_rule

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Subscribe < ::Stripe::StripeObject
          class BillingDetails < ::Stripe::StripeObject
            # This controls the proration adjustment for the partial servicing period.
            attr_reader :proration_behavior

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EffectiveAt < ::Stripe::StripeObject
            # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
            attr_reader :timestamp
            # When the subscribe action will take effect.
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
              # Quantity of the component to be used.
              attr_reader :quantity
              # Lookup key for the pricing plan component.
              attr_reader :lookup_key
              # ID of the pricing plan component.
              attr_reader :pricing_plan_component

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Configurations for the components of the Pricing Plan.
            attr_reader :component_configurations
            # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            attr_reader :metadata
            # ID of the Pricing Plan to subscribe to.
            attr_reader :pricing_plan
            # ID of the created Pricing Plan Subscription. This is only present once the Billing Intent is committed and the Pricing Plan Subscription is created.
            attr_reader :pricing_plan_subscription
            # Version of the Pricing Plan to use.
            attr_reader :pricing_plan_version

            def self.inner_class_types
              @inner_class_types = { component_configurations: ComponentConfiguration }
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
              # Quantity for this item. If not provided, will default to 1.
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
          # Configuration for the billing details. If not specified, see the default behavior for individual attributes.
          attr_reader :billing_details
          # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
          attr_reader :effective_at
          # Type of the action details.
          attr_reader :type
          # Details for subscribing to a Pricing Plan.
          attr_reader :pricing_plan_subscription_details
          # Details for subscribing to a V1 subscription.
          attr_reader :v1_subscription_details

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
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Type of the Billing Intent Action.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details for an apply action.
        attr_reader :apply
        # Details for a deactivate action.
        attr_reader :deactivate
        # Details for a modify action.
        attr_reader :modify
        # Details for a remove action.
        attr_reader :remove
        # Details for a subscribe action.
        attr_reader :subscribe

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
      end
    end
  end
end
