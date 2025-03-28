# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuotePreviewSubscriptionSchedule < APIResource
    OBJECT_NAME = "quote_preview_subscription_schedule"
    def self.object_name
      "quote_preview_subscription_schedule"
    end

    class AppliesTo < Stripe::StripeObject
      # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
      attr_reader :new_reference
      # The ID of the schedule the line applies to.
      attr_reader :subscription_schedule
      # Describes whether the quote line is affecting a new schedule or an existing schedule.
      attr_reader :type
    end

    class CurrentPhase < Stripe::StripeObject
      # The end of this phase of the subscription schedule.
      attr_reader :end_date
      # The start of this phase of the subscription schedule.
      attr_reader :start_date
    end

    class DefaultSettings < Stripe::StripeObject
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end
        # If Stripe disabled automatic tax, this enum describes why.
        attr_reader :disabled_reason
        # Whether Stripe automatically computes tax on invoices created during this phase.
        attr_reader :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_reader :liability
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end
        # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
        attr_reader :account_tax_ids
        # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
        attr_reader :days_until_due
        # Attribute for field issuer
        attr_reader :issuer
      end

      class TransferData < Stripe::StripeObject
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
        attr_reader :amount_percent
        # The account where funds from the payment will be transferred to upon payment success.
        attr_reader :destination
      end
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
      attr_reader :application_fee_percent
      # Attribute for field automatic_tax
      attr_reader :automatic_tax
      # Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
      attr_reader :billing_cycle_anchor
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
      attr_reader :collection_method
      # ID of the default payment method for the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
      attr_reader :default_payment_method
      # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # Attribute for field invoice_settings
      attr_reader :invoice_settings
      # The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
      attr_reader :on_behalf_of
      # The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
      attr_reader :transfer_data
    end

    class LastPriceMigrationError < Stripe::StripeObject
      class FailedTransition < Stripe::StripeObject
        # The original price to be migrated.
        attr_reader :source_price
        # The intended resulting price of the migration.
        attr_reader :target_price
      end
      # The time at which the price migration encountered an error.
      attr_reader :errored_at
      # The involved price pairs in each failed transition.
      attr_reader :failed_transitions
      # The type of error encountered by the price migration.
      attr_reader :type
    end

    class Phase < Stripe::StripeObject
      class AddInvoiceItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            # The discount end timestamp.
            attr_reader :timestamp
            # The discount end type.
            attr_reader :type
          end
          # ID of the coupon to create a new discount for.
          attr_reader :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_reader :discount
          # Details to determine how long the discount should be applied for.
          attr_reader :discount_end
          # ID of the promotion code to create a new discount for.
          attr_reader :promotion_code
        end
        # The stackable discounts that will be applied to the item.
        attr_reader :discounts
        # ID of the price used to generate the invoice item.
        attr_reader :price
        # The quantity of the invoice item.
        attr_reader :quantity
        # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
        attr_reader :tax_rates
      end

      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end
        # If Stripe disabled automatic tax, this enum describes why.
        attr_reader :disabled_reason
        # Whether Stripe automatically computes tax on invoices created during this phase.
        attr_reader :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_reader :liability
      end

      class Discount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          # The discount end timestamp.
          attr_reader :timestamp
          # The discount end type.
          attr_reader :type
        end
        # ID of the coupon to create a new discount for.
        attr_reader :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_reader :discount
        # Details to determine how long the discount should be applied for.
        attr_reader :discount_end
        # ID of the promotion code to create a new discount for.
        attr_reader :promotion_code
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end
        # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
        attr_reader :account_tax_ids
        # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
        attr_reader :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        attr_reader :issuer
      end

      class Item < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            # The discount end timestamp.
            attr_reader :timestamp
            # The discount end type.
            attr_reader :type
          end
          # ID of the coupon to create a new discount for.
          attr_reader :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_reader :discount
          # Details to determine how long the discount should be applied for.
          attr_reader :discount_end
          # ID of the promotion code to create a new discount for.
          attr_reader :promotion_code
        end

        class Trial < Stripe::StripeObject
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
          attr_reader :converts_to
          # Determines the type of trial for this item.
          attr_reader :type
        end
        # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
        attr_reader :discounts
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
        attr_reader :metadata
        # ID of the plan to which the customer should be subscribed.
        attr_reader :plan
        # ID of the price to which the customer should be subscribed.
        attr_reader :price
        # Quantity of the plan to which the customer should be subscribed.
        attr_reader :quantity
        # The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
        attr_reader :tax_rates
        # Options that configure the trial on the subscription item.
        attr_reader :trial
      end

      class PauseCollection < Stripe::StripeObject
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        attr_reader :behavior
      end

      class TransferData < Stripe::StripeObject
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
        attr_reader :amount_percent
        # The account where funds from the payment will be transferred to upon payment success.
        attr_reader :destination
      end

      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
          attr_reader :prorate_up_front
        end
        # Defines how the subscription should behave when a trial ends.
        attr_reader :end_behavior
      end
      # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase.
      attr_reader :add_invoice_items
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
      attr_reader :application_fee_percent
      # Attribute for field automatic_tax
      attr_reader :automatic_tax
      # Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
      attr_reader :billing_cycle_anchor
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
      attr_reader :collection_method
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
      attr_reader :default_payment_method
      # The default tax rates to apply to the subscription during this phase of the subscription schedule.
      attr_reader :default_tax_rates
      # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # The stackable discounts that will be applied to the subscription on this phase. Subscription item discounts are applied before subscription discounts.
      attr_reader :discounts
      # The end of this phase of the subscription schedule.
      attr_reader :end_date
      # The invoice settings applicable during this phase.
      attr_reader :invoice_settings
      # Subscription items to configure the subscription to during this phase of the subscription schedule.
      attr_reader :items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered. Updating the underlying subscription's `metadata` directly will not affect the current phase's `metadata`.
      attr_reader :metadata
      # The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
      attr_reader :on_behalf_of
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
      attr_reader :pause_collection
      # If the subscription schedule will prorate when transitioning to this phase. Possible values are `create_prorations` and `none`.
      attr_reader :proration_behavior
      # The start of this phase of the subscription schedule.
      attr_reader :start_date
      # The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
      attr_reader :transfer_data
      # Specify behavior of the trial when crossing schedule phase boundaries
      attr_reader :trial_continuation
      # When the trial ends within the phase.
      attr_reader :trial_end
      # Settings related to any trials on the subscription during this phase.
      attr_reader :trial_settings
    end

    class Prebilling < Stripe::StripeObject
      # ID of the prebilling invoice.
      attr_reader :invoice
      # The end of the last period for which the invoice pre-bills.
      attr_reader :period_end
      # The start of the first period for which the invoice pre-bills.
      attr_reader :period_start
      # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period.
      attr_reader :update_behavior
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
    # ID of the account who owns the subscription schedule.
    attr_reader :customer_account
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
