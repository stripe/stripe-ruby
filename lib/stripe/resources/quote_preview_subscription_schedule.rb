# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuotePreviewSubscriptionSchedule < APIResource
    OBJECT_NAME = "quote_preview_subscription_schedule"
    def self.object_name
      "quote_preview_subscription_schedule"
    end

    class AppliesTo < Stripe::StripeObject
      attr_reader :new_reference, :subscription_schedule, :type
    end

    class CurrentPhase < Stripe::StripeObject
      attr_reader :end_date, :start_date
    end

    class DefaultSettings < Stripe::StripeObject
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :disabled_reason, :enabled, :liability
      end

      class BillingThresholds < Stripe::StripeObject
        attr_reader :amount_gte, :reset_billing_cycle_anchor
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :account_tax_ids, :days_until_due, :issuer
      end

      class TransferData < Stripe::StripeObject
        attr_reader :amount_percent, :destination
      end
      attr_reader :application_fee_percent, :automatic_tax, :billing_cycle_anchor, :billing_thresholds, :collection_method, :default_payment_method, :description, :invoice_settings, :on_behalf_of, :transfer_data
    end

    class LastPriceMigrationError < Stripe::StripeObject
      class FailedTransition < Stripe::StripeObject
        attr_reader :source_price, :target_price
      end
      attr_reader :errored_at, :failed_transitions, :type
    end

    class Phase < Stripe::StripeObject
      class AddInvoiceItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            attr_reader :timestamp, :type
          end
          attr_reader :coupon, :discount, :discount_end, :promotion_code
        end
        attr_reader :discounts, :price, :quantity, :tax_rates
      end

      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :disabled_reason, :enabled, :liability
      end

      class BillingThresholds < Stripe::StripeObject
        attr_reader :amount_gte, :reset_billing_cycle_anchor
      end

      class Discount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          attr_reader :timestamp, :type
        end
        attr_reader :coupon, :discount, :discount_end, :promotion_code
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :account_tax_ids, :days_until_due, :issuer
      end

      class Item < Stripe::StripeObject
        class BillingThresholds < Stripe::StripeObject
          attr_reader :usage_gte
        end

        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            attr_reader :timestamp, :type
          end
          attr_reader :coupon, :discount, :discount_end, :promotion_code
        end

        class Trial < Stripe::StripeObject
          attr_reader :converts_to, :type
        end
        attr_reader :billing_thresholds, :discounts, :metadata, :plan, :price, :quantity, :tax_rates, :trial
      end

      class PauseCollection < Stripe::StripeObject
        attr_reader :behavior
      end

      class TransferData < Stripe::StripeObject
        attr_reader :amount_percent, :destination
      end

      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          attr_reader :prorate_up_front
        end
        attr_reader :end_behavior
      end
      attr_reader :add_invoice_items, :application_fee_percent, :automatic_tax, :billing_cycle_anchor, :billing_thresholds, :collection_method, :coupon, :currency, :default_payment_method, :default_tax_rates, :description, :discounts, :end_date, :invoice_settings, :items, :metadata, :on_behalf_of, :pause_collection, :proration_behavior, :start_date, :transfer_data, :trial_continuation, :trial_end, :trial_settings
    end

    class Prebilling < Stripe::StripeObject
      attr_reader :invoice, :period_end, :period_start, :update_behavior
    end
    # ID of the Connect Application that created the schedule.
    attr_reader :application
    # Attribute for field applies_to
    attr_reader :applies_to
    # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
    attr_reader :billing_behavior
    # Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
    attr_reader :canceled_at
    # Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
    attr_reader :completed_at
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`.
    attr_reader :current_phase
    # ID of the customer who owns the subscription schedule.
    attr_reader :customer
    # Attribute for field default_settings
    attr_reader :default_settings
    # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
    attr_reader :end_behavior
    # Unique identifier for the object.
    attr_reader :id
    # Details of the most recent price migration that failed for the subscription schedule.
    attr_reader :last_price_migration_error
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Configuration for the subscription schedule's phases.
    attr_reader :phases
    # Time period and invoice for a Subscription billed in advance.
    attr_reader :prebilling
    # Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
    attr_reader :released_at
    # ID of the subscription once managed by the subscription schedule (if it is released).
    attr_reader :released_subscription
    # The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://stripe.com/docs/billing/subscriptions/subscription-schedules).
    attr_reader :status
    # ID of the subscription managed by the subscription schedule.
    attr_reader :subscription
    # ID of the test clock this subscription schedule belongs to.
    attr_reader :test_clock
  end
end
