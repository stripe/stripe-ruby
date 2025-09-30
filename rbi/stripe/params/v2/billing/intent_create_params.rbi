# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig { params(type: String).void }
                  def initialize(type: nil); end
                end
                # The maximum number of times this discount can be applied for this cadence.
                sig {
                  returns(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications)
                 }
                def maximum_applications; end
                sig {
                  params(_maximum_applications: V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications).returns(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications)
                 }
                def maximum_applications=(_maximum_applications); end
                # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
                sig { returns(String) }
                def percent_off; end
                sig { params(_percent_off: String).returns(String) }
                def percent_off=(_percent_off); end
                sig {
                  params(maximum_applications: V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications, percent_off: String).void
                 }
                def initialize(maximum_applications: nil, percent_off: nil); end
              end
              # The entity that the discount rule applies to, for example, the cadence.
              sig { returns(String) }
              def applies_to; end
              sig { params(_applies_to: String).returns(String) }
              def applies_to=(_applies_to); end
              # Type of the discount rule.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              # Configuration for percentage off discount.
              sig {
                returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff))
               }
              def percent_off; end
              sig {
                params(_percent_off: T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff))
               }
              def percent_off=(_percent_off); end
              sig {
                params(applies_to: String, type: String, percent_off: T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff)).void
               }
              def initialize(applies_to: nil, type: nil, percent_off: nil); end
            end
            # Type of the apply action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Details for applying a discount rule to future invoices.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule))
             }
            def invoice_discount_rule; end
            sig {
              params(_invoice_discount_rule: T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule))
             }
            def invoice_discount_rule=(_invoice_discount_rule); end
            sig {
              params(type: String, invoice_discount_rule: T.nilable(V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule)).void
             }
            def initialize(type: nil, invoice_discount_rule: nil); end
          end
          class Deactivate < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              sig { returns(T.nilable(String)) }
              def proration_behavior; end
              sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def proration_behavior=(_proration_behavior); end
              sig { params(proration_behavior: T.nilable(String)).void }
              def initialize(proration_behavior: nil); end
            end
            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the deactivate action will take effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              # ID of the pricing plan subscription to deactivate.
              sig { returns(String) }
              def pricing_plan_subscription; end
              sig { params(_pricing_plan_subscription: String).returns(String) }
              def pricing_plan_subscription=(_pricing_plan_subscription); end
              sig { params(pricing_plan_subscription: String).void }
              def initialize(pricing_plan_subscription: nil); end
            end
            # Configuration for the billing details.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::BillingDetails))
             }
            def billing_details; end
            sig {
              params(_billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::BillingDetails)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::BillingDetails))
             }
            def billing_details=(_billing_details); end
            # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for deactivating a pricing plan subscription.
            sig {
              returns(V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails).returns(V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::BillingDetails), effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt), pricing_plan_subscription_details: V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails, type: String).void
             }
            def initialize(
              billing_details: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            ); end
          end
          class Modify < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              sig { returns(T.nilable(String)) }
              def proration_behavior; end
              sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def proration_behavior=(_proration_behavior); end
              sig { params(proration_behavior: T.nilable(String)).void }
              def initialize(proration_behavior: nil); end
            end
            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the modify action will take effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the modify action will take effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              class ComponentConfiguration < Stripe::RequestParams
                # Quantity of the component to be used.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                # Lookup key for the pricing plan component.
                sig { returns(T.nilable(String)) }
                def lookup_key; end
                sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                def lookup_key=(_lookup_key); end
                # ID of the pricing plan component.
                sig { returns(T.nilable(String)) }
                def pricing_plan_component; end
                sig {
                  params(_pricing_plan_component: T.nilable(String)).returns(T.nilable(String))
                 }
                def pricing_plan_component=(_pricing_plan_component); end
                sig {
                  params(quantity: T.nilable(Integer), lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String)).void
                 }
                def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil); end
              end
              # New configurations for the components of the pricing plan.
              sig {
                returns(T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations; end
              sig {
                params(_component_configurations: T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration])).returns(T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations=(_component_configurations); end
              # The ID of the new Pricing Plan, if changing plans.
              sig { returns(T.nilable(String)) }
              def new_pricing_plan; end
              sig { params(_new_pricing_plan: T.nilable(String)).returns(T.nilable(String)) }
              def new_pricing_plan=(_new_pricing_plan); end
              # The ID of the new Pricing Plan Version to use.
              sig { returns(T.nilable(String)) }
              def new_pricing_plan_version; end
              sig {
                params(_new_pricing_plan_version: T.nilable(String)).returns(T.nilable(String))
               }
              def new_pricing_plan_version=(_new_pricing_plan_version); end
              # The ID of the Pricing Plan Subscription to modify.
              sig { returns(String) }
              def pricing_plan_subscription; end
              sig { params(_pricing_plan_subscription: String).returns(String) }
              def pricing_plan_subscription=(_pricing_plan_subscription); end
              sig {
                params(component_configurations: T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]), new_pricing_plan: T.nilable(String), new_pricing_plan_version: T.nilable(String), pricing_plan_subscription: String).void
               }
              def initialize(
                component_configurations: nil,
                new_pricing_plan: nil,
                new_pricing_plan_version: nil,
                pricing_plan_subscription: nil
              ); end
            end
            # Configuration for the billing details.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify::BillingDetails))
             }
            def billing_details; end
            sig {
              params(_billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Modify::BillingDetails)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify::BillingDetails))
             }
            def billing_details=(_billing_details); end
            # When the modify action will take effect. If not specified, the default behavior is on_reserve.
            sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt)) }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for modifying a pricing plan subscription.
            sig {
              returns(V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails).returns(V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Modify::BillingDetails), effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt), pricing_plan_subscription_details: V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails, type: String).void
             }
            def initialize(
              billing_details: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            ); end
          end
          class Remove < Stripe::RequestParams
            # Type of the remove action.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The ID of the discount rule to remove for future invoices.
            sig { returns(T.nilable(String)) }
            def invoice_discount_rule; end
            sig { params(_invoice_discount_rule: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_discount_rule=(_invoice_discount_rule); end
            sig { params(type: String, invoice_discount_rule: T.nilable(String)).void }
            def initialize(type: nil, invoice_discount_rule: nil); end
          end
          class Subscribe < Stripe::RequestParams
            class BillingDetails < Stripe::RequestParams
              # This controls the proration adjustment for the partial servicing period.
              sig { returns(T.nilable(String)) }
              def proration_behavior; end
              sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def proration_behavior=(_proration_behavior); end
              sig { params(proration_behavior: T.nilable(String)).void }
              def initialize(proration_behavior: nil); end
            end
            class EffectiveAt < Stripe::RequestParams
              # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the subscribe action will take effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < Stripe::RequestParams
              class ComponentConfiguration < Stripe::RequestParams
                # Quantity of the component to be used.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                # Lookup key for the pricing plan component.
                sig { returns(T.nilable(String)) }
                def lookup_key; end
                sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                def lookup_key=(_lookup_key); end
                # ID of the pricing plan component.
                sig { returns(T.nilable(String)) }
                def pricing_plan_component; end
                sig {
                  params(_pricing_plan_component: T.nilable(String)).returns(T.nilable(String))
                 }
                def pricing_plan_component=(_pricing_plan_component); end
                sig {
                  params(quantity: T.nilable(Integer), lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String)).void
                 }
                def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil); end
              end
              # Configurations for the components of the pricing plan.
              sig {
                returns(T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations; end
              sig {
                params(_component_configurations: T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration])).returns(T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations=(_component_configurations); end
              # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              def metadata; end
              sig {
                params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
               }
              def metadata=(_metadata); end
              # ID of the Pricing Plan to subscribe to.
              sig { returns(String) }
              def pricing_plan; end
              sig { params(_pricing_plan: String).returns(String) }
              def pricing_plan=(_pricing_plan); end
              # Version of the Pricing Plan to use.
              sig { returns(String) }
              def pricing_plan_version; end
              sig { params(_pricing_plan_version: String).returns(String) }
              def pricing_plan_version=(_pricing_plan_version); end
              sig {
                params(component_configurations: T.nilable(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]), metadata: T.nilable(T::Hash[String, String]), pricing_plan: String, pricing_plan_version: String).void
               }
              def initialize(
                component_configurations: nil,
                metadata: nil,
                pricing_plan: nil,
                pricing_plan_version: nil
              ); end
            end
            class V1SubscriptionDetails < Stripe::RequestParams
              class Item < Stripe::RequestParams
                # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
                sig { returns(T.nilable(T::Hash[String, String])) }
                def metadata; end
                sig {
                  params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
                 }
                def metadata=(_metadata); end
                # The ID of the price object.
                sig { returns(String) }
                def price; end
                sig { params(_price: String).returns(String) }
                def price=(_price); end
                # Quantity for this item. If not provided, will default to 1.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                sig {
                  params(metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer)).void
                 }
                def initialize(metadata: nil, price: nil, quantity: nil); end
              end
              # The subscription’s description, meant to be displayable to the customer.
              # Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
              sig { returns(T.nilable(String)) }
              def description; end
              sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
              def description=(_description); end
              # A list of up to 20 subscription items, each with an attached price.
              sig {
                returns(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item])
               }
              def items; end
              sig {
                params(_items: T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item]).returns(T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item])
               }
              def items=(_items); end
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              def metadata; end
              sig {
                params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
               }
              def metadata=(_metadata); end
              sig {
                params(description: T.nilable(String), items: T::Array[V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item], metadata: T.nilable(T::Hash[String, String])).void
               }
              def initialize(description: nil, items: nil, metadata: nil); end
            end
            # Configuration for the billing details. If not specified, see the default behavior for individual attributes.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::BillingDetails))
             }
            def billing_details; end
            sig {
              params(_billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::BillingDetails)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::BillingDetails))
             }
            def billing_details=(_billing_details); end
            # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Details for subscribing to a pricing plan.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails))
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails))
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Details for subscribing to a v1 subscription.
            sig {
              returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails))
             }
            def v1_subscription_details; end
            sig {
              params(_v1_subscription_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails))
             }
            def v1_subscription_details=(_v1_subscription_details); end
            sig {
              params(billing_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::BillingDetails), effective_at: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt), type: String, pricing_plan_subscription_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails), v1_subscription_details: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails)).void
             }
            def initialize(
              billing_details: nil,
              effective_at: nil,
              type: nil,
              pricing_plan_subscription_details: nil,
              v1_subscription_details: nil
            ); end
          end
          # Type of the Billing Intent action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Details for an apply action.
          sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply)) }
          def apply; end
          sig {
            params(_apply: T.nilable(V2::Billing::IntentCreateParams::Action::Apply)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Apply))
           }
          def apply=(_apply); end
          # Details for a deactivate action.
          sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate)) }
          def deactivate; end
          sig {
            params(_deactivate: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate))
           }
          def deactivate=(_deactivate); end
          # Details for a modify action.
          sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify)) }
          def modify; end
          sig {
            params(_modify: T.nilable(V2::Billing::IntentCreateParams::Action::Modify)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Modify))
           }
          def modify=(_modify); end
          # Details for a remove action.
          sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Remove)) }
          def remove; end
          sig {
            params(_remove: T.nilable(V2::Billing::IntentCreateParams::Action::Remove)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Remove))
           }
          def remove=(_remove); end
          # Details for a subscribe action.
          sig { returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe)) }
          def subscribe; end
          sig {
            params(_subscribe: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe)).returns(T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe))
           }
          def subscribe=(_subscribe); end
          sig {
            params(type: String, apply: T.nilable(V2::Billing::IntentCreateParams::Action::Apply), deactivate: T.nilable(V2::Billing::IntentCreateParams::Action::Deactivate), modify: T.nilable(V2::Billing::IntentCreateParams::Action::Modify), remove: T.nilable(V2::Billing::IntentCreateParams::Action::Remove), subscribe: T.nilable(V2::Billing::IntentCreateParams::Action::Subscribe)).void
           }
          def initialize(
            type: nil,
            apply: nil,
            deactivate: nil,
            modify: nil,
            remove: nil,
            subscribe: nil
          ); end
        end
        # Actions to be performed by this Billing Intent.
        sig { returns(T::Array[V2::Billing::IntentCreateParams::Action]) }
        def actions; end
        sig {
          params(_actions: T::Array[V2::Billing::IntentCreateParams::Action]).returns(T::Array[V2::Billing::IntentCreateParams::Action])
         }
        def actions=(_actions); end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # ID of an existing Cadence to use.
        sig { returns(T.nilable(String)) }
        def cadence; end
        sig { params(_cadence: T.nilable(String)).returns(T.nilable(String)) }
        def cadence=(_cadence); end
        sig {
          params(actions: T::Array[V2::Billing::IntentCreateParams::Action], currency: String, cadence: T.nilable(String)).void
         }
        def initialize(actions: nil, currency: nil, cadence: nil); end
      end
    end
  end
end