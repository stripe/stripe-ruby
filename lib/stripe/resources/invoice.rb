# File generated from our OpenAPI spec
# frozen_string_literal: true

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
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoice"
    def self.object_name
      "invoice"
    end

    nested_resource_class_methods :line, operations: %i[list]
    nested_resource_class_methods :payment, operations: %i[retrieve list]

    class AmountsDue < Stripe::StripeObject
      # Incremental amount due for this payment in cents (or local equivalent).
      attr_reader :amount
      # The amount in cents (or local equivalent) that was paid for this payment.
      attr_reader :amount_paid
      # The difference between the payment’s amount and amount_paid, in cents (or local equivalent).
      attr_reader :amount_remaining
      # Number of days from when invoice is finalized until the payment is due.
      attr_reader :days_until_due
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Date on which a payment plan’s payment is due.
      attr_reader :due_date
      # Timestamp when the payment was paid.
      attr_reader :paid_at
      # The status of the payment, one of `open`, `paid`, or `past_due`
      attr_reader :status
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type
      end
      # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      attr_reader :liability
      # The status of the most recent automated tax calculation for this invoice.
      attr_reader :status
    end

    class CustomField < Stripe::StripeObject
      # The name of the custom field.
      attr_reader :name
      # The value of the custom field.
      attr_reader :value
    end

    class CustomerAddress < Stripe::StripeObject
      # City, district, suburb, town, or village.
      attr_reader :city
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_reader :country
      # Address line 1 (e.g., street, PO Box, or company name).
      attr_reader :line1
      # Address line 2 (e.g., apartment, suite, unit, or building).
      attr_reader :line2
      # ZIP or postal code.
      attr_reader :postal_code
      # State, county, province, or region.
      attr_reader :state
    end

    class CustomerShipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end
      # Attribute for field address
      attr_reader :address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      attr_reader :carrier
      # Recipient name.
      attr_reader :name
      # Recipient phone (including extension).
      attr_reader :phone
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      attr_reader :tracking_number
    end

    class CustomerTaxId < Stripe::StripeObject
      # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, or `unknown`
      attr_reader :type
      # The value of the tax ID.
      attr_reader :value
    end

    class FromInvoice < Stripe::StripeObject
      # The relation between this invoice and the cloned invoice
      attr_reader :action
      # The invoice that was cloned.
      attr_reader :invoice
    end

    class Issuer < Stripe::StripeObject
      # The connected account being referenced when `type` is `account`.
      attr_reader :account
      # Type of the account referenced.
      attr_reader :type
    end

    class LastFinalizationError < Stripe::StripeObject
      # For card errors, the ID of the failed charge.
      attr_reader :charge
      # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
      attr_reader :code
      # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
      attr_reader :decline_code
      # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
      attr_reader :doc_url
      # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
      attr_reader :message
      # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
      attr_reader :param
      # A PaymentIntent guides you through the process of collecting a payment from your customer.
      # We recommend that you create exactly one PaymentIntent for each order or
      # customer session in your system. You can reference the PaymentIntent later to
      # see the history of payment attempts for a particular session.
      #
      # A PaymentIntent transitions through
      # [multiple statuses](https://stripe.com/docs/payments/intents#intent-statuses)
      # throughout its lifetime as it interfaces with Stripe.js to perform
      # authentication flows and ultimately creates at most one successful charge.
      #
      # Related guide: [Payment Intents API](https://stripe.com/docs/payments/payment-intents)
      attr_reader :payment_intent
      # PaymentMethod objects represent your customer's payment instruments.
      # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
      # Customer objects to store instrument details for future payments.
      #
      # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
      attr_reader :payment_method
      # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
      attr_reader :payment_method_type
      # A URL to the request log entry in your dashboard.
      attr_reader :request_log_url
      # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
      # For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
      # Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
      #
      # Create a SetupIntent when you're ready to collect your customer's payment credentials.
      # Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.
      # The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guides
      # you through the setup process.
      #
      # Successful SetupIntents result in payment credentials that are optimized for future payments.
      # For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through
      # [Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collection
      # to streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).
      # If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer),
      # it automatically attaches the resulting payment method to that Customer after successful setup.
      # We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
      # PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.
      #
      # By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.
      #
      # Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
      attr_reader :setup_intent
      # Attribute for field source
      attr_reader :source
      # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
      attr_reader :type
    end

    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # Transaction type of the mandate.
            attr_reader :transaction_type
          end
          # Attribute for field mandate_options
          attr_reader :mandate_options
          # Bank account verification method.
          attr_reader :verification_method
        end

        class Bancontact < Stripe::StripeObject
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          attr_reader :preferred_language
        end

        class Card < Stripe::StripeObject
          class Installments < Stripe::StripeObject
            # Whether Installments are enabled for this Invoice.
            attr_reader :enabled
          end
          # Attribute for field installments
          attr_reader :installments
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          attr_reader :request_three_d_secure
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              attr_reader :country
            end
            # Attribute for field eu_bank_transfer
            attr_reader :eu_bank_transfer
            # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            attr_reader :type
          end
          # Attribute for field bank_transfer
          attr_reader :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          attr_reader :funding_type
        end

        class IdBankTransfer < Stripe::StripeObject; end
        class Konbini < Stripe::StripeObject; end
        class SepaDebit < Stripe::StripeObject; end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
              attr_reader :account_subcategories
              # The institution to use to filter for possible accounts to link.
              attr_reader :institution
            end
            # Attribute for field filters
            attr_reader :filters
            # The list of permissions to request. The `payment_method` permission must be included.
            attr_reader :permissions
            # Data features requested to be retrieved upon account creation.
            attr_reader :prefetch
          end
          # Attribute for field financial_connections
          attr_reader :financial_connections
          # Bank account verification method.
          attr_reader :verification_method
        end
        # If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :acss_debit
        # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :bancontact
        # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :card
        # If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :customer_balance
        # If paying by `id_bank_transfer`, this sub-hash contains details about the Indonesia bank transfer payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :id_bank_transfer
        # If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :konbini
        # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :sepa_debit
        # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
        attr_reader :us_bank_account
      end
      # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
      attr_reader :default_mandate
      # Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
      attr_reader :payment_method_options
      # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice).
      attr_reader :payment_method_types
    end

    class Rendering < Stripe::StripeObject
      class Pdf < Stripe::StripeObject
        # Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
        attr_reader :page_size
      end
      # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
      attr_reader :amount_tax_display
      # Invoice pdf rendering options
      attr_reader :pdf
      # ID of the rendering template that the invoice is formatted by.
      attr_reader :template
      # Version of the rendering template that the invoice is using.
      attr_reader :template_version
    end

    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        # Amount of tax applied for this rate.
        attr_reader :amount
        # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
        attr_reader :rate
        # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
        attr_reader :taxability_reason
        # The amount on which tax is calculated, in cents (or local equivalent).
        attr_reader :taxable_amount
      end
      # Total shipping cost before any taxes are applied.
      attr_reader :amount_subtotal
      # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
      attr_reader :amount_tax
      # Total shipping cost after taxes are applied.
      attr_reader :amount_total
      # The ID of the ShippingRate for this invoice.
      attr_reader :shipping_rate
      # The taxes applied to the shipping rate.
      attr_reader :taxes
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end
      # Attribute for field address
      attr_reader :address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      attr_reader :carrier
      # Recipient name.
      attr_reader :name
      # Recipient phone (including extension).
      attr_reader :phone
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      attr_reader :tracking_number
    end

    class StatusTransitions < Stripe::StripeObject
      # The time that the invoice draft was finalized.
      attr_reader :finalized_at
      # The time that the invoice was marked uncollectible.
      attr_reader :marked_uncollectible_at
      # The time that the invoice was paid.
      attr_reader :paid_at
      # The time that the invoice was voided.
      attr_reader :voided_at
    end

    class SubscriptionDetails < Stripe::StripeObject
      class PauseCollection < Stripe::StripeObject
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        attr_reader :behavior
        # The time after which the subscription will resume collecting payments.
        attr_reader :resumes_at
      end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) defined as subscription metadata when an invoice is created. Becomes an immutable snapshot of the subscription metadata at the time of invoice finalization.
      #  *Note: This attribute is populated only for invoices created on or after June 29, 2023.*
      attr_reader :metadata
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
      attr_reader :pause_collection
    end

    class ThresholdReason < Stripe::StripeObject
      class ItemReason < Stripe::StripeObject
        # The IDs of the line items that triggered the threshold invoice.
        attr_reader :line_item_ids
        # The quantity threshold boundary that applied to the given line item.
        attr_reader :usage_gte
      end
      # The total invoice amount threshold boundary if it triggered the threshold invoice.
      attr_reader :amount_gte
      # Indicates which line items triggered a threshold invoice.
      attr_reader :item_reasons
    end

    class TotalDiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      attr_reader :discount
    end

    class TotalMarginAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the reduction in line item amount.
      attr_reader :amount
      # The margin that was applied to get this margin amount.
      attr_reader :margin
    end

    class TotalPretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      attr_reader :discount
      # The margin that was applied to get this pretax credit amount.
      attr_reader :margin
      # Type of the pretax credit amount referenced.
      attr_reader :type
    end

    class TotalTaxAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the tax.
      attr_reader :amount
      # Whether this tax amount is inclusive or exclusive.
      attr_reader :inclusive
      # The tax rate that was applied to get this tax amount.
      attr_reader :tax_rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      attr_reader :taxable_amount
    end

    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      attr_reader :amount
      # The account where funds from the payment will be transferred to upon payment success.
      attr_reader :destination
    end
    # The country of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_country

    # The public name of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_name

    # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
    attr_reader :account_tax_ids

    # Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
    attr_reader :amount_due

    # Amount that was overpaid on the invoice. Overpayments are debited to the customer's credit balance.
    attr_reader :amount_overpaid

    # The amount, in cents (or local equivalent), that was paid.
    attr_reader :amount_paid

    # The difference between amount_due and amount_paid, in cents (or local equivalent).
    attr_reader :amount_remaining

    # This is the sum of all the shipping amounts.
    attr_reader :amount_shipping

    # List of expected payments and corresponding due dates. This value will be null for invoices where collection_method=charge_automatically.
    attr_reader :amounts_due

    # ID of the Connect Application that created the invoice.
    attr_reader :application

    # The fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account when the invoice is paid.
    attr_reader :application_fee_amount

    # Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. If a failure is returned with a non-retryable return code, the invoice can no longer be retried unless a new payment method is obtained. Retries will continue to be scheduled, and attempt_count will continue to increment, but retries will only be executed if a new payment method is obtained.
    attr_reader :attempt_count

    # Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users.
    attr_reader :attempted

    # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
    attr_reader :auto_advance

    # Attribute for field automatic_tax
    attr_reader :automatic_tax

    # The time when this invoice is currently scheduled to be automatically finalized. The field will be `null` if the invoice is not scheduled to finalize in the future. If the invoice is not in the draft state, this field will always be `null` - see `finalized_at` for the time when an already-finalized invoice was finalized.
    attr_reader :automatically_finalizes_at

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

    # ID of the latest charge generated for this invoice, if any.
    attr_reader :charge

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
    attr_reader :collection_method

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency

    # Custom fields displayed on the invoice.
    attr_reader :custom_fields

    # The ID of the customer who will be billed.
    attr_reader :customer

    # The customer's address. Until the invoice is finalized, this field will equal `customer.address`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_address

    # The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_email

    # The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_name

    # The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_phone

    # The customer's shipping information. Until the invoice is finalized, this field will equal `customer.shipping`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_shipping

    # The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_tax_exempt

    # The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated.
    attr_reader :customer_tax_ids

    # The margins applied to the invoice. Can be overridden by line item `margins`. Use `expand[]=default_margins` to expand each margin.
    attr_reader :default_margins

    # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
    attr_reader :default_payment_method

    # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
    attr_reader :default_source

    # The tax rates applied to this invoice, if any.
    attr_reader :default_tax_rates

    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    attr_reader :description

    # Describes the current discount applied to this invoice, if there is one. Not populated if there are multiple discounts.
    attr_reader :discount

    # The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts

    # The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`.
    attr_reader :due_date

    # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
    attr_reader :effective_at

    # Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :ending_balance

    # Footer displayed on the invoice.
    attr_reader :footer

    # Details of the invoice that was cloned. See the [revision documentation](https://stripe.com/docs/invoicing/invoice-revisions) for more details.
    attr_reader :from_invoice

    # The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :hosted_invoice_url

    # Unique identifier for the object. This property is always present unless the invoice is an upcoming invoice. See [Retrieve an upcoming invoice](https://stripe.com/docs/api/invoices/upcoming) for more details.
    attr_reader :id

    # The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null.
    attr_reader :invoice_pdf

    # Attribute for field issuer
    attr_reader :issuer

    # The error encountered during the previous attempt to finalize the invoice. This field is cleared when the invoice is successfully finalized.
    attr_reader :last_finalization_error

    # The ID of the most recent non-draft revision of this invoice
    attr_reader :latest_revision

    # The individual line items that make up the invoice. `lines` is sorted as follows: (1) pending invoice items (including prorations) in reverse chronological order, (2) subscription items in reverse chronological order, and (3) invoice items added after invoice creation in chronological order.
    attr_reader :lines

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata

    # The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`.
    attr_reader :next_payment_attempt

    # A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified.
    attr_reader :number

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
    attr_reader :on_behalf_of

    # Whether payment was successfully collected for this invoice. An invoice can be paid (most commonly) with a charge or with credit from the customer's account balance.
    attr_reader :paid

    # Returns true if the invoice was manually marked paid, returns false if the invoice hasn't been paid yet or was paid on Stripe.
    attr_reader :paid_out_of_band

    # The PaymentIntent associated with this invoice. The PaymentIntent is generated when the invoice is finalized, and can then be used to pay the invoice. Note that voiding an invoice will cancel the PaymentIntent.
    attr_reader :payment_intent

    # Attribute for field payment_settings
    attr_reader :payment_settings

    # Payments for this invoice
    attr_reader :payments

    # End of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    attr_reader :period_end

    # Start of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    attr_reader :period_start

    # Total amount of all post-payment credit notes issued for this invoice.
    attr_reader :post_payment_credit_notes_amount

    # Total amount of all pre-payment credit notes issued for this invoice.
    attr_reader :pre_payment_credit_notes_amount

    # The quote this invoice was generated from.
    attr_reader :quote

    # This is the transaction number that appears on email receipts sent for this invoice.
    attr_reader :receipt_number

    # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
    attr_reader :rendering

    # The details of the cost of shipping, including the ShippingRate applied on the invoice.
    attr_reader :shipping_cost

    # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
    attr_reader :shipping_details

    # Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. For revision invoices, this also includes any customer balance that was applied to the original invoice.
    attr_reader :starting_balance

    # Extra information about an invoice for the customer's credit card statement.
    attr_reader :statement_descriptor

    # The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview)
    attr_reader :status

    # Attribute for field status_transitions
    attr_reader :status_transitions

    # The subscription that this invoice was prepared for, if any.
    attr_reader :subscription

    # Details about the subscription that created this invoice.
    attr_reader :subscription_details

    # Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
    attr_reader :subscription_proration_date

    # Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
    attr_reader :subtotal

    # The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
    attr_reader :subtotal_excluding_tax

    # The amount of tax on this invoice. This is the sum of all the tax amounts on this invoice.
    attr_reader :tax

    # ID of the test clock this invoice belongs to.
    attr_reader :test_clock

    # Attribute for field threshold_reason
    attr_reader :threshold_reason

    # Total after discounts and taxes.
    attr_reader :total

    # The aggregate amounts calculated per discount across all line items.
    attr_reader :total_discount_amounts

    # The integer amount in cents (or local equivalent) representing the total amount of the invoice including all discounts but excluding all tax.
    attr_reader :total_excluding_tax

    # The aggregate amounts calculated per margin across all line items.
    attr_reader :total_margin_amounts

    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this invoice. This is a combined list of total_pretax_credit_amounts across all invoice line items.
    attr_reader :total_pretax_credit_amounts

    # The aggregate amounts calculated per tax rate for all line items.
    attr_reader :total_tax_amounts

    # The account (if any) the payment will be attributed to for tax reporting, and where funds from the payment will be transferred to for the invoice.
    attr_reader :transfer_data

    # Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://stripe.com/docs/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created.
    attr_reader :webhooks_delivered_at

    # Always true for a deleted object
    attr_reader :deleted

    # Adds multiple line items to an invoice. This is only possible when an invoice is still a draft.
    def add_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/add_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Adds multiple line items to an invoice. This is only possible when an invoice is still a draft.
    def self.add_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/add_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentIntent or an Out of Band Payment to the invoice, adding it to the list of payments.
    #
    # For Out of Band Payment, the payment is credited to the invoice immediately, increasing the amount_paid
    # of the invoice and subsequently transitioning the status of the invoice to paid if necessary.
    #
    # For the PaymentIntent, when the PaymentIntent's status changes to succeeded, the payment is credited
    # to the invoice, increasing its amount_paid. When the invoice is fully paid, the
    # invoice's status becomes paid.
    #
    # If the PaymentIntent's status is already succeeded when it's attached, it's
    # credited to the invoice immediately.
    #
    # See: [Create an invoice payment](https://stripe.com/docs/invoicing/payments/create) to learn more.
    def attach_payment(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/attach_payment", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentIntent or an Out of Band Payment to the invoice, adding it to the list of payments.
    #
    # For Out of Band Payment, the payment is credited to the invoice immediately, increasing the amount_paid
    # of the invoice and subsequently transitioning the status of the invoice to paid if necessary.
    #
    # For the PaymentIntent, when the PaymentIntent's status changes to succeeded, the payment is credited
    # to the invoice, increasing its amount_paid. When the invoice is fully paid, the
    # invoice's status becomes paid.
    #
    # If the PaymentIntent's status is already succeeded when it's attached, it's
    # credited to the invoice immediately.
    #
    # See: [Create an invoice payment](https://stripe.com/docs/invoicing/payments/create) to learn more.
    def self.attach_payment(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/attach_payment", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentIntent to the invoice, adding it to the list of payments.
    # When the PaymentIntent's status changes to succeeded, the payment is credited
    # to the invoice, increasing its amount_paid. When the invoice is fully paid, the
    # invoice's status becomes paid.
    #
    # If the PaymentIntent's status is already succeeded when it is attached, it is
    # credited to the invoice immediately.
    #
    # Related guide: [Create an invoice payment](https://stripe.com/docs/invoicing/payments/create)
    def attach_payment_intent(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/attach_payment_intent", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentIntent to the invoice, adding it to the list of payments.
    # When the PaymentIntent's status changes to succeeded, the payment is credited
    # to the invoice, increasing its amount_paid. When the invoice is fully paid, the
    # invoice's status becomes paid.
    #
    # If the PaymentIntent's status is already succeeded when it is attached, it is
    # credited to the invoice immediately.
    #
    # Related guide: [Create an invoice payment](https://stripe.com/docs/invoicing/payments/create)
    def self.attach_payment_intent(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/attach_payment_intent", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you [finalize the invoice, which allows you to [pay](#pay_invoice) or <a href="#send_invoice">send](https://stripe.com/docs/api#finalize_invoice) the invoice to your customers.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/invoices", params: params, opts: opts)
    end

    # At any time, you can preview the upcoming invoice for a customer. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
    #
    # Note that when you are viewing an upcoming invoice, you are simply viewing a preview – the invoice has not yet been created. As such, the upcoming invoice will not show up in invoice listing calls, and you cannot use the API to pay or edit the invoice. If you want to change the amount that your customer will be billed, you can add, remove, or update pending invoice items, or update the customer's discount.
    #
    # You can preview the effects of updating a subscription, including a preview of what proration will take place. To ensure that the actual proration is calculated exactly the same as the previewed proration, you should pass the subscription_details.proration_date parameter when doing the actual subscription update. The recommended way to get only the prorations being previewed is to consider only proration line items where period[start] is equal to the subscription_details.proration_date value passed in the request.
    #
    # Note: Currency conversion calculations use the latest exchange rates. Exchange rates may vary between the time of the preview and the time of the actual invoice creation. [Learn more](https://docs.stripe.com/currencies/conversions)
    def self.create_preview(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/invoices/create_preview",
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be [voided](https://stripe.com/docs/api#void_invoice).
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoices/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be [voided](https://stripe.com/docs/api#void_invoice).
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you'd like to finalize a draft invoice manually, you can do so using this method.
    def finalize_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you'd like to finalize a draft invoice manually, you can do so using this method.
    def self.finalize_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices", params: filters, opts: opts)
    end

    # When retrieving an upcoming invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_upcoming_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/invoices/upcoming/lines",
        params: params,
        opts: opts
      )
    end

    # Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.
    def mark_uncollectible(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.
    def self.mark_uncollectible(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.
    def pay(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.
    def self.pay(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.
    def remove_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/remove_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.
    def self.remove_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/remove_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Stripe will automatically send invoices to customers according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to manually send an invoice to your customer out of the normal schedule, you can do so. When sending invoices that have already been paid, there will be no reference to the payment in the email.
    #
    # Requests made in test-mode result in no emails being sent, despite sending an invoice.sent event.
    def send_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe will automatically send invoices to customers according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to manually send an invoice to your customer out of the normal schedule, you can do so. When sending invoices that have already been paid, there will be no reference to the payment in the email.
    #
    # Requests made in test-mode result in no emails being sent, despite sending an invoice.sent event.
    def self.send_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # At any time, you can preview the upcoming invoice for a customer. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
    #
    # Note that when you are viewing an upcoming invoice, you are simply viewing a preview – the invoice has not yet been created. As such, the upcoming invoice will not show up in invoice listing calls, and you cannot use the API to pay or edit the invoice. If you want to change the amount that your customer will be billed, you can add, remove, or update pending invoice items, or update the customer's discount.
    #
    # You can preview the effects of updating a subscription, including a preview of what proration will take place. To ensure that the actual proration is calculated exactly the same as the previewed proration, you should pass the subscription_details.proration_date parameter when doing the actual subscription update. The recommended way to get only the prorations being previewed is to consider only proration line items where period[start] is equal to the subscription_details.proration_date value passed in the request.
    #
    # Note: Currency conversion calculations use the latest exchange rates. Exchange rates may vary between the time of the preview and the time of the actual invoice creation. [Learn more](https://docs.stripe.com/currencies/conversions)
    def self.upcoming(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices/upcoming", params: params, opts: opts)
    end

    # Draft invoices are fully editable. Once an invoice is [finalized](https://stripe.com/docs/billing/invoices/workflow#finalized),
    # monetary values, as well as collection_method, become uneditable.
    #
    # If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,
    # sending reminders for, or [automatically reconciling](https://stripe.com/docs/billing/invoices/reconciliation) invoices, pass
    # auto_advance=false.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Updates multiple line items on an invoice. This is only possible when an invoice is still a draft.
    def update_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/update_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Updates multiple line items on an invoice. This is only possible when an invoice is still a draft.
    def self.update_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/update_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to [deletion](https://stripe.com/docs/api#delete_invoice), however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.
    #
    # Consult with local regulations to determine whether and how an invoice might be amended, canceled, or voided in the jurisdiction you're doing business in. You might need to [issue another invoice or <a href="#create_credit_note">credit note](https://stripe.com/docs/api#create_invoice) instead. Stripe recommends that you consult with your legal counsel for advice specific to your business.
    def void_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to [deletion](https://stripe.com/docs/api#delete_invoice), however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.
    #
    # Consult with local regulations to determine whether and how an invoice might be amended, canceled, or voided in the jurisdiction you're doing business in. You might need to [issue another invoice or <a href="#create_credit_note">credit note](https://stripe.com/docs/api#create_invoice) instead. Stripe recommends that you consult with your legal counsel for advice specific to your business.
    def self.void_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end
  end
end
