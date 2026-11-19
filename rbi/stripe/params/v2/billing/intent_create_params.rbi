# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class IntentCreateParams < ::Stripe::RequestParams
        class Action < ::Stripe::RequestParams
          class Apply < ::Stripe::RequestParams
            class Discount < ::Stripe::RequestParams
              # The ID of the Coupon to apply.
              sig { returns(T.nilable(String)) }
              def coupon; end
              sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
              def coupon=(_coupon); end
              # The ID of the PromotionCode to apply.
              sig { returns(T.nilable(String)) }
              def promotion_code; end
              sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
              def promotion_code=(_promotion_code); end
              # Type of the discount.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(coupon: T.nilable(String), promotion_code: T.nilable(String), type: String).void
               }
              def initialize(coupon: nil, promotion_code: nil, type: nil); end
            end
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the apply action takes effect. Only present if type is timestamp. Only allowed for discount actions.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the apply action takes effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class InvoiceDiscountRule < ::Stripe::RequestParams
              class PercentOff < ::Stripe::RequestParams
                class MaximumApplications < ::Stripe::RequestParams
                  # The type of maximum applications configuration.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig { params(type: String).void }
                  def initialize(type: nil); end
                end
                # The maximum number of times this discount can be applied for this billing group.
                sig {
                  returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications)
                 }
                def maximum_applications; end
                sig {
                  params(_maximum_applications: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications).returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications)
                 }
                def maximum_applications=(_maximum_applications); end
                # Percent that is taken off the amount. For example, a percent_off of 50.0 reduces a 100 USD amount to 50 USD.
                sig { returns(BigDecimal) }
                def percent_off; end
                sig { params(_percent_off: BigDecimal).returns(BigDecimal) }
                def percent_off=(_percent_off); end
                sig {
                  params(maximum_applications: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff::MaximumApplications, percent_off: BigDecimal).void
                 }
                def initialize(maximum_applications: nil, percent_off: nil); end
                def self.field_encodings
                  @field_encodings = {percent_off: :decimal_string}
                end
              end
              # The entity that the discount rule applies to, for example, the billing group.
              sig { returns(String) }
              def applies_to; end
              sig { params(_applies_to: String).returns(String) }
              def applies_to=(_applies_to); end
              # Configuration for percentage off discount.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff))
               }
              def percent_off; end
              sig {
                params(_percent_off: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff))
               }
              def percent_off=(_percent_off); end
              # Type of the discount rule.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(applies_to: String, percent_off: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule::PercentOff), type: String).void
               }
              def initialize(applies_to: nil, percent_off: nil, type: nil); end
              def self.field_encodings
                @field_encodings = {
                  percent_off: {kind: :object, fields: {percent_off: :decimal_string}},
                }
              end
            end
            class SpendModifierRule < ::Stripe::RequestParams
              class MaxBillingPeriodSpend < ::Stripe::RequestParams
                class Amount < ::Stripe::RequestParams
                  class CustomPricingUnit < ::Stripe::RequestParams
                    # The id of the custom pricing unit.
                    sig { returns(T.nilable(String)) }
                    def id; end
                    sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
                    def id=(_id); end
                    # The value of the custom pricing unit.
                    sig { returns(String) }
                    def value; end
                    sig { params(_value: String).returns(String) }
                    def value=(_value); end
                    sig { params(id: T.nilable(String), value: String).void }
                    def initialize(id: nil, value: nil); end
                  end
                  # The custom pricing unit amount.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit))
                   }
                  def custom_pricing_unit; end
                  sig {
                    params(_custom_pricing_unit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit))
                   }
                  def custom_pricing_unit=(_custom_pricing_unit); end
                  # The type of the amount.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(custom_pricing_unit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit), type: String).void
                   }
                  def initialize(custom_pricing_unit: nil, type: nil); end
                end
                class CustomPricingUnitOverageRate < ::Stripe::RequestParams
                  # ID of the custom pricing unit overage rate.
                  sig { returns(String) }
                  def id; end
                  sig { params(_id: String).returns(String) }
                  def id=(_id); end
                  sig { params(id: String).void }
                  def initialize(id: nil); end
                end
                # The maximum amount allowed for the billing period.
                sig {
                  returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount)
                 }
                def amount; end
                sig {
                  params(_amount: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount).returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount)
                 }
                def amount=(_amount); end
                # The configuration for the overage rate for the custom pricing unit.
                sig {
                  returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::CustomPricingUnitOverageRate)
                 }
                def custom_pricing_unit_overage_rate; end
                sig {
                  params(_custom_pricing_unit_overage_rate: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::CustomPricingUnitOverageRate).returns(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::CustomPricingUnitOverageRate)
                 }
                def custom_pricing_unit_overage_rate=(_custom_pricing_unit_overage_rate); end
                sig {
                  params(amount: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount, custom_pricing_unit_overage_rate: ::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::CustomPricingUnitOverageRate).void
                 }
                def initialize(amount: nil, custom_pricing_unit_overage_rate: nil); end
              end
              # What the spend modifier applies to.
              sig { returns(String) }
              def applies_to; end
              sig { params(_applies_to: String).returns(String) }
              def applies_to=(_applies_to); end
              # Details for max billing period spend modifier. Only present if type is max_billing_period_spend.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend))
               }
              def max_billing_period_spend; end
              sig {
                params(_max_billing_period_spend: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend))
               }
              def max_billing_period_spend=(_max_billing_period_spend); end
              # Type of the spend modifier.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(applies_to: String, max_billing_period_spend: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend), type: String).void
               }
              def initialize(applies_to: nil, max_billing_period_spend: nil, type: nil); end
            end
            # Details for applying a discount.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::Discount))
             }
            def discount; end
            sig {
              params(_discount: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::Discount)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::Discount))
             }
            def discount=(_discount); end
            # When the apply action takes effect. If not specified, defaults to on_reserve.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::EffectiveAt)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for applying a discount rule to future invoices.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule))
             }
            def invoice_discount_rule; end
            sig {
              params(_invoice_discount_rule: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule))
             }
            def invoice_discount_rule=(_invoice_discount_rule); end
            # Details for applying a spend modifier rule. Only present if type is spend_modifier_rule.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule))
             }
            def spend_modifier_rule; end
            sig {
              params(_spend_modifier_rule: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule))
             }
            def spend_modifier_rule=(_spend_modifier_rule); end
            # Type of the apply action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(discount: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::Discount), effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::EffectiveAt), invoice_discount_rule: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::InvoiceDiscountRule), spend_modifier_rule: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule), type: String).void
             }
            def initialize(
              discount: nil,
              effective_at: nil,
              invoice_discount_rule: nil,
              spend_modifier_rule: nil,
              type: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                invoice_discount_rule: {
                  kind: :object,
                  fields: {percent_off: {kind: :object, fields: {percent_off: :decimal_string}}},
                },
              }
            end
          end
          class Deactivate < ::Stripe::RequestParams
            class CancellationDetails < ::Stripe::RequestParams
              # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
              sig { returns(T.nilable(String)) }
              def comment; end
              sig { params(_comment: T.nilable(String)).returns(T.nilable(String)) }
              def comment=(_comment); end
              # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
              sig { returns(T.nilable(String)) }
              def feedback; end
              sig { params(_feedback: T.nilable(String)).returns(T.nilable(String)) }
              def feedback=(_feedback); end
              sig { params(comment: T.nilable(String), feedback: T.nilable(String)).void }
              def initialize(comment: nil, feedback: nil); end
            end
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the deactivate action takes effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the deactivate action takes effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is deactivating. If not specified, defaults to none.
                    sig { returns(String) }
                    def credit_proration_behavior; end
                    sig { params(_credit_proration_behavior: String).returns(String) }
                    def credit_proration_behavior=(_credit_proration_behavior); end
                    sig { params(credit_proration_behavior: String).void }
                    def initialize(credit_proration_behavior: nil); end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee; end
                  sig {
                    params(_license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee=(_license_fee); end
                  # The type of behavior to override.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee), type: String).void
                   }
                  def initialize(license_fee: nil, type: nil); end
                end
                # Configurations for behaviors when the action takes effect during the service period.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors; end
                sig {
                  params(_partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors=(_partial_period_behaviors); end
                sig {
                  params(partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).void
                 }
                def initialize(partial_period_behaviors: nil); end
              end
              # Configurations for overriding behaviors related to the subscription.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides; end
              sig {
                params(_overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides=(_overrides); end
              # ID of the pricing plan subscription to deactivate.
              sig { returns(String) }
              def pricing_plan_subscription; end
              sig { params(_pricing_plan_subscription: String).returns(String) }
              def pricing_plan_subscription=(_pricing_plan_subscription); end
              sig {
                params(overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails::Overrides), pricing_plan_subscription: String).void
               }
              def initialize(overrides: nil, pricing_plan_subscription: nil); end
            end
            # Details about why the cancellation is being requested.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::CancellationDetails))
             }
            def cancellation_details; end
            sig {
              params(_cancellation_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::CancellationDetails)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::CancellationDetails))
             }
            def cancellation_details=(_cancellation_details); end
            # When the invoice is collected. If not specified, the default behavior is on_effective_at.
            sig { returns(T.nilable(String)) }
            def collect_at; end
            sig { params(_collect_at: T.nilable(String)).returns(T.nilable(String)) }
            def collect_at=(_collect_at); end
            # When the deactivate action takes effect. If not specified, the default behavior is on_reserve.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for deactivating a pricing plan subscription.
            sig {
              returns(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails).returns(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(cancellation_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::CancellationDetails), collect_at: T.nilable(String), effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::EffectiveAt), pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetails, type: String).void
             }
            def initialize(
              cancellation_details: nil,
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            ); end
          end
          class Modify < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the modify action takes effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the modify action takes effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
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
                # Quantity of the component to be used.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                sig {
                  params(lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String), quantity: T.nilable(Integer)).void
                 }
                def initialize(lookup_key: nil, pricing_plan_component: nil, quantity: nil); end
              end
              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                    sig { returns(String) }
                    def credit_proration_behavior; end
                    sig { params(_credit_proration_behavior: String).returns(String) }
                    def credit_proration_behavior=(_credit_proration_behavior); end
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user modifies the subscription. If not specified, defaults to prorated.
                    sig { returns(String) }
                    def debit_proration_behavior; end
                    sig { params(_debit_proration_behavior: String).returns(String) }
                    def debit_proration_behavior=(_debit_proration_behavior); end
                    sig {
                      params(credit_proration_behavior: String, debit_proration_behavior: String).void
                     }
                    def initialize(
                      credit_proration_behavior: nil,
                      debit_proration_behavior: nil
                    ); end
                  end
                  class RecurringCreditGrant < ::Stripe::RequestParams
                    # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                    sig { returns(String) }
                    def create_behavior; end
                    sig { params(_create_behavior: String).returns(String) }
                    def create_behavior=(_create_behavior); end
                    sig { params(create_behavior: String).void }
                    def initialize(create_behavior: nil); end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee; end
                  sig {
                    params(_license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee=(_license_fee); end
                  # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant))
                   }
                  def recurring_credit_grant; end
                  sig {
                    params(_recurring_credit_grant: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant))
                   }
                  def recurring_credit_grant=(_recurring_credit_grant); end
                  # The type of behavior to override.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee), recurring_credit_grant: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant), type: String).void
                   }
                  def initialize(license_fee: nil, recurring_credit_grant: nil, type: nil); end
                end
                # Configurations for behaviors when the action takes effect during the service period.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors; end
                sig {
                  params(_partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors=(_partial_period_behaviors); end
                sig {
                  params(partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).void
                 }
                def initialize(partial_period_behaviors: nil); end
              end
              # New configurations for the components of the pricing plan.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations; end
              sig {
                params(_component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration])).returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]))
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
              # Configurations for overriding behaviors related to the subscription.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides; end
              sig {
                params(_overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides=(_overrides); end
              # The ID of the Pricing Plan Subscription to modify.
              sig { returns(String) }
              def pricing_plan_subscription; end
              sig { params(_pricing_plan_subscription: String).returns(String) }
              def pricing_plan_subscription=(_pricing_plan_subscription); end
              sig {
                params(component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::ComponentConfiguration]), new_pricing_plan: T.nilable(String), new_pricing_plan_version: T.nilable(String), overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails::Overrides), pricing_plan_subscription: String).void
               }
              def initialize(
                component_configurations: nil,
                new_pricing_plan: nil,
                new_pricing_plan_version: nil,
                overrides: nil,
                pricing_plan_subscription: nil
              ); end
            end
            # When the invoice is collected. If not specified, the default behavior is next_billing_date.
            sig { returns(T.nilable(String)) }
            def collect_at; end
            sig { params(_collect_at: T.nilable(String)).returns(T.nilable(String)) }
            def collect_at=(_collect_at); end
            # When the modify action takes effect. If not specified, the default behavior is on_reserve.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for modifying a pricing plan subscription.
            sig {
              returns(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails).returns(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails)
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(collect_at: T.nilable(String), effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify::EffectiveAt), pricing_plan_subscription_details: ::Stripe::V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetails, type: String).void
             }
            def initialize(
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil
            ); end
          end
          class Remove < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # When the remove action takes effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # When the remove action takes effect. If not specified, defaults to on_reserve.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove::EffectiveAt)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # The ID of the discount rule to remove for future invoices.
            sig { returns(T.nilable(String)) }
            def invoice_discount_rule; end
            sig { params(_invoice_discount_rule: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_discount_rule=(_invoice_discount_rule); end
            # The ID of the spend modifier rule to remove.
            sig { returns(T.nilable(String)) }
            def spend_modifier_rule; end
            sig { params(_spend_modifier_rule: T.nilable(String)).returns(T.nilable(String)) }
            def spend_modifier_rule=(_spend_modifier_rule); end
            # Type of the remove action.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove::EffectiveAt), invoice_discount_rule: T.nilable(String), spend_modifier_rule: T.nilable(String), type: String).void
             }
            def initialize(
              effective_at: nil,
              invoice_discount_rule: nil,
              spend_modifier_rule: nil,
              type: nil
            ); end
          end
          class Subscribe < ::Stripe::RequestParams
            class EffectiveAt < ::Stripe::RequestParams
              # The timestamp at which the subscribe action takes effect. Only present if type is timestamp.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # When the subscribe action takes effect.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class PricingPlanSubscriptionDetails < ::Stripe::RequestParams
              class ComponentConfiguration < ::Stripe::RequestParams
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
                # Quantity of the component to be used.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                sig {
                  params(lookup_key: T.nilable(String), pricing_plan_component: T.nilable(String), quantity: T.nilable(Integer)).void
                 }
                def initialize(lookup_key: nil, pricing_plan_component: nil, quantity: nil); end
              end
              class Overrides < ::Stripe::RequestParams
                class PartialPeriodBehavior < ::Stripe::RequestParams
                  class LicenseFee < ::Stripe::RequestParams
                    # The proration behavior for the partial servicing period. Defines how we prorate the license fee when the user is subscribing. If not specified, defaults to prorated.
                    sig { returns(String) }
                    def debit_proration_behavior; end
                    sig { params(_debit_proration_behavior: String).returns(String) }
                    def debit_proration_behavior=(_debit_proration_behavior); end
                    sig { params(debit_proration_behavior: String).void }
                    def initialize(debit_proration_behavior: nil); end
                  end
                  class RecurringCreditGrant < ::Stripe::RequestParams
                    # Controls credit grant creation behavior during partial periods. If not specified, defaults to full_credits.
                    sig { returns(String) }
                    def create_behavior; end
                    sig { params(_create_behavior: String).returns(String) }
                    def create_behavior=(_create_behavior); end
                    sig { params(create_behavior: String).void }
                    def initialize(create_behavior: nil); end
                  end
                  # Overrides the behavior for license fee components when the action takes effect during the service period.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee; end
                  sig {
                    params(_license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee))
                   }
                  def license_fee=(_license_fee); end
                  # Overrides the behavior for recurring credit grant components when the action takes effect during the service period.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant))
                   }
                  def recurring_credit_grant; end
                  sig {
                    params(_recurring_credit_grant: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant))
                   }
                  def recurring_credit_grant=(_recurring_credit_grant); end
                  # The type of behavior to override.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(license_fee: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::LicenseFee), recurring_credit_grant: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior::RecurringCreditGrant), type: String).void
                   }
                  def initialize(license_fee: nil, recurring_credit_grant: nil, type: nil); end
                end
                # Configurations for behaviors when the action takes effect during the service period.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors; end
                sig {
                  params(_partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior])
                 }
                def partial_period_behaviors=(_partial_period_behaviors); end
                sig {
                  params(partial_period_behaviors: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides::PartialPeriodBehavior]).void
                 }
                def initialize(partial_period_behaviors: nil); end
              end
              # Configurations for the components of the pricing plan.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations; end
              sig {
                params(_component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration])).returns(T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]))
               }
              def component_configurations=(_component_configurations); end
              # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              def metadata; end
              sig {
                params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
               }
              def metadata=(_metadata); end
              # Configurations for overriding behaviors related to the subscription.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides; end
              sig {
                params(_overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides))
               }
              def overrides=(_overrides); end
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
                params(component_configurations: T.nilable(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::ComponentConfiguration]), metadata: T.nilable(T::Hash[String, String]), overrides: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails::Overrides), pricing_plan: String, pricing_plan_version: String).void
               }
              def initialize(
                component_configurations: nil,
                metadata: nil,
                overrides: nil,
                pricing_plan: nil,
                pricing_plan_version: nil
              ); end
            end
            class V1SubscriptionDetails < ::Stripe::RequestParams
              class Item < ::Stripe::RequestParams
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
                # Quantity for this item. If not provided, defaults to 1.
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
                returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item])
               }
              def items; end
              sig {
                params(_items: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item]).returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item])
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
                params(description: T.nilable(String), items: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails::Item], metadata: T.nilable(T::Hash[String, String])).void
               }
              def initialize(description: nil, items: nil, metadata: nil); end
            end
            # When the invoice is collected. If not specified, defaults to on_effective_at.
            sig { returns(T.nilable(String)) }
            def collect_at; end
            sig { params(_collect_at: T.nilable(String)).returns(T.nilable(String)) }
            def collect_at=(_collect_at); end
            # When the subscribe action takes effect. If not specified, the default behavior is on_reserve.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt))
             }
            def effective_at; end
            sig {
              params(_effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt))
             }
            def effective_at=(_effective_at); end
            # Details for subscribing to a pricing plan.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails))
             }
            def pricing_plan_subscription_details; end
            sig {
              params(_pricing_plan_subscription_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails))
             }
            def pricing_plan_subscription_details=(_pricing_plan_subscription_details); end
            # Type of the action details.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Details for subscribing to a v1 subscription.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails))
             }
            def v1_subscription_details; end
            sig {
              params(_v1_subscription_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails))
             }
            def v1_subscription_details=(_v1_subscription_details); end
            sig {
              params(collect_at: T.nilable(String), effective_at: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::EffectiveAt), pricing_plan_subscription_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetails), type: String, v1_subscription_details: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe::V1SubscriptionDetails)).void
             }
            def initialize(
              collect_at: nil,
              effective_at: nil,
              pricing_plan_subscription_details: nil,
              type: nil,
              v1_subscription_details: nil
            ); end
          end
          # Details for an apply action.
          sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply)) }
          def apply; end
          sig {
            params(_apply: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply))
           }
          def apply=(_apply); end
          # Details for a deactivate action.
          sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate)) }
          def deactivate; end
          sig {
            params(_deactivate: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate))
           }
          def deactivate=(_deactivate); end
          # Details for a modify action.
          sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify)) }
          def modify; end
          sig {
            params(_modify: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify))
           }
          def modify=(_modify); end
          # Details for a remove action.
          sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove)) }
          def remove; end
          sig {
            params(_remove: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove))
           }
          def remove=(_remove); end
          # Details for a subscribe action.
          sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe)) }
          def subscribe; end
          sig {
            params(_subscribe: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe))
           }
          def subscribe=(_subscribe); end
          # Type of the Billing Intent action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(apply: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Apply), deactivate: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Deactivate), modify: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Modify), remove: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Remove), subscribe: T.nilable(::Stripe::V2::Billing::IntentCreateParams::Action::Subscribe), type: String).void
           }
          def initialize(
            apply: nil,
            deactivate: nil,
            modify: nil,
            remove: nil,
            subscribe: nil,
            type: nil
          ); end
          def self.field_encodings
            @field_encodings = {
              apply: {
                kind: :object,
                fields: {
                  invoice_discount_rule: {
                    kind: :object,
                    fields: {percent_off: {kind: :object, fields: {percent_off: :decimal_string}}},
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
                sig { returns(T.nilable(T::Boolean)) }
                def enabled; end
                sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
                def enabled=(_enabled); end
                # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
                sig { returns(T.nilable(T::Boolean)) }
                def include_payment_link; end
                sig {
                  params(_include_payment_link: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
                 }
                def include_payment_link=(_include_payment_link); end
                sig {
                  params(enabled: T.nilable(T::Boolean), include_payment_link: T.nilable(T::Boolean)).void
                 }
                def initialize(enabled: nil, include_payment_link: nil); end
              end
              # Controls emails for when the payment is due. Omit to use the applicable default.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery::PaymentDue))
               }
              def payment_due; end
              sig {
                params(_payment_due: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery::PaymentDue)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery::PaymentDue))
               }
              def payment_due=(_payment_due); end
              sig {
                params(payment_due: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery::PaymentDue)).void
               }
              def initialize(payment_due: nil); end
            end
            class InvoicePresentation < ::Stripe::RequestParams
              # The ID of the invoice rendering template to be used when generating invoices. Omit to use the applicable default.
              sig { returns(T.nilable(String)) }
              def invoice_rendering_template; end
              sig {
                params(_invoice_rendering_template: T.nilable(String)).returns(T.nilable(String))
               }
              def invoice_rendering_template=(_invoice_rendering_template); end
              sig { params(invoice_rendering_template: T.nilable(String)).void }
              def initialize(invoice_rendering_template: nil); end
            end
            class InvoiceTimeUntilDue < ::Stripe::RequestParams
              # The interval unit for the time until due.
              sig { returns(String) }
              def interval; end
              sig { params(_interval: String).returns(String) }
              def interval=(_interval); end
              # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
              sig { returns(Integer) }
              def interval_count; end
              sig { params(_interval_count: Integer).returns(Integer) }
              def interval_count=(_interval_count); end
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            class PaymentMethodOptions < ::Stripe::RequestParams
              class AcssDebit < ::Stripe::RequestParams
                class MandateOptions < ::Stripe::RequestParams
                  # Transaction type of the mandate.
                  sig { returns(T.nilable(String)) }
                  def transaction_type; end
                  sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
                  def transaction_type=(_transaction_type); end
                  sig { params(transaction_type: T.nilable(String)).void }
                  def initialize(transaction_type: nil); end
                end
                # Additional fields for Mandate creation.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
                 }
                def mandate_options; end
                sig {
                  params(_mandate_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
                 }
                def mandate_options=(_mandate_options); end
                # Verification method.
                sig { returns(T.nilable(String)) }
                def verification_method; end
                sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
                def verification_method=(_verification_method); end
                sig {
                  params(mandate_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
                 }
                def initialize(mandate_options: nil, verification_method: nil); end
              end
              class Bancontact < ::Stripe::RequestParams
                # Preferred language of the Bancontact authorization page that the customer is redirected to.
                sig { returns(T.nilable(String)) }
                def preferred_language; end
                sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
                def preferred_language=(_preferred_language); end
                sig { params(preferred_language: T.nilable(String)).void }
                def initialize(preferred_language: nil); end
              end
              class Card < ::Stripe::RequestParams
                class MandateOptions < ::Stripe::RequestParams
                  # Amount to be charged for future payments.
                  sig { returns(T.nilable(Integer)) }
                  def amount; end
                  sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def amount=(_amount); end
                  # The AmountType for the mandate. One of `fixed` or `maximum`.
                  sig { returns(T.nilable(String)) }
                  def amount_type; end
                  sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
                  def amount_type=(_amount_type); end
                  # A description of the mandate that is meant to be displayed to the customer.
                  sig { returns(T.nilable(String)) }
                  def description; end
                  sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
                  def description=(_description); end
                  sig {
                    params(amount: T.nilable(Integer), amount_type: T.nilable(String), description: T.nilable(String)).void
                   }
                  def initialize(amount: nil, amount_type: nil, description: nil); end
                  def self.field_encodings
                    @field_encodings = {amount: :int64_string}
                  end
                end
                # Configuration options for setting up an eMandate for cards issued in India.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card::MandateOptions))
                 }
                def mandate_options; end
                sig {
                  params(_mandate_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card::MandateOptions))
                 }
                def mandate_options=(_mandate_options); end
                # Selected network to process the payment on. Depends on the available networks of the card.
                sig { returns(T.nilable(String)) }
                def network; end
                sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
                def network=(_network); end
                # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
                # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
                # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
                # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
                sig { returns(T.nilable(String)) }
                def request_three_d_secure; end
                sig {
                  params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String))
                 }
                def request_three_d_secure=(_request_three_d_secure); end
                sig {
                  params(mandate_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card::MandateOptions), network: T.nilable(String), request_three_d_secure: T.nilable(String)).void
                 }
                def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
                def self.field_encodings
                  @field_encodings = {
                    mandate_options: {kind: :object, fields: {amount: :int64_string}},
                  }
                end
              end
              class CustomerBalance < ::Stripe::RequestParams
                class BankTransfer < ::Stripe::RequestParams
                  class EuBankTransfer < ::Stripe::RequestParams
                    # The desired country code of the bank account information.
                    sig { returns(String) }
                    def country; end
                    sig { params(_country: String).returns(String) }
                    def country=(_country); end
                    sig { params(country: String).void }
                    def initialize(country: nil); end
                  end
                  # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                   }
                  def eu_bank_transfer; end
                  sig {
                    params(_eu_bank_transfer: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                   }
                  def eu_bank_transfer=(_eu_bank_transfer); end
                  # The bank transfer type that can be used for funding.
                  sig { returns(T.nilable(String)) }
                  def type; end
                  sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
                  def type=(_type); end
                  sig {
                    params(eu_bank_transfer: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
                   }
                  def initialize(eu_bank_transfer: nil, type: nil); end
                end
                # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
                 }
                def bank_transfer; end
                sig {
                  params(_bank_transfer: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
                 }
                def bank_transfer=(_bank_transfer); end
                # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
                sig { returns(T.nilable(String)) }
                def funding_type; end
                sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
                def funding_type=(_funding_type); end
                sig {
                  params(bank_transfer: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
                 }
                def initialize(bank_transfer: nil, funding_type: nil); end
              end
              class Konbini < ::Stripe::RequestParams; end
              class SepaDebit < ::Stripe::RequestParams; end
              class UsBankAccount < ::Stripe::RequestParams
                class FinancialConnections < ::Stripe::RequestParams
                  class Filters < ::Stripe::RequestParams
                    # The account subcategories to use to filter for selectable accounts.
                    sig { returns(T.nilable(T::Array[String])) }
                    def account_subcategories; end
                    sig {
                      params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                     }
                    def account_subcategories=(_account_subcategories); end
                    sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                    def initialize(account_subcategories: nil); end
                  end
                  # Provide filters for the linked accounts that the customer can select for the payment method.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                   }
                  def filters; end
                  sig {
                    params(_filters: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                   }
                  def filters=(_filters); end
                  # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                  sig { returns(T.nilable(T::Array[String])) }
                  def permissions; end
                  sig {
                    params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                   }
                  def permissions=(_permissions); end
                  # List of data features that you would like to retrieve upon account creation.
                  sig { returns(T.nilable(T::Array[String])) }
                  def prefetch; end
                  sig {
                    params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                   }
                  def prefetch=(_prefetch); end
                  sig {
                    params(filters: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
                   }
                  def initialize(filters: nil, permissions: nil, prefetch: nil); end
                end
                # Additional fields for Financial Connections Session creation.
                sig {
                  returns(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
                 }
                def financial_connections; end
                sig {
                  params(_financial_connections: ::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections).returns(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
                 }
                def financial_connections=(_financial_connections); end
                # Verification method.
                sig { returns(String) }
                def verification_method; end
                sig { params(_verification_method: String).returns(String) }
                def verification_method=(_verification_method); end
                sig {
                  params(financial_connections: ::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
                 }
                def initialize(financial_connections: nil, verification_method: nil); end
              end
              # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit))
               }
              def acss_debit; end
              sig {
                params(_acss_debit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit))
               }
              def acss_debit=(_acss_debit); end
              # This sub-hash contains details about the Bancontact payment method.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Bancontact))
               }
              def bancontact; end
              sig {
                params(_bancontact: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Bancontact)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Bancontact))
               }
              def bancontact=(_bancontact); end
              # This sub-hash contains details about the Card payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card))
               }
              def card; end
              sig {
                params(_card: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card))
               }
              def card=(_card); end
              # This sub-hash contains details about the Bank transfer payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance))
               }
              def customer_balance; end
              sig {
                params(_customer_balance: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance))
               }
              def customer_balance=(_customer_balance); end
              # This sub-hash contains details about the Konbini payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Konbini))
               }
              def konbini; end
              sig {
                params(_konbini: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Konbini)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Konbini))
               }
              def konbini=(_konbini); end
              # This sub-hash contains details about the SEPA Direct Debit payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::SepaDebit))
               }
              def sepa_debit; end
              sig {
                params(_sepa_debit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::SepaDebit))
               }
              def sepa_debit=(_sepa_debit); end
              # This sub-hash contains details about the ACH direct debit payment method options.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount))
               }
              def us_bank_account; end
              sig {
                params(_us_bank_account: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount))
               }
              def us_bank_account=(_us_bank_account); end
              sig {
                params(acss_debit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::CustomerBalance), konbini: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions::UsBankAccount)).void
               }
              def initialize(
                acss_debit: nil,
                bancontact: nil,
                card: nil,
                customer_balance: nil,
                konbini: nil,
                sepa_debit: nil,
                us_bank_account: nil
              ); end
              def self.field_encodings
                @field_encodings = {
                  card: {
                    kind: :object,
                    fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                  },
                }
              end
            end
            class Tax < ::Stripe::RequestParams
              # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business. Omit to use the applicable default.
              sig { returns(T.nilable(String)) }
              def type; end
              sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
              def type=(_type); end
              sig { params(type: T.nilable(String)).void }
              def initialize(type: nil); end
            end
            # How Stripe collects payment.
            sig { returns(T.nilable(String)) }
            def collection_method; end
            sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
            def collection_method=(_collection_method); end
            # Email delivery setting.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery))
             }
            def email_delivery; end
            sig {
              params(_email_delivery: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery))
             }
            def email_delivery=(_email_delivery); end
            # Settings for invoice presentation.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoicePresentation))
             }
            def invoice_presentation; end
            sig {
              params(_invoice_presentation: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoicePresentation)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoicePresentation))
             }
            def invoice_presentation=(_invoice_presentation); end
            # The amount of time until the invoice is overdue for payment.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoiceTimeUntilDue))
             }
            def invoice_time_until_due; end
            sig {
              params(_invoice_time_until_due: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoiceTimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoiceTimeUntilDue))
             }
            def invoice_time_until_due=(_invoice_time_until_due); end
            # The ID of the payment method configuration, which controls which payment methods are displayed to your customers.
            sig { returns(T.nilable(String)) }
            def payment_method_configuration; end
            sig {
              params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String))
             }
            def payment_method_configuration=(_payment_method_configuration); end
            # Payment Method specific configuration to be stored on the object.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions))
             }
            def payment_method_options; end
            sig {
              params(_payment_method_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions))
             }
            def payment_method_options=(_payment_method_options); end
            # Settings for calculating tax.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::Tax))
             }
            def tax; end
            sig {
              params(_tax: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::Tax)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::Tax))
             }
            def tax=(_tax); end
            sig {
              params(collection_method: T.nilable(String), email_delivery: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::EmailDelivery), invoice_presentation: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoicePresentation), invoice_time_until_due: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::InvoiceTimeUntilDue), payment_method_configuration: T.nilable(String), payment_method_options: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::PaymentMethodOptions), tax: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings::Tax)).void
             }
            def initialize(
              collection_method: nil,
              email_delivery: nil,
              invoice_presentation: nil,
              invoice_time_until_due: nil,
              payment_method_configuration: nil,
              payment_method_options: nil,
              tax: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                payment_method_options: {
                  kind: :object,
                  fields: {
                    card: {
                      kind: :object,
                      fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
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
                  sig { returns(Integer) }
                  def hour; end
                  sig { params(_hour: Integer).returns(Integer) }
                  def hour=(_hour); end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  sig { params(_minute: Integer).returns(Integer) }
                  def minute=(_minute); end
                  # The second, from 0 through 59.
                  sig { returns(Integer) }
                  def second; end
                  sig { params(_second: Integer).returns(Integer) }
                  def second=(_second); end
                  sig { params(hour: Integer, minute: Integer, second: Integer).void }
                  def initialize(hour: nil, minute: nil, second: nil); end
                end
                # The time at which the daily grouping interval begins.
                sig {
                  returns(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day::Time)
                 }
                def time; end
                sig {
                  params(_time: ::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day::Time).returns(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day::Time)
                 }
                def time=(_time); end
                sig {
                  params(time: ::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day::Time).void
                 }
                def initialize(time: nil); end
              end
              class Month < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  sig { params(_hour: Integer).returns(Integer) }
                  def hour=(_hour); end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  sig { params(_minute: Integer).returns(Integer) }
                  def minute=(_minute); end
                  # The second, from 0 through 59.
                  sig { returns(Integer) }
                  def second; end
                  sig { params(_second: Integer).returns(Integer) }
                  def second=(_second); end
                  sig { params(hour: Integer, minute: Integer, second: Integer).void }
                  def initialize(hour: nil, minute: nil, second: nil); end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                sig { returns(Integer) }
                def day_of_month; end
                sig { params(_day_of_month: Integer).returns(Integer) }
                def day_of_month=(_day_of_month); end
                # The month of year, from 1 through 12, from which occurrences are calculated. Defaults to the month when the billing group was created.
                sig { returns(T.nilable(Integer)) }
                def month_of_year; end
                sig { params(_month_of_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def month_of_year=(_month_of_year); end
                # The time at which the monthly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month::Time))
                 }
                def time; end
                sig {
                  params(_time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month::Time)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month::Time))
                 }
                def time=(_time); end
                sig {
                  params(day_of_month: Integer, month_of_year: T.nilable(Integer), time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month::Time)).void
                 }
                def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
              end
              class Week < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  sig { params(_hour: Integer).returns(Integer) }
                  def hour=(_hour); end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  sig { params(_minute: Integer).returns(Integer) }
                  def minute=(_minute); end
                  # The second, from 0 through 59.
                  sig { returns(Integer) }
                  def second; end
                  sig { params(_second: Integer).returns(Integer) }
                  def second=(_second); end
                  sig { params(hour: Integer, minute: Integer, second: Integer).void }
                  def initialize(hour: nil, minute: nil, second: nil); end
                end
                # The ISO-8601 day of week, from 1 for Monday through 7 for Sunday.
                sig { returns(Integer) }
                def day_of_week; end
                sig { params(_day_of_week: Integer).returns(Integer) }
                def day_of_week=(_day_of_week); end
                # The time at which the weekly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week::Time))
                 }
                def time; end
                sig {
                  params(_time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week::Time)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week::Time))
                 }
                def time=(_time); end
                sig {
                  params(day_of_week: Integer, time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week::Time)).void
                 }
                def initialize(day_of_week: nil, time: nil); end
              end
              class Year < ::Stripe::RequestParams
                class Time < ::Stripe::RequestParams
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  sig { params(_hour: Integer).returns(Integer) }
                  def hour=(_hour); end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  sig { params(_minute: Integer).returns(Integer) }
                  def minute=(_minute); end
                  # The second, from 0 through 59.
                  sig { returns(Integer) }
                  def second; end
                  sig { params(_second: Integer).returns(Integer) }
                  def second=(_second); end
                  sig { params(hour: Integer, minute: Integer, second: Integer).void }
                  def initialize(hour: nil, minute: nil, second: nil); end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                sig { returns(Integer) }
                def day_of_month; end
                sig { params(_day_of_month: Integer).returns(Integer) }
                def day_of_month=(_day_of_month); end
                # The month of year, from 1 through 12.
                sig { returns(Integer) }
                def month_of_year; end
                sig { params(_month_of_year: Integer).returns(Integer) }
                def month_of_year=(_month_of_year); end
                # The time at which the yearly grouping interval begins. Defaults to the time the billing group is created, in UTC.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year::Time))
                 }
                def time; end
                sig {
                  params(_time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year::Time)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year::Time))
                 }
                def time=(_time); end
                sig {
                  params(day_of_month: Integer, month_of_year: Integer, time: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year::Time)).void
                 }
                def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
              end
              # Timestamp that anchors the recurring grouping cadence.
              sig { returns(T.nilable(String)) }
              def billing_cycle_anchor; end
              sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
              def billing_cycle_anchor=(_billing_cycle_anchor); end
              # Daily cadence details.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day))
               }
              def day; end
              sig {
                params(_day: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day))
               }
              def day=(_day); end
              # The number of interval units between groups. Defaults to 1.
              sig { returns(T.nilable(Integer)) }
              def interval_count; end
              sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def interval_count=(_interval_count); end
              # Monthly cadence details.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month))
               }
              def month; end
              sig {
                params(_month: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month))
               }
              def month=(_month); end
              # The interval unit for the cadence.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              # Weekly cadence details.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week))
               }
              def week; end
              sig {
                params(_week: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week))
               }
              def week=(_week); end
              # Yearly cadence details.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year))
               }
              def year; end
              sig {
                params(_year: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year))
               }
              def year=(_year); end
              sig {
                params(billing_cycle_anchor: T.nilable(String), day: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Day), interval_count: T.nilable(Integer), month: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Month), type: String, week: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Week), year: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence::Year)).void
               }
              def initialize(
                billing_cycle_anchor: nil,
                day: nil,
                interval_count: nil,
                month: nil,
                type: nil,
                week: nil,
                year: nil
              ); end
            end
            # The cadence configuration when type is `by_cadence`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence))
             }
            def by_cadence; end
            sig {
              params(_by_cadence: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence))
             }
            def by_cadence=(_by_cadence); end
            # The grouping strategy.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(by_cadence: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior::ByCadence), type: String).void
             }
            def initialize(by_cadence: nil, type: nil); end
          end
          # Billing setting overrides for the group. If omitted, the applicable defaults are used.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings))
           }
          def billing_settings; end
          sig {
            params(_billing_settings: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings))
           }
          def billing_settings=(_billing_settings); end
          # The ID of the Customer object whose invoices are grouped.
          sig { returns(String) }
          def customer; end
          sig { params(_customer: String).returns(String) }
          def customer=(_customer); end
          # The ID of the PaymentMethod object used by default. If unset, the customer's default payment method is used.
          sig { returns(T.nilable(String)) }
          def default_payment_method; end
          sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def default_payment_method=(_default_payment_method); end
          # The strategy used to group member invoices.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior))
           }
          def grouping_behavior; end
          sig {
            params(_grouping_behavior: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior))
           }
          def grouping_behavior=(_grouping_behavior); end
          # An internal key you can use to find a particular billing group. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          sig {
            params(billing_settings: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::BillingSettings), customer: String, default_payment_method: T.nilable(String), grouping_behavior: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData::GroupingBehavior), lookup_key: T.nilable(String)).void
           }
          def initialize(
            billing_settings: nil,
            customer: nil,
            default_payment_method: nil,
            grouping_behavior: nil,
            lookup_key: nil
          ); end
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
                        fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                      },
                    },
                  },
                },
              },
            }
          end
        end
        # Actions to be performed by this Billing Intent.
        sig { returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action]) }
        def actions; end
        sig {
          params(_actions: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action]).returns(T::Array[::Stripe::V2::Billing::IntentCreateParams::Action])
         }
        def actions=(_actions); end
        # ID of an existing Billing Group to use.
        sig { returns(T.nilable(String)) }
        def billing_group; end
        sig { params(_billing_group: T.nilable(String)).returns(T.nilable(String)) }
        def billing_group=(_billing_group); end
        # Data for creating a new Billing Group.
        sig { returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData)) }
        def billing_group_data; end
        sig {
          params(_billing_group_data: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData)).returns(T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData))
         }
        def billing_group_data=(_billing_group_data); end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        sig {
          params(actions: T::Array[::Stripe::V2::Billing::IntentCreateParams::Action], billing_group: T.nilable(String), billing_group_data: T.nilable(::Stripe::V2::Billing::IntentCreateParams::BillingGroupData), currency: String).void
         }
        def initialize(
          actions: nil,
          billing_group: nil,
          billing_group_data: nil,
          currency: nil
        ); end
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
                          percent_off: {kind: :object, fields: {percent_off: :decimal_string}},
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
                            mandate_options: {kind: :object, fields: {amount: :int64_string}},
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