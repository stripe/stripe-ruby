# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class QuotePreviewSubscriptionSchedule < APIResource
    class AppliesTo < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :new_reference
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_schedule
      sig { returns(String) }
      attr_reader :type
    end
    class CurrentPhase < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end_date
      sig { returns(Integer) }
      attr_reader :start_date
    end
    class DefaultSettings < Stripe::StripeObject
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
      end
      class BillingThresholds < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_gte
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reset_billing_cycle_anchor
      end
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids
        sig { returns(T.nilable(Integer)) }
        attr_reader :days_until_due
        sig { returns(Issuer) }
        attr_reader :issuer
      end
      class TransferData < Stripe::StripeObject
        sig { returns(T.nilable(Float)) }
        attr_reader :amount_percent
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :destination
      end
      sig { returns(T.nilable(Float)) }
      attr_reader :application_fee_percent
      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax
      sig { returns(String) }
      attr_reader :billing_cycle_anchor
      sig { returns(T.nilable(BillingThresholds)) }
      attr_reader :billing_thresholds
      sig { returns(T.nilable(String)) }
      attr_reader :collection_method
      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(InvoiceSettings) }
      attr_reader :invoice_settings
      sig { returns(T.nilable(T.any(String, Stripe::Account))) }
      attr_reader :on_behalf_of
      sig { returns(T.nilable(TransferData)) }
      attr_reader :transfer_data
    end
    class LastPriceMigrationError < Stripe::StripeObject
      class FailedTransition < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :source_price
        sig { returns(String) }
        attr_reader :target_price
      end
      sig { returns(Integer) }
      attr_reader :errored_at
      sig { returns(T::Array[FailedTransition]) }
      attr_reader :failed_transitions
      sig { returns(String) }
      attr_reader :type
    end
    class Phase < Stripe::StripeObject
      class AddInvoiceItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :timestamp
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon
          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount
          sig { returns(T.nilable(DiscountEnd)) }
          attr_reader :discount_end
          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity
        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
      end
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
      end
      class BillingThresholds < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_gte
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reset_billing_cycle_anchor
      end
      class Discount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon
        sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
        attr_reader :discount
        sig { returns(T.nilable(DiscountEnd)) }
        attr_reader :discount_end
        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
      end
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids
        sig { returns(T.nilable(Integer)) }
        attr_reader :days_until_due
        sig { returns(T.nilable(Issuer)) }
        attr_reader :issuer
      end
      class Item < Stripe::StripeObject
        class BillingThresholds < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :usage_gte
        end
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :timestamp
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon
          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount
          sig { returns(T.nilable(DiscountEnd)) }
          attr_reader :discount_end
          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end
        class Trial < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :converts_to
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(BillingThresholds)) }
        attr_reader :billing_thresholds
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        sig { returns(T.any(String, Stripe::Plan)) }
        attr_reader :plan
        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price
        sig { returns(Integer) }
        attr_reader :quantity
        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
        sig { returns(T.nilable(Trial)) }
        attr_reader :trial
      end
      class PauseCollection < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :behavior
      end
      class TransferData < Stripe::StripeObject
        sig { returns(T.nilable(Float)) }
        attr_reader :amount_percent
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :destination
      end
      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :prorate_up_front
        end
        sig { returns(T.nilable(EndBehavior)) }
        attr_reader :end_behavior
      end
      sig { returns(T::Array[AddInvoiceItem]) }
      attr_reader :add_invoice_items
      sig { returns(T.nilable(Float)) }
      attr_reader :application_fee_percent
      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax
      sig { returns(T.nilable(String)) }
      attr_reader :billing_cycle_anchor
      sig { returns(T.nilable(BillingThresholds)) }
      attr_reader :billing_thresholds
      sig { returns(T.nilable(String)) }
      attr_reader :collection_method
      sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
      attr_reader :coupon
      sig { returns(String) }
      attr_reader :currency
      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method
      sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
      attr_reader :default_tax_rates
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T::Array[Discount]) }
      attr_reader :discounts
      sig { returns(Integer) }
      attr_reader :end_date
      sig { returns(T.nilable(InvoiceSettings)) }
      attr_reader :invoice_settings
      sig { returns(T::Array[Item]) }
      attr_reader :items
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      sig { returns(T.nilable(T.any(String, Stripe::Account))) }
      attr_reader :on_behalf_of
      sig { returns(T.nilable(PauseCollection)) }
      attr_reader :pause_collection
      sig { returns(String) }
      attr_reader :proration_behavior
      sig { returns(Integer) }
      attr_reader :start_date
      sig { returns(T.nilable(TransferData)) }
      attr_reader :transfer_data
      sig { returns(T.nilable(String)) }
      attr_reader :trial_continuation
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_end
      sig { returns(T.nilable(TrialSettings)) }
      attr_reader :trial_settings
    end
    class Prebilling < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Invoice)) }
      attr_reader :invoice
      sig { returns(Integer) }
      attr_reader :period_end
      sig { returns(Integer) }
      attr_reader :period_start
      sig { returns(String) }
      attr_reader :update_behavior
    end
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect Application that created the schedule.
    attr_reader :application
    sig { returns(AppliesTo) }
    # Attribute for field applies_to
    attr_reader :applies_to
    sig { returns(String) }
    # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
    attr_reader :billing_behavior
    sig { returns(T.nilable(Integer)) }
    # Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
    attr_reader :canceled_at
    sig { returns(T.nilable(Integer)) }
    # Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
    attr_reader :completed_at
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(CurrentPhase)) }
    # Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`.
    attr_reader :current_phase
    sig { returns(T.any(String, Stripe::Customer)) }
    # ID of the customer who owns the subscription schedule.
    attr_reader :customer
    sig { returns(DefaultSettings) }
    # Attribute for field default_settings
    attr_reader :default_settings
    sig { returns(String) }
    # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
    attr_reader :end_behavior
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(LastPriceMigrationError)) }
    # Details of the most recent price migration that failed for the subscription schedule.
    attr_reader :last_price_migration_error
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Array[Phase]) }
    # Configuration for the subscription schedule's phases.
    attr_reader :phases
    sig { returns(T.nilable(Prebilling)) }
    # Time period and invoice for a Subscription billed in advance.
    attr_reader :prebilling
    sig { returns(T.nilable(Integer)) }
    # Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
    attr_reader :released_at
    sig { returns(T.nilable(String)) }
    # ID of the subscription once managed by the subscription schedule (if it is released).
    attr_reader :released_subscription
    sig { returns(String) }
    # The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://stripe.com/docs/billing/subscriptions/subscription-schedules).
    attr_reader :status
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    # ID of the subscription managed by the subscription schedule.
    attr_reader :subscription
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock this subscription schedule belongs to.
    attr_reader :test_clock
  end
end