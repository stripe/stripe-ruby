# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentCreateParams < ::Stripe::RequestParams
        class Action < ::Stripe::RequestParams
          class Apply < ::Stripe::RequestParams
            class InvoiceDiscountRule < ::Stripe::RequestParams
              class PercentOff < ::Stripe::RequestParams
                class MaximumApplications < ::Stripe::RequestParams
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

          class Deactivate < ::Stripe::RequestParams
            class CancellationDetails < ::Stripe::RequestParams
              # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
              attr_accessor :comment
              # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
              attr_accessor :feedback

              def initialize(comment: nil, feedback: nil)
                @comment = comment
                @feedback = feedback
              end
            end

            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the deactivate action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the deactivate action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is deactivating.
                    attr_accessor :credit_proration_behavior

                    def initialize(credit_proration_behavior: nil)
                      @credit_proration_behavior = credit_proration_behavior
                    end
                  end
                  # Type of the partial period behavior override.
                  attr_accessor :type
                  # Override for the license fee.
                  attr_accessor :license_fee

                  def initialize(type: nil, license_fee: nil)
                    @type = type
                    @license_fee = license_fee
                  end
                end
                # Override for the partial period behavior.
                attr_accessor :partial_period_behaviors

                def initialize(partial_period_behaviors: nil)
                  @partial_period_behaviors = partial_period_behaviors
                end
              end
              # Allows users to override the partial period behavior.
              attr_accessor :overrides
              # ID of the pricing plan subscription to deactivate.
              attr_accessor :pricing_plan_subscription

              def initialize(overrides: nil, pricing_plan_subscription: nil)
                @overrides = overrides
                @pricing_plan_subscription = pricing_plan_subscription
              end
            end
            # Details about why the cancellation is being requested.
            attr_accessor :cancellation_details
            # Allows users to override the collect at behavior.
            attr_accessor :collect_at
            # When the deactivate action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Details for deactivating a pricing plan subscription.
            attr_accessor :pricing_plan_subscription_details
            # Type of the action details.
            attr_accessor :type

            def initialize(
              cancellation_details: nil,
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            )
              @cancellation_details = cancellation_details
              @collect_at = collect_at
              @effective_at = effective_at
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @type = type
            end
          end

          class Modify < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the modify action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the modify action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
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

              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is upgrading.
                    attr_accessor :credit_proration_behavior
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is downgrading.
                    attr_accessor :debit_proration_behavior

                    def initialize(credit_proration_behavior: nil, debit_proration_behavior: nil)
                      @credit_proration_behavior = credit_proration_behavior
                      @debit_proration_behavior = debit_proration_behavior
                    end
                  end
                  # Type of the partial period behavior override.
                  attr_accessor :type
                  # Override for the license fee.
                  attr_accessor :license_fee

                  def initialize(type: nil, license_fee: nil)
                    @type = type
                    @license_fee = license_fee
                  end
                end
                # Override for the partial period behavior.
                attr_accessor :partial_period_behaviors

                def initialize(partial_period_behaviors: nil)
                  @partial_period_behaviors = partial_period_behaviors
                end
              end
              # New configurations for the components of the pricing plan.
              attr_accessor :component_configurations
              # The ID of the new Pricing Plan, if changing plans.
              attr_accessor :new_pricing_plan
              # The ID of the new Pricing Plan Version to use.
              attr_accessor :new_pricing_plan_version
              # Allows users to override the partial period behavior.
              attr_accessor :overrides
              # The ID of the Pricing Plan Subscription to modify.
              attr_accessor :pricing_plan_subscription

              def initialize(
                component_configurations: nil,
                new_pricing_plan: nil,
                new_pricing_plan_version: nil,
                overrides: nil,
                pricing_plan_subscription: nil
              )
                @component_configurations = component_configurations
                @new_pricing_plan = new_pricing_plan
                @new_pricing_plan_version = new_pricing_plan_version
                @overrides = overrides
                @pricing_plan_subscription = pricing_plan_subscription
              end
            end
            # Allows users to override the collect at behavior.
            attr_accessor :collect_at
            # When the modify action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Details for modifying a pricing plan subscription.
            attr_accessor :pricing_plan_subscription_details
            # Type of the action details.
            attr_accessor :type

            def initialize(
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            )
              @collect_at = collect_at
              @effective_at = effective_at
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @type = type
            end
          end

          class Remove < ::Stripe::RequestParams
            # Type of the remove action.
            attr_accessor :type
            # The ID of the discount rule to remove for future invoices.
            attr_accessor :invoice_discount_rule

            def initialize(type: nil, invoice_discount_rule: nil)
              @type = type
              @invoice_discount_rule = invoice_discount_rule
            end
          end

          class Subscribe < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the subscribe action will take effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the subscribe action will take effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
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

              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is subscribing.
                    attr_accessor :debit_proration_behavior

                    def initialize(debit_proration_behavior: nil)
                      @debit_proration_behavior = debit_proration_behavior
                    end
                  end
                  # Type of the partial period behavior override.
                  attr_accessor :type
                  # Override for the license fee.
                  attr_accessor :license_fee

                  def initialize(type: nil, license_fee: nil)
                    @type = type
                    @license_fee = license_fee
                  end
                end
                # Override for the partial period behavior.
                attr_accessor :partial_period_behaviors

                def initialize(partial_period_behaviors: nil)
                  @partial_period_behaviors = partial_period_behaviors
                end
              end
              # Configurations for the components of the pricing plan.
              attr_accessor :component_configurations
              # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_accessor :metadata
              # Allows users to override the partial period behavior.
              attr_accessor :overrides
              # ID of the Pricing Plan to subscribe to.
              attr_accessor :pricing_plan
              # Version of the Pricing Plan to use.
              attr_accessor :pricing_plan_version

              def initialize(
                component_configurations: nil,
                metadata: nil,
                overrides: nil,
                pricing_plan: nil,
                pricing_plan_version: nil
              )
                @component_configurations = component_configurations
                @metadata = metadata
                @overrides = overrides
                @pricing_plan = pricing_plan
                @pricing_plan_version = pricing_plan_version
              end
            end

            class V1SubscriptionDetails < ::Stripe::RequestParams
              class Item < ::Stripe::RequestParams
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
            # Allows users to override the collect at behavior.
            attr_accessor :collect_at
            # When the subscribe action will take effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Type of the action details.
            attr_accessor :type
            # Details for subscribing to a pricing plan.
            attr_accessor :pricing_plan_subscription_details
            # Details for subscribing to a v1 subscription.
            attr_accessor :v1_subscription_details

            def initialize(
              collect_at: nil,
              effective_at: nil,
              type: nil,
              pricing_plan_subscription_details: nil,
              v1_subscription_details: nil
            )
              @collect_at = collect_at
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

        class CadenceData < ::Stripe::RequestParams
          class BillingCycle < ::Stripe::RequestParams
            class Day < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(time: nil)
                @time = time
              end
            end

            class Month < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              attr_accessor :day_of_month
              # The month to anchor the billing on for a type="month" billing cycle from
              # 1-12. If not provided, this will default to the month the cadence was created.
              # This setting can only be used for monthly billing cycles with `interval_count` of 2, 3, 4 or 6.
              # All occurrences will be calculated from month provided.
              attr_accessor :month_of_year
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_month: nil, month_of_year: nil, time: nil)
                @day_of_month = day_of_month
                @month_of_year = month_of_year
                @time = time
              end
            end

            class Week < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day of the week to bill the type=week billing cycle on.
              # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601
              # week day numbering. If not provided, this will default to the day the
              # cadence was created.
              attr_accessor :day_of_week
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_week: nil, time: nil)
                @day_of_week = day_of_week
                @time = time
              end
            end

            class Year < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              attr_accessor :day_of_month
              # The month to bill on from 1-12. If not provided, this will default to the
              # month the cadence was created.
              attr_accessor :month_of_year
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_month: nil, month_of_year: nil, time: nil)
                @day_of_month = day_of_month
                @month_of_year = month_of_year
                @time = time
              end
            end
            # The number of intervals (specified in the interval attribute) between
            # cadence billings. For example, type=month and interval_count=3 bills every
            # 3 months. If this is not provided, it will default to 1.
            attr_accessor :interval_count
            # The frequency at which a cadence bills.
            attr_accessor :type
            # Specific configuration for determining billing dates when type=day.
            attr_accessor :day
            # Specific configuration for determining billing dates when type=month.
            attr_accessor :month
            # Specific configuration for determining billing dates when type=week.
            attr_accessor :week
            # Specific configuration for determining billing dates when type=year.
            attr_accessor :year

            def initialize(
              interval_count: nil,
              type: nil,
              day: nil,
              month: nil,
              week: nil,
              year: nil
            )
              @interval_count = interval_count
              @type = type
              @day = day
              @month = month
              @week = week
              @year = year
            end
          end

          class Payer < ::Stripe::RequestParams
            class BillingProfileData < ::Stripe::RequestParams
              # The customer to associate with the profile.
              attr_accessor :customer
              # The default payment method to use when billing this profile.
              # If left blank, the `PaymentMethod` from the `PaymentIntent` provided
              # on commit will be used to create the profile.
              attr_accessor :default_payment_method

              def initialize(customer: nil, default_payment_method: nil)
                @customer = customer
                @default_payment_method = default_payment_method
              end
            end
            # The ID of the Billing Profile object which determines how a bill will be paid.
            attr_accessor :billing_profile
            # Data for creating a new profile.
            attr_accessor :billing_profile_data

            def initialize(billing_profile: nil, billing_profile_data: nil)
              @billing_profile = billing_profile
              @billing_profile_data = billing_profile_data
            end
          end

          class Settings < ::Stripe::RequestParams
            class Bill < ::Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end

            class Collection < ::Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end
            # Settings that configure bill generation, which includes calculating totals, tax, and presenting invoices.
            # If no setting is provided here, the settings from the customer referenced on the payer will be used.
            # If no customer settings are present, the merchant default settings will be used.
            attr_accessor :bill
            # Settings that configure and manage the behavior of collecting payments.
            # If no setting is provided here, the settings from the customer referenced from the payer will be used if they exist.
            # If no customer settings are present, the merchant default settings will be used.
            attr_accessor :collection

            def initialize(bill: nil, collection: nil)
              @bill = bill
              @collection = collection
            end
          end
          # The billing cycle configuration for this Cadence.
          attr_accessor :billing_cycle
          # Information about the payer for this Cadence.
          attr_accessor :payer
          # Settings for creating the Cadence.
          attr_accessor :settings

          def initialize(billing_cycle: nil, payer: nil, settings: nil)
            @billing_cycle = billing_cycle
            @payer = payer
            @settings = settings
          end
        end
        # Actions to be performed by this Billing Intent.
        attr_accessor :actions
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_accessor :currency
        # ID of an existing Cadence to use.
        attr_accessor :cadence
        # Data for creating a new Cadence.
        attr_accessor :cadence_data

        def initialize(actions: nil, currency: nil, cadence: nil, cadence_data: nil)
          @actions = actions
          @currency = currency
          @cadence = cadence
          @cadence_data = cadence_data
        end
      end
    end
  end
end
