# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentCreateParams < Stripe::RequestParams
        class Action < Stripe::RequestParams
          class Apply < Stripe::RequestParams
            class InvoiceDiscountRule < Stripe::RequestParams
              class PercentOff < Stripe::RequestParams
                class MaximumApplications < Stripe::RequestParams
                  # The type of maximum applications configuration.
                  attr_accessor :type

                  def initialize(type: nil)
                    @type = type
                  end
                end
                # The maximum number of times this discount can be applied for this cadence.
                attr_accessor :maximum_applications
                # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
                attr_accessor :percent_off

                def initialize(maximum_applications: nil, percent_off: nil)
                  @maximum_applications = maximum_applications
                  @percent_off = percent_off
                end
              end
              # The entity that the discount rule applies to, for example, the cadence.
              attr_accessor :applies_to
              # Type of the discount rule.
              attr_accessor :type
              # Configuration for percentage off discount.
              attr_accessor :percent_off

              def initialize(applies_to: nil, type: nil, percent_off: nil)
                @applies_to = applies_to
                @type = type
                @percent_off = percent_off
              end
            end
            # Type of the apply action details.
            attr_accessor :type
            # Details for applying a discount rule to future invoices.
            attr_accessor :invoice_discount_rule

            def initialize(type: nil, invoice_discount_rule: nil)
              @type = type
              @invoice_discount_rule = invoice_discount_rule
            end
          end

          class Deactivate < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              attr_accessor :proration_behavior

              def initialize(proration_behavior: nil)
                @proration_behavior = proration_behavior
              end
            end

            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the deactivate action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              # ID of the pricing plan subscription to deactivate.
              attr_accessor :pricing_plan_subscription

              def initialize(pricing_plan_subscription: nil)
                @pricing_plan_subscription = pricing_plan_subscription
              end
            end
            # Configuration for the billing details.
            attr_accessor :billing_details
            # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Details for deactivating a pricing plan subscription.
            attr_accessor :pricing_plan_subscription_details
            # Type of the action details.
            attr_accessor :type

            def initialize(
              billing_details: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            )
              @billing_details = billing_details
              @effective_at = effective_at
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @type = type
            end
          end

          class Modify < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              attr_accessor :proration_behavior

              def initialize(proration_behavior: nil)
                @proration_behavior = proration_behavior
              end
            end

            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the modify action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the modify action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              class ComponentConfiguration < Stripe::RequestParams
                # Quantity of the component to be used.
                attr_accessor :quantity
                # Lookup key for the pricing plan component.
                attr_accessor :lookup_key
                # ID of the pricing plan component.
                attr_accessor :pricing_plan_component

                def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil)
                  @quantity = quantity
                  @lookup_key = lookup_key
                  @pricing_plan_component = pricing_plan_component
                end
              end
              # New configurations for the components of the pricing plan.
              attr_accessor :component_configurations
              # The ID of the new Pricing Plan, if changing plans.
              attr_accessor :new_pricing_plan
              # The ID of the new Pricing Plan Version to use.
              attr_accessor :new_pricing_plan_version
              # The ID of the Pricing Plan Subscription to modify.
              attr_accessor :pricing_plan_subscription

              def initialize(
                component_configurations: nil,
                new_pricing_plan: nil,
                new_pricing_plan_version: nil,
                pricing_plan_subscription: nil
              )
                @component_configurations = component_configurations
                @new_pricing_plan = new_pricing_plan
                @new_pricing_plan_version = new_pricing_plan_version
                @pricing_plan_subscription = pricing_plan_subscription
              end
            end
            # Configuration for the billing details.
            attr_accessor :billing_details
            # When the modify action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Details for modifying a pricing plan subscription.
            attr_accessor :pricing_plan_subscription_details
            # Type of the action details.
            attr_accessor :type

            def initialize(
              billing_details: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            )
              @billing_details = billing_details
              @effective_at = effective_at
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @type = type
            end
          end

          class Remove < Stripe::RequestParams
            # Type of the remove action.
            attr_accessor :type
            # The ID of the discount rule to remove for future invoices.
            attr_accessor :invoice_discount_rule

            def initialize(type: nil, invoice_discount_rule: nil)
              @type = type
              @invoice_discount_rule = invoice_discount_rule
            end
          end

          class Subscribe < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              attr_accessor :proration_behavior

              def initialize(proration_behavior: nil)
                @proration_behavior = proration_behavior
              end
            end

            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the subscribe action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              class ComponentConfiguration < Stripe::RequestParams
                # Quantity of the component to be used.
                attr_accessor :quantity
                # Lookup key for the pricing plan component.
                attr_accessor :lookup_key
                # ID of the pricing plan component.
                attr_accessor :pricing_plan_component

                def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil)
                  @quantity = quantity
                  @lookup_key = lookup_key
                  @pricing_plan_component = pricing_plan_component
                end
              end
              # Configurations for the components of the pricing plan.
              attr_accessor :component_configurations
              # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_accessor :metadata
              # ID of the Pricing Plan to subscribe to.
              attr_accessor :pricing_plan
              # Version of the Pricing Plan to use.
              attr_accessor :pricing_plan_version

              def initialize(
                component_configurations: nil,
                metadata: nil,
                pricing_plan: nil,
                pricing_plan_version: nil
              )
                @component_configurations = component_configurations
                @metadata = metadata
                @pricing_plan = pricing_plan
                @pricing_plan_version = pricing_plan_version
              end
            end

            class V1SubscriptionDetails < Stripe::RequestParams
              class Item < Stripe::RequestParams
                # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
                attr_accessor :metadata
                # The ID of the price object.
                attr_accessor :price
                # Quantity for this item. If not provided, will default to 1.
                attr_accessor :quantity

                def initialize(metadata: nil, price: nil, quantity: nil)
                  @metadata = metadata
                  @price = price
                  @quantity = quantity
                end
              end
              # The subscription’s description, meant to be displayable to the customer.
              # Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
              attr_accessor :description
              # A list of up to 20 subscription items, each with an attached price.
              attr_accessor :items
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_accessor :metadata

              def initialize(description: nil, items: nil, metadata: nil)
                @description = description
                @items = items
                @metadata = metadata
              end
            end
            # Configuration for the billing details. If not specified, see the default behavior for individual attributes.
            attr_accessor :billing_details
            # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Type of the action details.
            attr_accessor :type
            # Details for subscribing to a pricing plan.
            attr_accessor :pricing_plan_subscription_details
            # Details for subscribing to a v1 subscription.
            attr_accessor :v1_subscription_details

            def initialize(
              billing_details: nil,
              effective_at: nil,
              type: nil,
              pricing_plan_subscription_details: nil,
              v1_subscription_details: nil
            )
              @billing_details = billing_details
              @effective_at = effective_at
              @type = type
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @v1_subscription_details = v1_subscription_details
            end
          end
          # Type of the Billing Intent action.
          attr_accessor :type
          # Details for an apply action.
          attr_accessor :apply
          # Details for a deactivate action.
          attr_accessor :deactivate
          # Details for a modify action.
          attr_accessor :modify
          # Details for a remove action.
          attr_accessor :remove
          # Details for a subscribe action.
          attr_accessor :subscribe

          def initialize(
            type: nil,
            apply: nil,
            deactivate: nil,
            modify: nil,
            remove: nil,
            subscribe: nil
          )
            @type = type
            @apply = apply
            @deactivate = deactivate
            @modify = modify
            @remove = remove
            @subscribe = subscribe
          end
        end
        # Actions to be performed by this Billing Intent.
        attr_accessor :actions
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_accessor :currency
        # ID of an existing Cadence to use.
        attr_accessor :cadence

        def initialize(actions: nil, currency: nil, cadence: nil)
          @actions = actions
          @currency = currency
          @cadence = cadence
        end
      end
    end
  end
end
