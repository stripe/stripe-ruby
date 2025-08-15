# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class IntentService < StripeService
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 10.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Action < Stripe::RequestParams
            class Apply < Stripe::RequestParams
              class InvoiceDiscountRule < Stripe::RequestParams
                class PercentOff < Stripe::RequestParams
                  class MaximumApplications < Stripe::RequestParams
                    # The type of maximum applications configuration.
                    sig { returns(String) }
                    attr_accessor :type
                    sig { params(type: String).void }
                    def initialize(type: nil); end
                  end
                  # The maximum number of times this discount can be applied for this cadence.
                  sig {
                    returns(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications)
                   }
                  attr_accessor :maximum_applications
                  # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
                  sig { returns(String) }
                  attr_accessor :percent_off
                  sig {
                    params(maximum_applications: ::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications, percent_off: String).void
                   }
                  def initialize(maximum_applications: nil, percent_off: nil); end
                end
                # The entity that the discount rule applies to, for example, the cadence.
                sig { returns(String) }
                attr_accessor :applies_to
                # Type of the discount rule.
                sig { returns(String) }
                attr_accessor :type
                # Configuration for percentage off discount.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule::PercentOff))
                 }
                attr_accessor :percent_off
                sig {
                  params(applies_to: String, type: String, percent_off: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule::PercentOff)).void
                 }
                def initialize(applies_to: nil, type: nil, percent_off: nil); end
              end
              # Type of the apply action details.
              sig { returns(String) }
              attr_accessor :type
              # Details for applying a discount rule to future invoices.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule))
               }
              attr_accessor :invoice_discount_rule
              sig {
                params(type: String, invoice_discount_rule: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply::InvoiceDiscountRule)).void
               }
              def initialize(type: nil, invoice_discount_rule: nil); end
            end
            class Deactivate < Stripe::RequestParams
              class PricingPlanSubscriptionDetails < Stripe::RequestParams
                # ID of the pricing plan subscription to deactivate.
                sig { returns(String) }
                attr_accessor :pricing_plan_subscription
                sig { params(pricing_plan_subscription: String).void }
                def initialize(pricing_plan_subscription: nil); end
              end
              # Details for deactivating a pricing plan subscription.
              sig {
                returns(::Stripe::V2::Billing::IntentService::CreateParams::Action::Deactivate::PricingPlanSubscriptionDetails)
               }
              attr_accessor :pricing_plan_subscription_details
              # Behavior for handling prorations.
              sig { returns(String) }
              attr_accessor :proration_behavior
              # Type of the action details.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentService::CreateParams::Action::Deactivate::PricingPlanSubscriptionDetails, proration_behavior: String, type: String).void
               }
              def initialize(
                pricing_plan_subscription_details: nil,
                proration_behavior: nil,
                type: nil
              ); end
            end
            class Modify < Stripe::RequestParams
              class PricingPlanSubscriptionDetails < Stripe::RequestParams
                class ComponentConfiguration < Stripe::RequestParams
                  # Quantity of the component to be used.
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :quantity
                  # Lookup key for the pricing plan component.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :lookup_key
                  # ID of the pricing plan component.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :pricing_plan_component
                  sig {
                    params(quantity: T.nilable(Integer), lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String)).void
                   }
                  def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil); end
                end
                # New configurations for the components of the pricing plan.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]))
                 }
                attr_accessor :component_configurations
                # ID of the new pricing plan, if changing plans.
                sig { returns(T.nilable(String)) }
                attr_accessor :new_pricing_plan
                # Version of the pricing plan to use.
                sig { returns(T.nilable(String)) }
                attr_accessor :new_pricing_plan_version
                # ID of the pricing plan subscription to modify.
                sig { returns(String) }
                attr_accessor :pricing_plan_subscription
                sig {
                  params(component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]), new_pricing_plan: T.nilable(String), new_pricing_plan_version: T.nilable(String), pricing_plan_subscription: String).void
                 }
                def initialize(
                  component_configurations: nil,
                  new_pricing_plan: nil,
                  new_pricing_plan_version: nil,
                  pricing_plan_subscription: nil
                ); end
              end
              # Details for modifying a pricing plan subscription.
              sig {
                returns(::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify::PricingPlanSubscriptionDetails)
               }
              attr_accessor :pricing_plan_subscription_details
              # Behavior for handling prorations.
              sig { returns(String) }
              attr_accessor :proration_behavior
              # Type of the action details.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify::PricingPlanSubscriptionDetails, proration_behavior: String, type: String).void
               }
              def initialize(
                pricing_plan_subscription_details: nil,
                proration_behavior: nil,
                type: nil
              ); end
            end
            class Remove < Stripe::RequestParams
              # Type of the remove action.
              sig { returns(String) }
              attr_accessor :type
              # The ID of the discount rule to remove for future invoices.
              sig { returns(T.nilable(String)) }
              attr_accessor :invoice_discount_rule
              sig { params(type: String, invoice_discount_rule: T.nilable(String)).void }
              def initialize(type: nil, invoice_discount_rule: nil); end
            end
            class Subscribe < Stripe::RequestParams
              class PricingPlanSubscriptionDetails < Stripe::RequestParams
                class ComponentConfiguration < Stripe::RequestParams
                  # Quantity of the component to be used.
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :quantity
                  # Lookup key for the pricing plan component.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :lookup_key
                  # ID of the pricing plan component.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :pricing_plan_component
                  sig {
                    params(quantity: T.nilable(Integer), lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String)).void
                   }
                  def initialize(quantity: nil, lookup_key: nil, pricing_plan_component: nil); end
                end
                # Configurations for the components of the pricing plan.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]))
                 }
                attr_accessor :component_configurations
                # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
                sig { returns(T.nilable(T::Hash[String, String])) }
                attr_accessor :metadata
                # ID of the pricing plan to subscribe to.
                sig { returns(String) }
                attr_accessor :pricing_plan
                # Version of the pricing plan to use.
                sig { returns(String) }
                attr_accessor :pricing_plan_version
                sig {
                  params(component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]), metadata: T.nilable(T::Hash[String, String]), pricing_plan: String, pricing_plan_version: String).void
                 }
                def initialize(
                  component_configurations: nil,
                  metadata: nil,
                  pricing_plan: nil,
                  pricing_plan_version: nil
                ); end
              end
              # Behavior for handling prorations.
              sig { returns(String) }
              attr_accessor :proration_behavior
              # Type of the action details.
              sig { returns(String) }
              attr_accessor :type
              # Details for subscribing to a pricing plan.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe::PricingPlanSubscriptionDetails))
               }
              attr_accessor :pricing_plan_subscription_details
              sig {
                params(proration_behavior: String, type: String, pricing_plan_subscription_details: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe::PricingPlanSubscriptionDetails)).void
               }
              def initialize(
                proration_behavior: nil,
                type: nil,
                pricing_plan_subscription_details: nil
              ); end
            end
            # Type of the BillingIntentAction.
            sig { returns(String) }
            attr_accessor :type
            # Details for an apply action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply))
             }
            attr_accessor :apply
            # Details for a deactivate action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Deactivate))
             }
            attr_accessor :deactivate
            # Details for a modify action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify))
             }
            attr_accessor :modify
            # Details for a remove action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Remove))
             }
            attr_accessor :remove
            # Details for a subscribe action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe))
             }
            attr_accessor :subscribe
            sig {
              params(type: String, apply: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Apply), deactivate: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Deactivate), modify: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Modify), remove: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Remove), subscribe: T.nilable(::Stripe::V2::Billing::IntentService::CreateParams::Action::Subscribe)).void
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
          # Actions to be performed by this BillingIntent.
          sig { returns(T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action]) }
          attr_accessor :actions
          # Three-letter ISO currency code, in lowercase.
          sig { returns(String) }
          attr_accessor :currency
          # When the BillingIntent will take effect.
          sig { returns(String) }
          attr_accessor :effective_at
          # ID of an existing Cadence to use.
          sig { returns(T.nilable(String)) }
          attr_accessor :cadence
          sig {
            params(actions: T::Array[::Stripe::V2::Billing::IntentService::CreateParams::Action], currency: String, effective_at: String, cadence: T.nilable(String)).void
           }
          def initialize(actions: nil, currency: nil, effective_at: nil, cadence: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end
        class CommitParams < Stripe::RequestParams
          # ID of the PaymentIntent associated with this commit.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_intent
          sig { params(payment_intent: T.nilable(String)).void }
          def initialize(payment_intent: nil); end
        end
        class ReleaseReservationParams < Stripe::RequestParams; end
        class ReserveParams < Stripe::RequestParams; end
        # Cancel a BillingIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Commit a BillingIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentService::CommitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def commit(id, params = {}, opts = {}); end

        # Create a BillingIntent.
        sig {
          params(params: T.any(::Stripe::V2::Billing::IntentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def create(params = {}, opts = {}); end

        # List BillingIntents.
        sig {
          params(params: T.any(::Stripe::V2::Billing::IntentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Release a BillingIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentService::ReleaseReservationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def release_reservation(id, params = {}, opts = {}); end

        # Reserve a BillingIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentService::ReserveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def reserve(id, params = {}, opts = {}); end

        # Retrieve a BillingIntent.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::IntentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Intent)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end