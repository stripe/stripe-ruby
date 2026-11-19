# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentCreateParams < ::Stripe::RequestParams
        class Action < ::Stripe::RequestParams
          class Apply < ::Stripe::RequestParams
            class Discount < ::Stripe::RequestParams
              # The ID of the Coupon to apply.
              attr_accessor :coupon
              # The ID of the PromotionCode to apply.
              attr_accessor :promotion_code
              # Type of the discount.
              attr_accessor :type

              def initialize(coupon: nil, promotion_code: nil, type: nil)
                @coupon = coupon
                @promotion_code = promotion_code
                @type = type
              end
            end

            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the apply action takes effect. Only present if type is timestamp. Only allowed for discount actions.
              attr_accessor :timestamp
              # When the apply action takes effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class InvoiceDiscountRule < ::Stripe::RequestParams
              class PercentOff < ::Stripe::RequestParams
                class MaximumApplications < ::Stripe::RequestParams
                  # The type of maximum applications configuration.
                  attr_accessor :type

                  def initialize(type: nil)
                    @type = type
                  end
                end
                # The maximum number of times this discount can be applied for this billing group.
                attr_accessor :maximum_applications
                # Percent that is taken off the amount. For example, a percent_off of 50.0 reduces a 100 USD amount to 50 USD.
                attr_accessor :percent_off

                def initialize(maximum_applications: nil, percent_off: nil)
                  @maximum_applications = maximum_applications
                  @percent_off = percent_off
                end

                def self.field_encodings
                  @field_encodings = { percent_off: :decimal_string }
                end
              end
              # The entity that the discount rule applies to, for example, the billing group.
              attr_accessor :applies_to
              # Configuration for percentage off discount.
              attr_accessor :percent_off
              # Type of the discount rule.
              attr_accessor :type

              def initialize(applies_to: nil, percent_off: nil, type: nil)
                @applies_to = applies_to
                @percent_off = percent_off
                @type = type
              end

              def self.field_encodings
                @field_encodings = {
                  percent_off: { kind: :object, fields: { percent_off: :decimal_string } },
                }
              end
            end

            class SpendModifierRule < ::Stripe::RequestParams
              class MaxBillingPeriodSpend < ::Stripe::RequestParams
                class Amount < ::Stripe::RequestParams
                  class CustomPricingUnit < ::Stripe::RequestParams
                    # The id of the custom pricing unit.
                    attr_accessor :id
                    # The value of the custom pricing unit.
                    attr_accessor :value

                    def initialize(id: nil, value: nil)
                      @id = id
                      @value = value
                    end
                  end
                  # The custom pricing unit amount.
                  attr_accessor :custom_pricing_unit
                  # The type of the amount.
                  attr_accessor :type

                  def initialize(custom_pricing_unit: nil, type: nil)
                    @custom_pricing_unit = custom_pricing_unit
                    @type = type
                  end
                end

                class CustomPricingUnitOverageRate < ::Stripe::RequestParams
                  # ID of the custom pricing unit overage rate.
                  attr_accessor :id

                  def initialize(id: nil)
                    @id = id
                  end
                end
                # The maximum amount allowed for the billing period.
                attr_accessor :amount
                # The configuration for the overage rate for the custom pricing unit.
                attr_accessor :custom_pricing_unit_overage_rate

                def initialize(amount: nil, custom_pricing_unit_overage_rate: nil)
                  @amount = amount
                  @custom_pricing_unit_overage_rate = custom_pricing_unit_overage_rate
                end
              end
              # What the spend modifier applies to.
              attr_accessor :applies_to
              # Details for max billing period spend modifier. Only present if type is max_billing_period_spend.
              attr_accessor :max_billing_period_spend
              # Type of the spend modifier.
              attr_accessor :type

              def initialize(applies_to: nil, max_billing_period_spend: nil, type: nil)
                @applies_to = applies_to
                @max_billing_period_spend = max_billing_period_spend
                @type = type
              end
            end
            # Details for applying a discount.
            attr_accessor :discount
            # When the apply action takes effect. If not specified, defaults to on_reserve.
            attr_accessor :effective_at
            # Details for applying a discount rule to future invoices.
            attr_accessor :invoice_discount_rule
            # Details for applying a spend modifier rule. Only present if type is spend_modifier_rule.
            attr_accessor :spend_modifier_rule
            # Type of the apply action details.
            attr_accessor :type

            def initialize(
              discount: nil,
              effective_at: nil,
              invoice_discount_rule: nil,
              spend_modifier_rule: nil,
              type: nil
            )
              @discount = discount
              @effective_at = effective_at
              @invoice_discount_rule = invoice_discount_rule
              @spend_modifier_rule = spend_modifier_rule
              @type = type
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
              # The timestamp at which the deactivate action takes effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the deactivate action takes effect.
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
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is deactivating. If not specified, defaults to none.
                    attr_accessor :credit_proration_behavior

                    def initialize(credit_proration_behavior: nil)
                      @credit_proration_behavior = credit_proration_behavior
                    end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  attr_accessor :license_fee
                  # The type of behavior to override.
                  attr_accessor :type

                  def initialize(license_fee: nil, type: nil)
                    @license_fee = license_fee
                    @type = type
                  end
                end
                # Configurations for behaviors when the action takes effect during the service period.
                attr_accessor :partial_period_behaviors

                def initialize(partial_period_behaviors: nil)
                  @partial_period_behaviors = partial_period_behaviors
                end
              end
              # Configurations for overriding behaviors related to the subscription.
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
            # When the invoice is collected. If not specified, the default behavior is on_effective_at.
            attr_accessor :collect_at
            # When the deactivate action takes effect. If not specified, the default behavior is on_reserve.
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
              # The timestamp at which the modify action takes effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the modify action takes effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
                # Lookup key for the pricing plan component.
                attr_accessor :lookup_key
                # ID of the pricing plan component.
                attr_accessor :pricing_plan_component
                # Quantity of the component to be used.
                attr_accessor :quantity

                def initialize(lookup_key: nil, pricing_plan_component: nil, quantity: nil)
                  @lookup_key = lookup_key
                  @pricing_plan_component = pricing_plan_component
                  @quantity = quantity
                end
              end

              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                    attr_accessor :credit_proration_behavior
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                    attr_accessor :debit_proration_behavior

                    def initialize(credit_proration_behavior: nil, debit_proration_behavior: nil)
                      @credit_proration_behavior = credit_proration_behavior
                      @debit_proration_behavior = debit_proration_behavior
                    end
                  end

                  class RecurringCreditGrant < ::Stripe::RequestParams
                    # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                    attr_accessor :create_behavior

                    def initialize(create_behavior: nil)
                      @create_behavior = create_behavior
                    end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  attr_accessor :license_fee
                  # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                  attr_accessor :recurring_credit_grant
                  # The type of behavior to override.
                  attr_accessor :type

                  def initialize(license_fee: nil, recurring_credit_grant: nil, type: nil)
                    @license_fee = license_fee
                    @recurring_credit_grant = recurring_credit_grant
                    @type = type
                  end
                end
                # Configurations for behaviors when the action takes effect during the service period.
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
              # Configurations for overriding behaviors related to the subscription.
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
            # When the invoice is collected. If not specified, the default behavior is next_billing_date.
            attr_accessor :collect_at
            # When the modify action takes effect. If not specified, the default behavior is on_reserve.
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
            class EffectiveAt < ::Stripe::RequestParams
              # When the remove action takes effect.
              attr_accessor :type

              def initialize(type: nil)
                @type = type
              end
            end
            # When the remove action takes effect. If not specified, defaults to on_reserve.
            attr_accessor :effective_at
            # The ID of the discount rule to remove for future invoices.
            attr_accessor :invoice_discount_rule
            # The ID of the spend modifier rule to remove.
            attr_accessor :spend_modifier_rule
            # Type of the remove action.
            attr_accessor :type

            def initialize(
              effective_at: nil,
              invoice_discount_rule: nil,
              spend_modifier_rule: nil,
              type: nil
            )
              @effective_at = effective_at
              @invoice_discount_rule = invoice_discount_rule
              @spend_modifier_rule = spend_modifier_rule
              @type = type
            end
          end

          class Subscribe < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the subscribe action takes effect. Only present if type is timestamp.
              attr_accessor :timestamp
              # When the subscribe action takes effect.
              attr_accessor :type

              def initialize(timestamp: nil, type: nil)
                @timestamp = timestamp
                @type = type
              end
            end

            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
                # Lookup key for the pricing plan component.
                attr_accessor :lookup_key
                # ID of the pricing plan component.
                attr_accessor :pricing_plan_component
                # Quantity of the component to be used.
                attr_accessor :quantity

                def initialize(lookup_key: nil, pricing_plan_component: nil, quantity: nil)
                  @lookup_key = lookup_key
                  @pricing_plan_component = pricing_plan_component
                  @quantity = quantity
                end
              end

              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is subscribing. If not specified, defaults to prorated.
                    attr_accessor :debit_proration_behavior

                    def initialize(debit_proration_behavior: nil)
                      @debit_proration_behavior = debit_proration_behavior
                    end
                  end

                  class RecurringCreditGrant < ::Stripe::RequestParams
                    # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                    attr_accessor :create_behavior

                    def initialize(create_behavior: nil)
                      @create_behavior = create_behavior
                    end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  attr_accessor :license_fee
                  # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                  attr_accessor :recurring_credit_grant
                  # The type of behavior to override.
                  attr_accessor :type

                  def initialize(license_fee: nil, recurring_credit_grant: nil, type: nil)
                    @license_fee = license_fee
                    @recurring_credit_grant = recurring_credit_grant
                    @type = type
                  end
                end
                # Configurations for behaviors when the action takes effect during the service period.
                attr_accessor :partial_period_behaviors

                def initialize(partial_period_behaviors: nil)
                  @partial_period_behaviors = partial_period_behaviors
                end
              end
              # Configurations for the components of the pricing plan.
              attr_accessor :component_configurations
              # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_accessor :metadata
              # Configurations for overriding behaviors related to the subscription.
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
                # Quantity for this item. If not provided, defaults to 1.
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
            # When the invoice is collected. If not specified, defaults to on_effective_at.
            attr_accessor :collect_at
            # When the subscribe action takes effect. If not specified, the default behavior is on_reserve.
            attr_accessor :effective_at
            # Details for subscribing to a pricing plan.
            attr_accessor :pricing_plan_subscription_details
            # Type of the action details.
            attr_accessor :type
            # Details for subscribing to a v1 subscription.
            attr_accessor :v1_subscription_details

            def initialize(
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil,
              v1_subscription_details: nil
            )
              @collect_at = collect_at
              @effective_at = effective_at
              @pricing_plan_subscription_details = pricing_plan_subscription_details
              @type = type
              @v1_subscription_details = v1_subscription_details
            end
          end
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
          # Type of the Billing Intent action.
          attr_accessor :type

          def initialize(
            apply: nil,
            deactivate: nil,
            modify: nil,
            remove: nil,
            subscribe: nil,
            type: nil
          )
            @apply = apply
            @deactivate = deactivate
            @modify = modify
            @remove = remove
            @subscribe = subscribe
            @type = type
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

        class BillingGroupData < ::Stripe::RequestParams
          class BillingSettings < ::Stripe::RequestParams
            class EmailDelivery < ::Stripe::RequestParams
              class PaymentDue < ::Stripe::RequestParams
                # If true an email for the invoice would be generated and sent out.
                attr_accessor :enabled
                # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
                attr_accessor :include_payment_link

                def initialize(enabled: nil, include_payment_link: nil)
                  @enabled = enabled
                  @include_payment_link = include_payment_link
                end
              end
              # Controls emails for when the payment is due. Omit to use the applicable default.
              attr_accessor :payment_due

              def initialize(payment_due: nil)
                @payment_due = payment_due
              end
            end

            class InvoicePresentation < ::Stripe::RequestParams
              # The ID of the invoice rendering template to be used when generating invoices. Omit to use the applicable default.
              attr_accessor :invoice_rendering_template

              def initialize(invoice_rendering_template: nil)
                @invoice_rendering_template = invoice_rendering_template
              end
            end

            class InvoiceTimeUntilDue < ::Stripe::RequestParams
              # The interval unit for the time until due.
              attr_accessor :interval
              # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end

            class PaymentMethodOptions < ::Stripe::RequestParams
              class AcssDebit < ::Stripe::RequestParams
                class MandateOptions < ::Stripe::RequestParams
                  # Transaction type of the mandate.
                  attr_accessor :transaction_type

                  def initialize(transaction_type: nil)
                    @transaction_type = transaction_type
                  end
                end
                # Additional fields for Mandate creation.
                attr_accessor :mandate_options
                # Verification method.
                attr_accessor :verification_method

                def initialize(mandate_options: nil, verification_method: nil)
                  @mandate_options = mandate_options
                  @verification_method = verification_method
                end
              end

              class Bancontact < ::Stripe::RequestParams
                # Preferred language of the Bancontact authorization page that the customer is redirected to.
                attr_accessor :preferred_language

                def initialize(preferred_language: nil)
                  @preferred_language = preferred_language
                end
              end

              class Card < ::Stripe::RequestParams
                class MandateOptions < ::Stripe::RequestParams
                  # Amount to be charged for future payments.
                  attr_accessor :amount
                  # The AmountType for the mandate. One of `fixed` or `maximum`.
                  attr_accessor :amount_type
                  # A description of the mandate that is meant to be displayed to the customer.
                  attr_accessor :description

                  def initialize(amount: nil, amount_type: nil, description: nil)
                    @amount = amount
                    @amount_type = amount_type
                    @description = description
                  end

                  def self.field_encodings
                    @field_encodings = { amount: :int64_string }
                  end
                end
                # Configuration options for setting up an eMandate for cards issued in India.
                attr_accessor :mandate_options
                # Selected network to process the payment on. Depends on the available networks of the card.
                attr_accessor :network
                # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
                # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
                # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
                # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
                attr_accessor :request_three_d_secure

                def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil)
                  @mandate_options = mandate_options
                  @network = network
                  @request_three_d_secure = request_three_d_secure
                end

                def self.field_encodings
                  @field_encodings = {
                    mandate_options: { kind: :object, fields: { amount: :int64_string } },
                  }
                end
              end

              class CustomerBalance < ::Stripe::RequestParams
                class BankTransfer < ::Stripe::RequestParams
                  class EuBankTransfer < ::Stripe::RequestParams
                    # The desired country code of the bank account information.
                    attr_accessor :country

                    def initialize(country: nil)
                      @country = country
                    end
                  end
                  # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                  attr_accessor :eu_bank_transfer
                  # The bank transfer type that can be used for funding.
                  attr_accessor :type

                  def initialize(eu_bank_transfer: nil, type: nil)
                    @eu_bank_transfer = eu_bank_transfer
                    @type = type
                  end
                end
                # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
                attr_accessor :bank_transfer
                # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
                attr_accessor :funding_type

                def initialize(bank_transfer: nil, funding_type: nil)
                  @bank_transfer = bank_transfer
                  @funding_type = funding_type
                end
              end

              class Konbini < ::Stripe::RequestParams; end
              class SepaDebit < ::Stripe::RequestParams; end

              class UsBankAccount < ::Stripe::RequestParams
                class FinancialConnections < ::Stripe::RequestParams
                  class Filters < ::Stripe::RequestParams
                    # The account subcategories to use to filter for selectable accounts.
                    attr_accessor :account_subcategories

                    def initialize(account_subcategories: nil)
                      @account_subcategories = account_subcategories
                    end
                  end
                  # Provide filters for the linked accounts that the customer can select for the payment method.
                  attr_accessor :filters
                  # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                  attr_accessor :permissions
                  # List of data features that you would like to retrieve upon account creation.
                  attr_accessor :prefetch

                  def initialize(filters: nil, permissions: nil, prefetch: nil)
                    @filters = filters
                    @permissions = permissions
                    @prefetch = prefetch
                  end
                end
                # Additional fields for Financial Connections Session creation.
                attr_accessor :financial_connections
                # Verification method.
                attr_accessor :verification_method

                def initialize(financial_connections: nil, verification_method: nil)
                  @financial_connections = financial_connections
                  @verification_method = verification_method
                end
              end
              # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
              attr_accessor :acss_debit
              # This sub-hash contains details about the Bancontact payment method.
              attr_accessor :bancontact
              # This sub-hash contains details about the Card payment method options.
              attr_accessor :card
              # This sub-hash contains details about the Bank transfer payment method options.
              attr_accessor :customer_balance
              # This sub-hash contains details about the Konbini payment method options.
              attr_accessor :konbini
              # This sub-hash contains details about the SEPA Direct Debit payment method options.
              attr_accessor :sepa_debit
              # This sub-hash contains details about the ACH direct debit payment method options.
              attr_accessor :us_bank_account

              def initialize(
                acss_debit: nil,
                bancontact: nil,
                card: nil,
                customer_balance: nil,
                konbini: nil,
                sepa_debit: nil,
                us_bank_account: nil
              )
                @acss_debit = acss_debit
                @bancontact = bancontact
                @card = card
                @customer_balance = customer_balance
                @konbini = konbini
                @sepa_debit = sepa_debit
                @us_bank_account = us_bank_account
              end

              def self.field_encodings
                @field_encodings = {
                  card: {
                    kind: :object,
                    fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
                  },
                }
              end
            end

            class Tax < ::Stripe::RequestParams
              # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business. Omit to use the applicable default.
              attr_accessor :type

              def initialize(type: nil)
                @type = type
              end
            end
            # How Stripe collects payment.
            attr_accessor :collection_method
            # Email delivery setting.
            attr_accessor :email_delivery
            # Settings for invoice presentation.
            attr_accessor :invoice_presentation
            # The amount of time until the invoice is overdue for payment.
            attr_accessor :invoice_time_until_due
            # The ID of the payment method configuration, which controls which payment methods are displayed to your customers.
            attr_accessor :payment_method_configuration
            # Payment Method specific configuration to be stored on the object.
            attr_accessor :payment_method_options
            # Settings for calculating tax.
            attr_accessor :tax

            def initialize(
              collection_method: nil,
              email_delivery: nil,
              invoice_presentation: nil,
              invoice_time_until_due: nil,
              payment_method_configuration: nil,
              payment_method_options: nil,
              tax: nil
            )
              @collection_method = collection_method
              @email_delivery = email_delivery
              @invoice_presentation = invoice_presentation
              @invoice_time_until_due = invoice_time_until_due
              @payment_method_configuration = payment_method_configuration
              @payment_method_options = payment_method_options
              @tax = tax
            end

            def self.field_encodings
              @field_encodings = {
                payment_method_options: {
                  kind: :object,
                  fields: {
                    card: {
                      kind: :object,
                      fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
                    },
                  },
                },
              }
            end
          end

          class GroupingBehavior < ::Stripe::RequestParams
            class ByCadence < ::Stripe::RequestParams
              class Day < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  attr_accessor :hour
                  # The minute, from 0 through 59.
                  attr_accessor :minute
                  # The second, from 0 through 59.
                  attr_accessor :second

                  def initialize(hour: nil, minute: nil, second: nil)
                    @hour = hour
                    @minute = minute
                    @second = second
                  end
                end
                # The time at which the daily grouping interval begins.
                attr_accessor :time

                def initialize(time: nil)
                  @time = time
                end
              end

              class Month < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  attr_accessor :hour
                  # The minute, from 0 through 59.
                  attr_accessor :minute
                  # The second, from 0 through 59.
                  attr_accessor :second

                  def initialize(hour: nil, minute: nil, second: nil)
                    @hour = hour
                    @minute = minute
                    @second = second
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                attr_accessor :day_of_month
                # The month of year, from 1 through 12, from which occurrences are calculated. Defaults to the month when the billing group was created.
                attr_accessor :month_of_year
                # The time at which the monthly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                attr_accessor :time

                def initialize(day_of_month: nil, month_of_year: nil, time: nil)
                  @day_of_month = day_of_month
                  @month_of_year = month_of_year
                  @time = time
                end
              end

              class Week < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  attr_accessor :hour
                  # The minute, from 0 through 59.
                  attr_accessor :minute
                  # The second, from 0 through 59.
                  attr_accessor :second

                  def initialize(hour: nil, minute: nil, second: nil)
                    @hour = hour
                    @minute = minute
                    @second = second
                  end
                end
                # The ISO-8601 day of week, from 1 for Monday through 7 for Sunday.
                attr_accessor :day_of_week
                # The time at which the weekly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                attr_accessor :time

                def initialize(day_of_week: nil, time: nil)
                  @day_of_week = day_of_week
                  @time = time
                end
              end

              class Year < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  attr_accessor :hour
                  # The minute, from 0 through 59.
                  attr_accessor :minute
                  # The second, from 0 through 59.
                  attr_accessor :second

                  def initialize(hour: nil, minute: nil, second: nil)
                    @hour = hour
                    @minute = minute
                    @second = second
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                attr_accessor :day_of_month
                # The month of year, from 1 through 12.
                attr_accessor :month_of_year
                # The time at which the yearly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                attr_accessor :time

                def initialize(day_of_month: nil, month_of_year: nil, time: nil)
                  @day_of_month = day_of_month
                  @month_of_year = month_of_year
                  @time = time
                end
              end
              # Timestamp that anchors the recurring grouping cadence.
              attr_accessor :billing_cycle_anchor
              # Daily cadence details.
              attr_accessor :day
              # The number of interval units between groups. Defaults to 1.
              attr_accessor :interval_count
              # Monthly cadence details.
              attr_accessor :month
              # The interval unit for the cadence.
              attr_accessor :type
              # Weekly cadence details.
              attr_accessor :week
              # Yearly cadence details.
              attr_accessor :year

              def initialize(
                billing_cycle_anchor: nil,
                day: nil,
                interval_count: nil,
                month: nil,
                type: nil,
                week: nil,
                year: nil
              )
                @billing_cycle_anchor = billing_cycle_anchor
                @day = day
                @interval_count = interval_count
                @month = month
                @type = type
                @week = week
                @year = year
              end
            end
            # The cadence configuration when type is `by_cadence`.
            attr_accessor :by_cadence
            # The grouping strategy.
            attr_accessor :type

            def initialize(by_cadence: nil, type: nil)
              @by_cadence = by_cadence
              @type = type
            end
          end
          # Billing setting overrides for the group. If omitted, the applicable defaults are used.
          attr_accessor :billing_settings
          # The ID of the Customer object whose invoices are grouped.
          attr_accessor :customer
          # The ID of the PaymentMethod object used by default. If unset, the customer's default payment method is used.
          attr_accessor :default_payment_method
          # The strategy used to group member invoices.
          attr_accessor :grouping_behavior
          # An internal key you can use to find a particular billing group. Maximum length of 200 characters.
          attr_accessor :lookup_key

          def initialize(
            billing_settings: nil,
            customer: nil,
            default_payment_method: nil,
            grouping_behavior: nil,
            lookup_key: nil
          )
            @billing_settings = billing_settings
            @customer = customer
            @default_payment_method = default_payment_method
            @grouping_behavior = grouping_behavior
            @lookup_key = lookup_key
          end

          def self.field_encodings
            @field_encodings = {
              billing_settings: {
                kind: :object,
                fields: {
                  payment_method_options: {
                    kind: :object,
                    fields: {
                      card: {
                        kind: :object,
                        fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
                      },
                    },
                  },
                },
              },
            }
          end
        end
        # Actions to be performed by this Billing Intent.
        attr_accessor :actions
        # ID of an existing Billing Group to use.
        attr_accessor :billing_group
        # Data for creating a new Billing Group.
        attr_accessor :billing_group_data
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_accessor :currency

        def initialize(actions: nil, billing_group: nil, billing_group_data: nil, currency: nil)
          @actions = actions
          @billing_group = billing_group
          @billing_group_data = billing_group_data
          @currency = currency
        end

        def self.field_encodings
          @field_encodings = {
            actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  apply: {
                    kind: :object,
                    fields: {
                      invoice_discount_rule: {
                        kind: :object,
                        fields: {
                          percent_off: { kind: :object, fields: { percent_off: :decimal_string } },
                        },
                      },
                    },
                  },
                },
              },
            },
            billing_group_data: {
              kind: :object,
              fields: {
                billing_settings: {
                  kind: :object,
                  fields: {
                    payment_method_options: {
                      kind: :object,
                      fields: {
                        card: {
                          kind: :object,
                          fields: {
                            mandate_options: { kind: :object, fields: { amount: :int64_string } },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
