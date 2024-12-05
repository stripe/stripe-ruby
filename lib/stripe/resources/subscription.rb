# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Subscriptions allow you to charge a customer on a recurring basis.
  #
  # Related guide: [Creating subscriptions](https://stripe.com/docs/billing/subscriptions/creating)
  class Subscription < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription"
    def self.object_name
      "subscription"
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        attr_reader :account, :type
      end
      attr_reader :disabled_reason, :enabled, :liability
    end

    class BillingCycleAnchorConfig < Stripe::StripeObject
      attr_reader :day_of_month, :hour, :minute, :month, :second
    end

    class BillingThresholds < Stripe::StripeObject
      attr_reader :amount_gte, :reset_billing_cycle_anchor
    end

    class CancellationDetails < Stripe::StripeObject
      attr_reader :comment, :feedback, :reason
    end

    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        attr_reader :account, :type
      end
      attr_reader :account_tax_ids, :issuer
    end

    class LastPriceMigrationError < Stripe::StripeObject
      class FailedTransition < Stripe::StripeObject
        attr_reader :source_price, :target_price
      end
      attr_reader :errored_at, :failed_transitions, :type
    end

    class PauseCollection < Stripe::StripeObject
      attr_reader :behavior, :resumes_at
    end

    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            attr_reader :transaction_type
          end
          attr_reader :mandate_options, :verification_method
        end

        class Bancontact < Stripe::StripeObject
          attr_reader :preferred_language
        end

        class Card < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            attr_reader :amount, :amount_type, :description
          end
          attr_reader :mandate_options, :network, :request_three_d_secure
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              attr_reader :country
            end
            attr_reader :eu_bank_transfer, :type
          end
          attr_reader :bank_transfer, :funding_type
        end

        class IdBankTransfer < Stripe::StripeObject; end
        class Konbini < Stripe::StripeObject; end
        class SepaDebit < Stripe::StripeObject; end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              attr_reader :account_subcategories, :institution
            end
            attr_reader :filters, :permissions, :prefetch
          end
          attr_reader :financial_connections, :verification_method
        end
        attr_reader :acss_debit, :bancontact, :card, :customer_balance, :id_bank_transfer, :konbini, :sepa_debit, :us_bank_account
      end
      attr_reader :payment_method_options, :payment_method_types, :save_default_payment_method
    end

    class PendingInvoiceItemInterval < Stripe::StripeObject
      attr_reader :interval, :interval_count
    end

    class PendingUpdate < Stripe::StripeObject
      attr_reader :billing_cycle_anchor, :expires_at, :prebilling_iterations, :subscription_items, :trial_end, :trial_from_plan
    end

    class Prebilling < Stripe::StripeObject
      attr_reader :invoice, :period_end, :period_start, :update_behavior
    end

    class TransferData < Stripe::StripeObject
      attr_reader :amount_percent, :destination
    end

    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        attr_reader :missing_payment_method
      end
      attr_reader :end_behavior
    end
    # ID of the Connect Application that created the subscription.
    attr_reader :application
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # The reference point that aligns future [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle) dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals. The timestamp is in UTC format.
    attr_reader :billing_cycle_anchor
    # The fixed values used to calculate the `billing_cycle_anchor`.
    attr_reader :billing_cycle_anchor_config
    # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    attr_reader :billing_thresholds
    # A date in the future at which the subscription will automatically get canceled
    attr_reader :cancel_at
    # Whether this subscription will (if `status=active`) or did (if `status=canceled`) cancel at the end of the current billing period.
    attr_reader :cancel_at_period_end
    # If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
    attr_reader :canceled_at
    # Details about why this subscription was cancelled
    attr_reader :cancellation_details
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    attr_reader :collection_method
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # End of the current period that the subscription has been invoiced for. At the end of this period, a new invoice will be created.
    attr_reader :current_period_end
    # Start of the current period that the subscription has been invoiced for.
    attr_reader :current_period_start
    # ID of the customer who owns the subscription.
    attr_reader :customer
    # Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
    attr_reader :days_until_due
    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    attr_reader :default_payment_method
    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    attr_reader :default_source
    # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
    attr_reader :default_tax_rates
    # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    attr_reader :description
    # Describes the current discount applied to this subscription, if there is one. When billing, a discount applied to a subscription overrides a discount applied on a customer-wide basis. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
    attr_reader :discount
    # The discounts applied to the subscription. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # If the subscription has ended, the date the subscription ended.
    attr_reader :ended_at
    # Unique identifier for the object.
    attr_reader :id
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    # List of subscription items, each with an attached price.
    attr_reader :items
    # Details of the most recent price migration that failed for the subscription.
    attr_reader :last_price_migration_error
    # The most recent invoice this subscription has generated.
    attr_reader :latest_invoice
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
    attr_reader :next_pending_invoice_item_invoice
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) the charge was made on behalf of for charges associated with this subscription. See the Connect documentation for details.
    attr_reader :on_behalf_of
    # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
    attr_reader :pause_collection
    # Payment settings passed on to invoices created by the subscription.
    attr_reader :payment_settings
    # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
    attr_reader :pending_invoice_item_interval
    # You can use this [SetupIntent](https://stripe.com/docs/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication#scenario-2).
    attr_reader :pending_setup_intent
    # If specified, [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates) that will be applied to the subscription once the `latest_invoice` has been paid.
    attr_reader :pending_update
    # Time period and invoice for a Subscription billed in advance.
    attr_reader :prebilling
    # The schedule attached to the subscription
    attr_reader :schedule
    # Date when the subscription was first created. The date might differ from the `created` date due to backdating.
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
    attr_reader :status
    # ID of the test clock this subscription belongs to.
    attr_reader :test_clock
    # The account (if any) the subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
    attr_reader :transfer_data
    # If the subscription has a trial, the end of that trial.
    attr_reader :trial_end
    # Settings related to subscription trials.
    attr_reader :trial_settings
    # If the subscription has a trial, the beginning of that trial.
    attr_reader :trial_start

    # Cancels a customer's subscription immediately. The customer won't be charged again for the subscription. After it's canceled, you can no longer update the subscription or its [metadata](https://stripe.com/metadata).
    #
    # Any pending invoice items that you've created are still charged at the end of the period, unless manually [deleted](https://stripe.com/docs/api#delete_invoiceitem). If you've set the subscription to cancel at the end of the period, any pending prorations are also left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations are removed.
    #
    # By default, upon subscription cancellation, Stripe stops automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscriptions/%<subscription_exposed_id>s", { subscription_exposed_id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels a customer's subscription immediately. The customer won't be charged again for the subscription. After it's canceled, you can no longer update the subscription or its [metadata](https://stripe.com/metadata).
    #
    # Any pending invoice items that you've created are still charged at the end of the period, unless manually [deleted](https://stripe.com/docs/api#delete_invoiceitem). If you've set the subscription to cancel at the end of the period, any pending prorations are also left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations are removed.
    #
    # By default, upon subscription cancellation, Stripe stops automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.
    def self.cancel(subscription_exposed_id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscriptions/%<subscription_exposed_id>s", { subscription_exposed_id: CGI.escape(subscription_exposed_id) }),
        params: params,
        opts: opts
      )
    end

    # Creates a new subscription on an existing customer. Each customer can have up to 500 active or scheduled subscriptions.
    #
    # When you create a subscription with collection_method=charge_automatically, the first invoice is finalized as part of the request.
    # The payment_behavior parameter determines the exact behavior of the initial payment.
    #
    # To start subscriptions where the first invoice always begins in a draft status, use [subscription schedules](https://stripe.com/docs/billing/subscriptions/subscription-schedules#managing) instead.
    # Schedules provide the flexibility to model more complex billing configurations that change over time.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/subscriptions", params: params, opts: opts)
    end

    # Removes the currently applied discount on a subscription.
    def delete_discount(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscriptions/%<subscription_exposed_id>s/discount", { subscription_exposed_id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes the currently applied discount on a subscription.
    def self.delete_discount(subscription_exposed_id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscriptions/%<subscription_exposed_id>s/discount", { subscription_exposed_id: CGI.escape(subscription_exposed_id) }),
        params: params,
        opts: opts
      )
    end

    # By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify status=canceled.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/subscriptions", params: filters, opts: opts)
    end

    # Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become active, and if payment fails the subscription will be past_due. The resumption invoice will void automatically if not paid by the expiration date.
    def resume(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscriptions/%<subscription>s/resume", { subscription: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become active, and if payment fails the subscription will be past_due. The resumption invoice will void automatically if not paid by the expiration date.
    def self.resume(subscription, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscriptions/%<subscription>s/resume", { subscription: CGI.escape(subscription) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/subscriptions/search",
        params: params,
        opts: opts
      )
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates an existing subscription to match the specified parameters.
    # When changing prices or quantities, we optionally prorate the price we charge next month to make up for any price changes.
    # To preview how the proration is calculated, use the [create preview](https://stripe.com/docs/api/invoices/create_preview) endpoint.
    #
    # By default, we prorate subscription changes. For example, if a customer signs up on May 1 for a 100 price, they'll be billed 100 immediately. If on May 15 they switch to a 200 price, then on June 1 they'll be billed 250 (200 for a renewal of her subscription, plus a 50 prorating adjustment for half of the previous month's 100 difference). Similarly, a downgrade generates a credit that is applied to the next invoice. We also prorate when you make quantity changes.
    #
    # Switching prices does not normally change the billing date or generate an immediate charge unless:
    #
    #
    # The billing interval is changed (for example, from monthly to yearly).
    # The subscription moves from free to paid.
    # A trial starts or ends.
    #
    #
    # In these cases, we apply a credit for the unused time on the previous price, immediately charge the customer using the new price, and reset the billing date. Learn about how [Stripe immediately attempts payment for subscription changes](https://stripe.com/docs/billing/subscriptions/upgrade-downgrade#immediate-payment).
    #
    # If you want to charge for an upgrade immediately, pass proration_behavior as always_invoice to create prorations, automatically invoice the customer for those proration adjustments, and attempt to collect payment. If you pass create_prorations, the prorations are created but not automatically invoiced. If you want to bill the customer for the prorations before the subscription's renewal date, you need to manually [invoice the customer](https://stripe.com/docs/api/invoices/create).
    #
    # If you don't want to prorate, set the proration_behavior option to none. With this option, the customer is billed 100 on May 1 and 200 on June 1. Similarly, if you set proration_behavior to none when switching between different billing intervals (for example, from monthly to yearly), we don't generate any credits for the old subscription's unused time. We still reset the billing date and bill immediately for the new subscription.
    #
    # Updating the quantity on a subscription many times in an hour may result in [rate limiting. If you need to bill for a frequently changing quantity, consider integrating <a href="/docs/billing/subscriptions/usage-based">usage-based billing](https://stripe.com/docs/rate-limits) instead.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscriptions/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :source
  end
end
