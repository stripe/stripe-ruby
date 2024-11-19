# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoices are statements of amounts owed by a customer, and are either
  # generated one-off, or generated periodically from a subscription.
  #
  # They contain [invoice items](https://stripe.com/docs/api#invoiceitems), and proration adjustments
  # that may be caused by subscription upgrades/downgrades (if necessary).
  #
  # If your invoice is configured to be billed through automatic charges,
  # Stripe automatically finalizes your invoice and attempts payment. Note
  # that finalizing the invoice,
  # [when automatic](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection), does
  # not happen immediately as the invoice is created. Stripe waits
  # until one hour after the last webhook was successfully sent (or the last
  # webhook timed out after failing). If you (and the platforms you may have
  # connected to) have no webhooks configured, Stripe waits one hour after
  # creation to finalize the invoice.
  #
  # If your invoice is configured to be billed by sending an email, then based on your
  # [email settings](https://dashboard.stripe.com/account/billing/automatic),
  # Stripe will email the invoice to your customer and await payment. These
  # emails can contain a link to a hosted page to pay the invoice.
  #
  # Stripe applies any customer credit on the account before determining the
  # amount due for the invoice (i.e., the amount that will be actually
  # charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge
  # per currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts), the
  # invoice is automatically marked paid, and we add the amount due to the
  # customer's credit balance which is applied to the next invoice.
  #
  # More details on the customer's credit balance are
  # [here](https://stripe.com/docs/billing/customer/balance).
  #
  # Related guide: [Send invoices to customers](https://stripe.com/docs/billing/invoices/sending)
  class Invoice < APIResource
    class AmountsDue < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(Integer) }
      attr_reader :amount_paid
      sig { returns(Integer) }
      attr_reader :amount_remaining
      sig { returns(T.nilable(Integer)) }
      attr_reader :days_until_due
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T.nilable(Integer)) }
      attr_reader :due_date
      sig { returns(T.nilable(Integer)) }
      attr_reader :paid_at
      sig { returns(String) }
      attr_reader :status
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
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class CustomField < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :name
      sig { returns(String) }
      attr_reader :value
    end
    class CustomerAddress < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :state
    end
    class CustomerShipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(Address) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      sig { returns(String) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class CustomerTaxId < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :type
      sig { returns(T.nilable(String)) }
      attr_reader :value
    end
    class FromInvoice < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :action
      sig { returns(T.any(String, Stripe::Invoice)) }
      attr_reader :invoice
    end
    class Issuer < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :account
      sig { returns(String) }
      attr_reader :type
    end
    class LastFinalizationError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge
      sig { returns(String) }
      attr_reader :code
      sig { returns(String) }
      attr_reader :decline_code
      sig { returns(String) }
      attr_reader :doc_url
      sig { returns(String) }
      attr_reader :message
      sig { returns(String) }
      attr_reader :param
      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent
      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method
      sig { returns(String) }
      attr_reader :payment_method_type
      sig { returns(String) }
      attr_reader :request_log_url
      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent
      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source
      sig { returns(String) }
      attr_reader :type
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
          class Installments < Stripe::StripeObject
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :enabled
          end
          sig { returns(Installments) }
          attr_reader :installments
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
      sig { returns(T.nilable(String)) }
      attr_reader :default_mandate
      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_method_types
    end
    class Rendering < Stripe::StripeObject
      class Pdf < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :page_size
      end
      sig { returns(T.nilable(String)) }
      attr_reader :amount_tax_display
      sig { returns(T.nilable(Pdf)) }
      attr_reader :pdf
      sig { returns(T.nilable(String)) }
      attr_reader :template
      sig { returns(T.nilable(Integer)) }
      attr_reader :template_version
    end
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(Stripe::TaxRate) }
        attr_reader :rate
        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason
        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end
      sig { returns(Integer) }
      attr_reader :amount_subtotal
      sig { returns(Integer) }
      attr_reader :amount_tax
      sig { returns(Integer) }
      attr_reader :amount_total
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate
      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end
    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(Address) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      sig { returns(String) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class StatusTransitions < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :marked_uncollectible_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :paid_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :voided_at
    end
    class SubscriptionDetails < Stripe::StripeObject
      class PauseCollection < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :behavior
        sig { returns(T.nilable(Integer)) }
        attr_reader :resumes_at
      end
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      sig { returns(T.nilable(PauseCollection)) }
      attr_reader :pause_collection
    end
    class ThresholdReason < Stripe::StripeObject
      class ItemReason < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :line_item_ids
        sig { returns(Integer) }
        attr_reader :usage_gte
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_gte
      sig { returns(T::Array[ItemReason]) }
      attr_reader :item_reasons
    end
    class TotalDiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class TotalMarginAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
    end
    class TotalPretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
      sig { returns(String) }
      attr_reader :type
    end
    class TotalTaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T::Boolean) }
      attr_reader :inclusive
      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    sig { returns(T.nilable(String)) }
    # The country of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_country
    sig { returns(T.nilable(String)) }
    # The public name of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_name
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
    # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
    attr_reader :account_tax_ids
    sig { returns(Integer) }
    # Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
    attr_reader :amount_due
    sig { returns(Integer) }
    # Amount that was overpaid on the invoice. Overpayments are debited to the customer's credit balance.
    attr_reader :amount_overpaid
    sig { returns(Integer) }
    # The amount, in cents (or local equivalent), that was paid.
    attr_reader :amount_paid
    sig { returns(Integer) }
    # The difference between amount_due and amount_paid, in cents (or local equivalent).
    attr_reader :amount_remaining
    sig { returns(Integer) }
    # This is the sum of all the shipping amounts.
    attr_reader :amount_shipping
    sig { returns(T.nilable(T::Array[AmountsDue])) }
    # List of expected payments and corresponding due dates. This value will be null for invoices where collection_method=charge_automatically.
    attr_reader :amounts_due
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect Application that created the invoice.
    attr_reader :application
    sig { returns(T.nilable(Integer)) }
    # The fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account when the invoice is paid.
    attr_reader :application_fee_amount
    sig { returns(Integer) }
    # Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. If a failure is returned with a non-retryable return code, the invoice can no longer be retried unless a new payment method is obtained. Retries will continue to be scheduled, and attempt_count will continue to increment, but retries will only be executed if a new payment method is obtained.
    attr_reader :attempt_count
    sig { returns(T::Boolean) }
    # Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users.
    attr_reader :attempted
    sig { returns(T::Boolean) }
    # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
    attr_reader :auto_advance
    sig { returns(AutomaticTax) }
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    sig { returns(T.nilable(Integer)) }
    # The time when this invoice is currently scheduled to be automatically finalized. The field will be `null` if the invoice is not scheduled to finalize in the future. If the invoice is not in the draft state, this field will always be `null` - see `finalized_at` for the time when an already-finalized invoice was finalized.
    attr_reader :automatically_finalizes_at
    sig { returns(T.nilable(String)) }
    # Indicates the reason why the invoice was created.
    #
    # * `manual`: Unrelated to a subscription, for example, created via the invoice editor.
    # * `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds.
    # * `subscription_create`: A new subscription was created.
    # * `subscription_cycle`: A subscription advanced into a new period.
    # * `subscription_threshold`: A subscription reached a billing threshold.
    # * `subscription_update`: A subscription was updated.
    # * `upcoming`: Reserved for simulated invoices, per the upcoming invoice endpoint.
    attr_reader :billing_reason
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # ID of the latest charge generated for this invoice, if any.
    attr_reader :charge
    sig { returns(String) }
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
    attr_reader :collection_method
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T::Array[CustomField])) }
    # Custom fields displayed on the invoice.
    attr_reader :custom_fields
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The ID of the customer who will be billed.
    attr_reader :customer
    sig { returns(T.nilable(CustomerAddress)) }
    # The customer's address. Until the invoice is finalized, this field will equal `customer.address`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_address
    sig { returns(T.nilable(String)) }
    # The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_email
    sig { returns(T.nilable(String)) }
    # The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_name
    sig { returns(T.nilable(String)) }
    # The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_phone
    sig { returns(T.nilable(CustomerShipping)) }
    # The customer's shipping information. Until the invoice is finalized, this field will equal `customer.shipping`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_shipping
    sig { returns(T.nilable(String)) }
    # The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_tax_exempt
    sig { returns(T.nilable(T::Array[CustomerTaxId])) }
    # The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_tax_ids
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    # The margins applied to the invoice. Can be overridden by line item `margins`. Use `expand[]=default_margins` to expand each margin.
    attr_reader :default_margins
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
    attr_reader :default_payment_method
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
    attr_reader :default_source
    sig { returns(T::Array[Stripe::TaxRate]) }
    # The tax rates applied to this invoice, if any.
    attr_reader :default_tax_rates
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    attr_reader :description
    sig { returns(T.nilable(Stripe::Discount)) }
    # Describes the current discount applied to this invoice, if there is one. Not populated if there are multiple discounts.
    attr_reader :discount
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    # The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(T.nilable(Integer)) }
    # The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`.
    attr_reader :due_date
    sig { returns(T.nilable(Integer)) }
    # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
    attr_reader :effective_at
    sig { returns(T.nilable(Integer)) }
    # Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :ending_balance
    sig { returns(T.nilable(String)) }
    # Footer displayed on the invoice.
    attr_reader :footer
    sig { returns(T.nilable(FromInvoice)) }
    # Details of the invoice that was cloned. See the [revision documentation](https://stripe.com/docs/invoicing/invoice-revisions) for more details.
    attr_reader :from_invoice
    sig { returns(T.nilable(String)) }
    # The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :hosted_invoice_url
    sig { returns(String) }
    # Unique identifier for the object. This property is always present unless the invoice is an upcoming invoice. See [Retrieve an upcoming invoice](https://stripe.com/docs/api/invoices/upcoming) for more details.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :invoice_pdf
    sig { returns(Issuer) }
    # Attribute for field issuer
    attr_reader :issuer
    sig { returns(T.nilable(LastFinalizationError)) }
    # The error encountered during the previous attempt to finalize the invoice. This field is cleared when the invoice is successfully finalized.
    attr_reader :last_finalization_error
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # The ID of the most recent non-draft revision of this invoice
    attr_reader :latest_revision
    sig { returns(Stripe::ListObject) }
    # The individual line items that make up the invoice. `lines` is sorted as follows: (1) pending invoice items (including prorations) in reverse chronological order, (2) subscription items in reverse chronological order, and (3) invoice items added after invoice creation in chronological order.
    attr_reader :lines
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(Integer)) }
    # The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`.
    attr_reader :next_payment_attempt
    sig { returns(T.nilable(String)) }
    # A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified.
    attr_reader :number
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
    attr_reader :on_behalf_of
    sig { returns(T::Boolean) }
    # Whether payment was successfully collected for this invoice. An invoice can be paid (most commonly) with a charge or with credit from the customer's account balance.
    attr_reader :paid
    sig { returns(T::Boolean) }
    # Returns true if the invoice was manually marked paid, returns false if the invoice hasn't been paid yet or was paid on Stripe.
    attr_reader :paid_out_of_band
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    # The PaymentIntent associated with this invoice. The PaymentIntent is generated when the invoice is finalized, and can then be used to pay the invoice. Note that voiding an invoice will cancel the PaymentIntent.
    attr_reader :payment_intent
    sig { returns(PaymentSettings) }
    # Attribute for field payment_settings
    attr_reader :payment_settings
    sig { returns(Stripe::ListObject) }
    # Payments for this invoice
    attr_reader :payments
    sig { returns(Integer) }
    # End of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    attr_reader :period_end
    sig { returns(Integer) }
    # Start of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    attr_reader :period_start
    sig { returns(Integer) }
    # Total amount of all post-payment credit notes issued for this invoice.
    attr_reader :post_payment_credit_notes_amount
    sig { returns(Integer) }
    # Total amount of all pre-payment credit notes issued for this invoice.
    attr_reader :pre_payment_credit_notes_amount
    sig { returns(T.nilable(T.any(String, Stripe::Quote))) }
    # The quote this invoice was generated from.
    attr_reader :quote
    sig { returns(T.nilable(String)) }
    # This is the transaction number that appears on email receipts sent for this invoice.
    attr_reader :receipt_number
    sig { returns(T.nilable(Rendering)) }
    # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
    attr_reader :rendering
    sig { returns(T.nilable(ShippingCost)) }
    # The details of the cost of shipping, including the ShippingRate applied on the invoice.
    attr_reader :shipping_cost
    sig { returns(T.nilable(ShippingDetails)) }
    # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
    attr_reader :shipping_details
    sig { returns(Integer) }
    # Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. For revision invoices, this also includes any customer balance that was applied to the original invoice.
    attr_reader :starting_balance
    sig { returns(T.nilable(String)) }
    # Extra information about an invoice for the customer's credit card statement.
    attr_reader :statement_descriptor
    sig { returns(T.nilable(String)) }
    # The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview)
    attr_reader :status
    sig { returns(StatusTransitions) }
    # Attribute for field status_transitions
    attr_reader :status_transitions
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    # The subscription that this invoice was prepared for, if any.
    attr_reader :subscription
    sig { returns(T.nilable(SubscriptionDetails)) }
    # Details about the subscription that created this invoice.
    attr_reader :subscription_details
    sig { returns(Integer) }
    # Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
    attr_reader :subscription_proration_date
    sig { returns(Integer) }
    # Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
    attr_reader :subtotal
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
    attr_reader :subtotal_excluding_tax
    sig { returns(T.nilable(Integer)) }
    # The amount of tax on this invoice. This is the sum of all the tax amounts on this invoice.
    attr_reader :tax
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock this invoice belongs to.
    attr_reader :test_clock
    sig { returns(ThresholdReason) }
    # Attribute for field threshold_reason
    attr_reader :threshold_reason
    sig { returns(Integer) }
    # Total after discounts and taxes.
    attr_reader :total
    sig { returns(T.nilable(T::Array[TotalDiscountAmount])) }
    # The aggregate amounts calculated per discount across all line items.
    attr_reader :total_discount_amounts
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the total amount of the invoice including all discounts but excluding all tax.
    attr_reader :total_excluding_tax
    sig { returns(T.nilable(T::Array[TotalMarginAmount])) }
    # The aggregate amounts calculated per margin across all line items.
    attr_reader :total_margin_amounts
    sig { returns(T.nilable(T::Array[TotalPretaxCreditAmount])) }
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this invoice. This is a combined list of total_pretax_credit_amounts across all invoice line items.
    attr_reader :total_pretax_credit_amounts
    sig { returns(T::Array[TotalTaxAmount]) }
    # The aggregate amounts calculated per tax rate for all line items.
    attr_reader :total_tax_amounts
    sig { returns(T.nilable(TransferData)) }
    # The account (if any) the payment will be attributed to for tax reporting, and where funds from the payment will be transferred to for the invoice.
    attr_reader :transfer_data
    sig { returns(T.nilable(Integer)) }
    # Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://stripe.com/docs/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created.
    attr_reader :webhooks_delivered_at
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end