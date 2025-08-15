# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentService < StripeService
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 10.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end

        class CreateParams < Stripe::RequestParams
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
              class PricingPlanSubscriptionDetails < Stripe::RequestParams
                # ID of the pricing plan subscription to deactivate.
                attr_accessor :pricing_plan_subscription

                def initialize(pricing_plan_subscription: nil)
                  @pricing_plan_subscription = pricing_plan_subscription
                end
              end
              # Details for deactivating a pricing plan subscription.
              attr_accessor :pricing_plan_subscription_details
              # Behavior for handling prorations.
              attr_accessor :proration_behavior
              # Type of the action details.
              attr_accessor :type

              def initialize(
                pricing_plan_subscription_details: nil,
                proration_behavior: nil,
                type: nil
              )
                @pricing_plan_subscription_details = pricing_plan_subscription_details
                @proration_behavior = proration_behavior
                @type = type
              end
            end

            class Modify < Stripe::RequestParams
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
                # ID of the new pricing plan, if changing plans.
                attr_accessor :new_pricing_plan
                # Version of the pricing plan to use.
                attr_accessor :new_pricing_plan_version
                # ID of the pricing plan subscription to modify.
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
              # Details for modifying a pricing plan subscription.
              attr_accessor :pricing_plan_subscription_details
              # Behavior for handling prorations.
              attr_accessor :proration_behavior
              # Type of the action details.
              attr_accessor :type

              def initialize(
                pricing_plan_subscription_details: nil,
                proration_behavior: nil,
                type: nil
              )
                @pricing_plan_subscription_details = pricing_plan_subscription_details
                @proration_behavior = proration_behavior
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
                # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
                attr_accessor :metadata
                # ID of the pricing plan to subscribe to.
                attr_accessor :pricing_plan
                # Version of the pricing plan to use.
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
              # Behavior for handling prorations.
              attr_accessor :proration_behavior
              # Type of the action details.
              attr_accessor :type
              # Details for subscribing to a pricing plan.
              attr_accessor :pricing_plan_subscription_details

              def initialize(
                proration_behavior: nil,
                type: nil,
                pricing_plan_subscription_details: nil
              )
                @proration_behavior = proration_behavior
                @type = type
                @pricing_plan_subscription_details = pricing_plan_subscription_details
              end
            end
            # Type of the BillingIntentAction.
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
          # Actions to be performed by this BillingIntent.
          attr_accessor :actions
          # Three-letter ISO currency code, in lowercase.
          attr_accessor :currency
          # When the BillingIntent will take effect.
          attr_accessor :effective_at
          # ID of an existing Cadence to use.
          attr_accessor :cadence

          def initialize(actions: nil, currency: nil, effective_at: nil, cadence: nil)
            @actions = actions
            @currency = currency
            @effective_at = effective_at
            @cadence = cadence
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end

        class CommitParams < Stripe::RequestParams
          # ID of the PaymentIntent associated with this commit.
          attr_accessor :payment_intent

          def initialize(payment_intent: nil)
            @payment_intent = payment_intent
          end
        end

        class ReleaseReservationParams < Stripe::RequestParams; end
        class ReserveParams < Stripe::RequestParams; end

        # Cancel a BillingIntent.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Commit a BillingIntent.
        def commit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/commit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a BillingIntent.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List BillingIntents.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Release a BillingIntent.
        def release_reservation(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/release_reservation", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Reserve a BillingIntent.
        def reserve(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/reserve", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a BillingIntent.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
