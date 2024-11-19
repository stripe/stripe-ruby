# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Subscriptions allow you to charge a customer on a recurring basis.
  #
  # Related guide: [Creating subscriptions](https://stripe.com/docs/billing/subscriptions/creating)
  class Subscription < APIResource
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
    class BillingCycleAnchorConfig < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :day_of_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :hour
      sig { returns(T.nilable(Integer)) }
      attr_reader :minute
      sig { returns(T.nilable(Integer)) }
      attr_reader :month
      sig { returns(T.nilable(Integer)) }
      attr_reader :second
    end
    class BillingThresholds < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_gte
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reset_billing_cycle_anchor
    end
    class CancellationDetails < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :comment
      sig { returns(T.nilable(String)) }
      attr_reader :feedback
      sig { returns(T.nilable(String)) }
      attr_reader :reason
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
      sig { returns(Issuer) }
      attr_reader :issuer
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
    class PauseCollection < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :behavior
      sig { returns(T.nilable(Integer)) }
      attr_reader :resumes_at
    end
    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(String) }
          attr_reader :verification_method
        end
        class Bancontact < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :preferred_language
        end
        class Card < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount
            sig { returns(T.nilable(String)) }
            attr_reader :amount_type
            sig { returns(T.nilable(String)) }
            attr_reader :description
          end
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(T.nilable(String)) }
          attr_reader :network
          sig { returns(T.nilable(String)) }
          attr_reader :request_three_d_secure
        end
        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :country
            end
            sig { returns(EuBankTransfer) }
            attr_reader :eu_bank_transfer
            sig { returns(T.nilable(String)) }
            attr_reader :type
          end
          sig { returns(BankTransfer) }
          attr_reader :bank_transfer
          sig { returns(T.nilable(String)) }
          attr_reader :funding_type
        end
        class IdBankTransfer < Stripe::StripeObject; end
        class Konbini < Stripe::StripeObject; end
        class SepaDebit < Stripe::StripeObject; end
        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              sig { returns(T::Array[String]) }
              attr_reader :account_subcategories
              sig { returns(String) }
              attr_reader :institution
            end
            sig { returns(Filters) }
            attr_reader :filters
            sig { returns(T::Array[String]) }
            attr_reader :permissions
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch
          end
          sig { returns(FinancialConnections) }
          attr_reader :financial_connections
          sig { returns(String) }
          attr_reader :verification_method
        end
        sig { returns(T.nilable(AcssDebit)) }
        attr_reader :acss_debit
        sig { returns(T.nilable(Bancontact)) }
        attr_reader :bancontact
        sig { returns(T.nilable(Card)) }
        attr_reader :card
        sig { returns(T.nilable(CustomerBalance)) }
        attr_reader :customer_balance
        sig { returns(T.nilable(IdBankTransfer)) }
        attr_reader :id_bank_transfer
        sig { returns(T.nilable(Konbini)) }
        attr_reader :konbini
        sig { returns(T.nilable(SepaDebit)) }
        attr_reader :sepa_debit
        sig { returns(T.nilable(UsBankAccount)) }
        attr_reader :us_bank_account
      end
      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_method_types
      sig { returns(T.nilable(String)) }
      attr_reader :save_default_payment_method
    end
    class PendingInvoiceItemInterval < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :interval
      sig { returns(Integer) }
      attr_reader :interval_count
    end
    class PendingUpdate < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :billing_cycle_anchor
      sig { returns(Integer) }
      attr_reader :expires_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :prebilling_iterations
      sig { returns(T.nilable(T::Array[Stripe::SubscriptionItem])) }
      attr_reader :subscription_items
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_end
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :trial_from_plan
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
    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :missing_payment_method
      end
      sig { returns(EndBehavior) }
      attr_reader :end_behavior
    end
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect Application that created the subscription.
    attr_reader :application
    sig { returns(T.nilable(Float)) }
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    attr_reader :application_fee_percent
    sig { returns(AutomaticTax) }
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    sig { returns(Integer) }
    # The reference point that aligns future [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle) dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals. The timestamp is in UTC format.
    attr_reader :billing_cycle_anchor
    sig { returns(T.nilable(BillingCycleAnchorConfig)) }
    # The fixed values used to calculate the `billing_cycle_anchor`.
    attr_reader :billing_cycle_anchor_config
    sig { returns(T.nilable(BillingThresholds)) }
    # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    attr_reader :billing_thresholds
    sig { returns(T.nilable(Integer)) }
    # A date in the future at which the subscription will automatically get canceled
    attr_reader :cancel_at
    sig { returns(T::Boolean) }
    # Whether this subscription will (if `status=active`) or did (if `status=canceled`) cancel at the end of the current billing period.
    attr_reader :cancel_at_period_end
    sig { returns(T.nilable(Integer)) }
    # If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
    attr_reader :canceled_at
    sig { returns(T.nilable(CancellationDetails)) }
    # Details about why this subscription was cancelled
    attr_reader :cancellation_details
    sig { returns(String) }
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    attr_reader :collection_method
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(Integer) }
    # End of the current period that the subscription has been invoiced for. At the end of this period, a new invoice will be created.
    attr_reader :current_period_end
    sig { returns(Integer) }
    # Start of the current period that the subscription has been invoiced for.
    attr_reader :current_period_start
    sig { returns(T.any(String, Stripe::Customer)) }
    # ID of the customer who owns the subscription.
    attr_reader :customer
    sig { returns(T.nilable(Integer)) }
    # Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
    attr_reader :days_until_due
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    attr_reader :default_payment_method
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    attr_reader :default_source
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
    attr_reader :default_tax_rates
    sig { returns(T.nilable(String)) }
    # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    attr_reader :description
    sig { returns(T.nilable(Stripe::Discount)) }
    # Describes the current discount applied to this subscription, if there is one. When billing, a discount applied to a subscription overrides a discount applied on a customer-wide basis. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
    attr_reader :discount
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    # The discounts applied to the subscription. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(T.nilable(Integer)) }
    # If the subscription has ended, the date the subscription ended.
    attr_reader :ended_at
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(InvoiceSettings) }
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    sig { returns(Stripe::ListObject) }
    # List of subscription items, each with an attached price.
    attr_reader :items
    sig { returns(T.nilable(LastPriceMigrationError)) }
    # Details of the most recent price migration that failed for the subscription.
    attr_reader :last_price_migration_error
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # The most recent invoice this subscription has generated.
    attr_reader :latest_invoice
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(Integer)) }
    # Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
    attr_reader :next_pending_invoice_item_invoice
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account (if any) the charge was made on behalf of for charges associated with this subscription. See the Connect documentation for details.
    attr_reader :on_behalf_of
    sig { returns(T.nilable(PauseCollection)) }
    # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
    attr_reader :pause_collection
    sig { returns(T.nilable(PaymentSettings)) }
    # Payment settings passed on to invoices created by the subscription.
    attr_reader :payment_settings
    sig { returns(T.nilable(PendingInvoiceItemInterval)) }
    # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
    attr_reader :pending_invoice_item_interval
    sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
    # You can use this [SetupIntent](https://stripe.com/docs/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication#scenario-2).
    attr_reader :pending_setup_intent
    sig { returns(T.nilable(PendingUpdate)) }
    # If specified, [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates) that will be applied to the subscription once the `latest_invoice` has been paid.
    attr_reader :pending_update
    sig { returns(T.nilable(Prebilling)) }
    # Time period and invoice for a Subscription billed in advance.
    attr_reader :prebilling
    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    # The schedule attached to the subscription
    attr_reader :schedule
    sig { returns(Integer) }
    # Date when the subscription was first created. The date might differ from the `created` date due to backdating.
    attr_reader :start_date
    sig { returns(String) }
    # Possible values are `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, `unpaid`, or `paused`.
    #
    # For `collection_method=charge_automatically` a subscription moves into `incomplete` if the initial payment attempt fails. A subscription in this status can only have metadata and default_source updated. Once the first invoice is paid, the subscription moves into an `active` status. If the first invoice is not paid within 23 hours, the subscription transitions to `incomplete_expired`. This is a terminal status, the open invoice will be voided and no further invoices will be generated.
    #
    # A subscription that is currently in a trial period is `trialing` and moves to `active` when the trial period is over.
    #
    # A subscription can only enter a `paused` status [when a trial ends without a payment method](https://stripe.com/docs/billing/subscriptions/trials#create-free-trials-without-payment). A `paused` subscription doesn't generate invoices and can be resumed after your customer adds their payment method. The `paused` status is different from [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment), which still generates invoices and leaves the subscription's status unchanged.
    #
    # If subscription `collection_method=charge_automatically`, it becomes `past_due` when payment is required but cannot be paid (due to failed payment or awaiting additional user actions). Once Stripe has exhausted all payment retry attempts, the subscription will become `canceled` or `unpaid` (depending on your subscriptions settings).
    #
    # If subscription `collection_method=send_invoice` it becomes `past_due` when its invoice is not paid by the due date, and `canceled` or `unpaid` if it is still not paid by an additional deadline after that. Note that when a subscription has a status of `unpaid`, no subsequent invoices will be attempted (invoices will be created, but then immediately automatically closed). After receiving updated payment information from a customer, you may choose to reopen and pay their closed invoices.
    attr_reader :status
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock this subscription belongs to.
    attr_reader :test_clock
    sig { returns(T.nilable(TransferData)) }
    # The account (if any) the subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
    attr_reader :transfer_data
    sig { returns(T.nilable(Integer)) }
    # If the subscription has a trial, the end of that trial.
    attr_reader :trial_end
    sig { returns(T.nilable(TrialSettings)) }
    # Settings related to subscription trials.
    attr_reader :trial_settings
    sig { returns(T.nilable(Integer)) }
    # If the subscription has a trial, the beginning of that trial.
    attr_reader :trial_start
  end
end