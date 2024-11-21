# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Subscriptions allow you to charge a customer on a recurring basis.
  #
  # Related guide: [Creating subscriptions](https://stripe.com/docs/billing/subscriptions/creating)
  class Subscription < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # Whether Stripe automatically computes tax on this subscription.
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
    end
    class BillingCycleAnchorConfig < Stripe::StripeObject
      # The day of the month of the billing_cycle_anchor.
      sig { returns(Integer) }
      attr_reader :day_of_month
      # The hour of the day of the billing_cycle_anchor.
      sig { returns(T.nilable(Integer)) }
      attr_reader :hour
      # The minute of the hour of the billing_cycle_anchor.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minute
      # The month to start full cycle billing periods.
      sig { returns(T.nilable(Integer)) }
      attr_reader :month
      # The second of the minute of the billing_cycle_anchor.
      sig { returns(T.nilable(Integer)) }
      attr_reader :second
    end
    class BillingThresholds < Stripe::StripeObject
      # Monetary threshold that triggers the subscription to create an invoice
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_gte
      # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be `true` if the subscription contains items with plans that have `aggregate_usage=last_ever`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reset_billing_cycle_anchor
    end
    class CancellationDetails < Stripe::StripeObject
      # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
      sig { returns(T.nilable(String)) }
      attr_reader :comment
      # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
      sig { returns(T.nilable(String)) }
      attr_reader :feedback
      # Why this subscription was canceled.
      sig { returns(T.nilable(String)) }
      attr_reader :reason
    end
    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # The account tax IDs associated with the subscription. Will be set on invoices generated by the subscription.
      sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
      attr_reader :account_tax_ids
      # Attribute for field issuer
      sig { returns(Issuer) }
      attr_reader :issuer
    end
    class LastPriceMigrationError < Stripe::StripeObject
      class FailedTransition < Stripe::StripeObject
        # The original price to be migrated.
        sig { returns(String) }
        attr_reader :source_price
        # The intended resulting price of the migration.
        sig { returns(String) }
        attr_reader :target_price
      end
      # The time at which the price migration encountered an error.
      sig { returns(Integer) }
      attr_reader :errored_at
      # The involved price pairs in each failed transition.
      sig { returns(T::Array[FailedTransition]) }
      attr_reader :failed_transitions
      # The type of error encountered by the price migration.
      sig { returns(String) }
      attr_reader :type
    end
    class PauseCollection < Stripe::StripeObject
      # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
      sig { returns(String) }
      attr_reader :behavior
      # The time after which the subscription will resume collecting payments.
      sig { returns(T.nilable(Integer)) }
      attr_reader :resumes_at
    end
    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Bank account verification method.
          sig { returns(String) }
          attr_reader :verification_method
        end
        class Bancontact < Stripe::StripeObject
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(String) }
          attr_reader :preferred_language
        end
        class Card < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # Amount to be charged for future payments.
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(T.nilable(String)) }
            attr_reader :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_reader :description
          end
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_reader :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_reader :request_three_d_secure
        end
        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              attr_reader :country
            end
            # Attribute for field eu_bank_transfer
            sig { returns(EuBankTransfer) }
            attr_reader :eu_bank_transfer
            # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_reader :type
          end
          # Attribute for field bank_transfer
          sig { returns(BankTransfer) }
          attr_reader :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          attr_reader :funding_type
        end
        class IdBankTransfer < Stripe::StripeObject; end
        class Konbini < Stripe::StripeObject; end
        class SepaDebit < Stripe::StripeObject; end
        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_reader :account_subcategories
              # The institution to use to filter for possible accounts to link.
              sig { returns(String) }
              attr_reader :institution
            end
            # Attribute for field filters
            sig { returns(Filters) }
            attr_reader :filters
            # The list of permissions to request. The `payment_method` permission must be included.
            sig { returns(T::Array[String]) }
            attr_reader :permissions
            # Data features requested to be retrieved upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch
          end
          # Attribute for field financial_connections
          sig { returns(FinancialConnections) }
          attr_reader :financial_connections
          # Bank account verification method.
          sig { returns(String) }
          attr_reader :verification_method
        end
        # This sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(AcssDebit)) }
        attr_reader :acss_debit
        # This sub-hash contains details about the Bancontact payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(Bancontact)) }
        attr_reader :bancontact
        # This sub-hash contains details about the Card payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(Card)) }
        attr_reader :card
        # This sub-hash contains details about the Bank transfer payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(CustomerBalance)) }
        attr_reader :customer_balance
        # This sub-hash contains details about the Indonesia bank transfer payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(IdBankTransfer)) }
        attr_reader :id_bank_transfer
        # This sub-hash contains details about the Konbini payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(Konbini)) }
        attr_reader :konbini
        # This sub-hash contains details about the SEPA Direct Debit payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(SepaDebit)) }
        attr_reader :sepa_debit
        # This sub-hash contains details about the ACH direct debit payment method options to pass to invoices created by the subscription.
        sig { returns(T.nilable(UsBankAccount)) }
        attr_reader :us_bank_account
      end
      # Payment-method-specific configuration to provide to invoices created by the subscription.
      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options
      # The list of payment method types to provide to every invoice created by the subscription. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_method_types
      # Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off`.
      sig { returns(T.nilable(String)) }
      attr_reader :save_default_payment_method
    end
    class PendingInvoiceItemInterval < Stripe::StripeObject
      # Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
      sig { returns(String) }
      attr_reader :interval
      # The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
      sig { returns(Integer) }
      attr_reader :interval_count
    end
    class PendingUpdate < Stripe::StripeObject
      # If the update is applied, determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
      sig { returns(T.nilable(Integer)) }
      attr_reader :billing_cycle_anchor
      # The point after which the changes reflected by this update will be discarded and no longer applied.
      sig { returns(Integer) }
      attr_reader :expires_at
      # The number of iterations of prebilling to apply.
      sig { returns(T.nilable(Integer)) }
      attr_reader :prebilling_iterations
      # List of subscription items, each with an attached plan, that will be set if the update is applied.
      sig { returns(T.nilable(T::Array[Stripe::SubscriptionItem])) }
      attr_reader :subscription_items
      # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time, if the update is applied.
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_end
      # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :trial_from_plan
    end
    class Prebilling < Stripe::StripeObject
      # ID of the prebilling invoice.
      sig { returns(T.any(String, Stripe::Invoice)) }
      attr_reader :invoice
      # The end of the last period for which the invoice pre-bills.
      sig { returns(Integer) }
      attr_reader :period_end
      # The start of the first period for which the invoice pre-bills.
      sig { returns(Integer) }
      attr_reader :period_start
      # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period.
      sig { returns(String) }
      attr_reader :update_behavior
    end
    class TransferData < Stripe::StripeObject
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent
      # The account where funds from the payment will be transferred to upon payment success.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
        sig { returns(String) }
        attr_reader :missing_payment_method
      end
      # Defines how a subscription behaves when a free trial ends.
      sig { returns(EndBehavior) }
      attr_reader :end_behavior
    end
    # ID of the Connect Application that created the subscription.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent

    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    # The reference point that aligns future [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle) dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals. The timestamp is in UTC format.
    sig { returns(Integer) }
    attr_reader :billing_cycle_anchor

    # The fixed values used to calculate the `billing_cycle_anchor`.
    sig { returns(T.nilable(BillingCycleAnchorConfig)) }
    attr_reader :billing_cycle_anchor_config

    # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    sig { returns(T.nilable(BillingThresholds)) }
    attr_reader :billing_thresholds

    # A date in the future at which the subscription will automatically get canceled
    sig { returns(T.nilable(Integer)) }
    attr_reader :cancel_at

    # Whether this subscription will (if `status=active`) or did (if `status=canceled`) cancel at the end of the current billing period.
    sig { returns(T::Boolean) }
    attr_reader :cancel_at_period_end

    # If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
    sig { returns(T.nilable(Integer)) }
    attr_reader :canceled_at

    # Details about why this subscription was cancelled
    sig { returns(T.nilable(CancellationDetails)) }
    attr_reader :cancellation_details

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    sig { returns(String) }
    attr_reader :collection_method

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # End of the current period that the subscription has been invoiced for. At the end of this period, a new invoice will be created.
    sig { returns(Integer) }
    attr_reader :current_period_end

    # Start of the current period that the subscription has been invoiced for.
    sig { returns(Integer) }
    attr_reader :current_period_start

    # ID of the customer who owns the subscription.
    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    # Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :days_until_due

    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :default_payment_method

    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    attr_reader :default_source

    # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :default_tax_rates

    # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # Describes the current discount applied to this subscription, if there is one. When billing, a discount applied to a subscription overrides a discount applied on a customer-wide basis. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
    sig { returns(T.nilable(Stripe::Discount)) }
    attr_reader :discount

    # The discounts applied to the subscription. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    # If the subscription has ended, the date the subscription ended.
    sig { returns(T.nilable(Integer)) }
    attr_reader :ended_at

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Attribute for field invoice_settings
    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings

    # List of subscription items, each with an attached price.
    sig { returns(Stripe::ListObject) }
    attr_reader :items

    # Details of the most recent price migration that failed for the subscription.
    sig { returns(T.nilable(LastPriceMigrationError)) }
    attr_reader :last_price_migration_error

    # The most recent invoice this subscription has generated.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :latest_invoice

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :next_pending_invoice_item_invoice

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The account (if any) the charge was made on behalf of for charges associated with this subscription. See the Connect documentation for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
    sig { returns(T.nilable(PauseCollection)) }
    attr_reader :pause_collection

    # Payment settings passed on to invoices created by the subscription.
    sig { returns(T.nilable(PaymentSettings)) }
    attr_reader :payment_settings

    # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
    sig { returns(T.nilable(PendingInvoiceItemInterval)) }
    attr_reader :pending_invoice_item_interval

    # You can use this [SetupIntent](https://stripe.com/docs/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication#scenario-2).
    sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
    attr_reader :pending_setup_intent

    # If specified, [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates) that will be applied to the subscription once the `latest_invoice` has been paid.
    sig { returns(T.nilable(PendingUpdate)) }
    attr_reader :pending_update

    # Time period and invoice for a Subscription billed in advance.
    sig { returns(T.nilable(Prebilling)) }
    attr_reader :prebilling

    # The schedule attached to the subscription
    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    attr_reader :schedule

    # Date when the subscription was first created. The date might differ from the `created` date due to backdating.
    sig { returns(Integer) }
    attr_reader :start_date

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
    sig { returns(String) }
    attr_reader :status

    # ID of the test clock this subscription belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    # The account (if any) the subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    # If the subscription has a trial, the end of that trial.
    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_end

    # Settings related to subscription trials.
    sig { returns(T.nilable(TrialSettings)) }
    attr_reader :trial_settings

    # If the subscription has a trial, the beginning of that trial.
    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_start
  end
end