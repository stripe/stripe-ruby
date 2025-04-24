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

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type
      end
      # If Stripe disabled automatic tax, this enum describes why.
      attr_reader :disabled_reason
      # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      attr_reader :liability
      # The tax provider powering automatic tax.
      attr_reader :provider
      # The status of the most recent automated tax calculation for this invoice.
      attr_reader :status
    end

    class ConfirmationSecret < Stripe::StripeObject
      # The client_secret of the payment that Stripe creates for the invoice after finalization.
      attr_reader :client_secret
      # The type of client_secret. Currently this is always payment_intent, referencing the default payment_intent that Stripe creates during invoice finalization
      attr_reader :type
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
      # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
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
      # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines) if they provide one.
      attr_reader :advice_code
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
      # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
      attr_reader :network_advice_code
      # For card errors resulting from a card issuer decline, a brand specific 2, 3, or 4 digit code which indicates the reason the authorization failed.
      attr_reader :network_decline_code
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

    class Parent < Stripe::StripeObject
      class QuoteDetails < Stripe::StripeObject
        # The quote that generated this invoice
        attr_reader :quote
      end

      class SubscriptionDetails < Stripe::StripeObject
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) defined as subscription metadata when an invoice is created. Becomes an immutable snapshot of the subscription metadata at the time of invoice finalization.
        #  *Note: This attribute is populated only for invoices created on or after June 29, 2023.*
        attr_reader :metadata
        # The subscription that generated this invoice
        attr_reader :subscription
        # Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
        attr_reader :subscription_proration_date
      end
      # Details about the quote that generated this invoice
      attr_reader :quote_details
      # Details about the subscription that generated this invoice
      attr_reader :subscription_details
      # The type of parent that generated this invoice
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

        class Konbini < Stripe::StripeObject; end
        class SepaDebit < Stripe::StripeObject; end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
              attr_reader :account_subcategories
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
        # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](/billing/taxes/tax-rates)
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

    class TotalPretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      attr_reader :discount
      # Type of the pretax credit amount referenced.
      attr_reader :type
    end

    class TotalTax < Stripe::StripeObject
      class TaxRateDetails < Stripe::StripeObject
        # Attribute for field tax_rate
        attr_reader :tax_rate
      end
      # The amount of the tax, in cents (or local equivalent).
      attr_reader :amount
      # Whether this tax is inclusive or exclusive.
      attr_reader :tax_behavior
      # Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
      attr_reader :tax_rate_details
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      attr_reader :taxable_amount
      # The type of tax information.
      attr_reader :type
    end

    class DeleteParams < Stripe::RequestParams
    end

    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class CustomField < Stripe::RequestParams
        # The name of the custom field. This may be up to 40 characters.
        attr_accessor :name
        # The value of the custom field. This may be up to 140 characters.
        attr_accessor :value

        def initialize(name: nil, value: nil)
          @name = name
          @value = value
        end
      end

      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        attr_accessor :account
        # Type of the account referenced in the request.
        attr_accessor :type

        def initialize(account: nil, type: nil)
          @account = account
          @type = type
        end
      end

      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              attr_accessor :transaction_type

              def initialize(transaction_type: nil)
                @transaction_type = transaction_type
              end
            end
            # Additional fields for Mandate creation
            attr_accessor :mandate_options
            # Verification method for the intent
            attr_accessor :verification_method

            def initialize(mandate_options: nil, verification_method: nil)
              @mandate_options = mandate_options
              @verification_method = verification_method
            end
          end

          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            attr_accessor :preferred_language

            def initialize(preferred_language: nil)
              @preferred_language = preferred_language
            end
          end

          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              class Plan < Stripe::RequestParams
                # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
                attr_accessor :count
                # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
                # One of `month`.
                attr_accessor :interval
                # Type of installment plan, one of `fixed_count`.
                attr_accessor :type

                def initialize(count: nil, interval: nil, type: nil)
                  @count = count
                  @interval = interval
                  @type = type
                end
              end
              # Setting to true enables installments for this invoice.
              # Setting to false will prevent any selected plan from applying to a payment.
              attr_accessor :enabled
              # The selected installment plan to use for this invoice.
              attr_accessor :plan

              def initialize(enabled: nil, plan: nil)
                @enabled = enabled
                @plan = plan
              end
            end
            # Installment configuration for payments attempted on this invoice (Mexico Only).
            #
            # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
            attr_accessor :installments
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            attr_accessor :request_three_d_secure

            def initialize(installments: nil, request_three_d_secure: nil)
              @installments = installments
              @request_three_d_secure = request_three_d_secure
            end
          end

          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                attr_accessor :country

                def initialize(country: nil)
                  @country = country
                end
              end
              # Configuration for eu_bank_transfer funding type.
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              attr_accessor :type

              def initialize(eu_bank_transfer: nil, type: nil)
                @eu_bank_transfer = eu_bank_transfer
                @type = type
              end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            attr_accessor :funding_type

            def initialize(bank_transfer: nil, funding_type: nil)
              @bank_transfer = bank_transfer
              @funding_type = funding_type
            end
          end

          class Konbini < Stripe::RequestParams
          end

          class SepaDebit < Stripe::RequestParams
          end

          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                attr_accessor :account_subcategories

                def initialize(account_subcategories: nil)
                  @account_subcategories = account_subcategories
                end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              attr_accessor :prefetch

              def initialize(filters: nil, permissions: nil, prefetch: nil)
                @filters = filters
                @permissions = permissions
                @prefetch = prefetch
              end
            end
            # Additional fields for Financial Connections Session creation
            attr_accessor :financial_connections
            # Verification method for the intent
            attr_accessor :verification_method

            def initialize(financial_connections: nil, verification_method: nil)
              @financial_connections = financial_connections
              @verification_method = verification_method
            end
          end
          # If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :acss_debit
          # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :bancontact
          # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :card
          # If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :customer_balance
          # If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :konbini
          # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :sepa_debit
          # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
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
        end
        # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
        attr_accessor :default_mandate
        # Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        attr_accessor :payment_method_types

        def initialize(default_mandate: nil, payment_method_options: nil, payment_method_types: nil)
          @default_mandate = default_mandate
          @payment_method_options = payment_method_options
          @payment_method_types = payment_method_types
        end
      end

      class Rendering < Stripe::RequestParams
        class Pdf < Stripe::RequestParams
          # Page size for invoice PDF. Can be set to `a4`, `letter`, or `auto`.
          #  If set to `auto`, invoice PDF page size defaults to `a4` for customers with
          #  Japanese locale and `letter` for customers with other locales.
          attr_accessor :page_size

          def initialize(page_size: nil)
            @page_size = page_size
          end
        end
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
        attr_accessor :amount_tax_display
        # Invoice pdf rendering options
        attr_accessor :pdf
        # ID of the invoice rendering template to use for this invoice.
        attr_accessor :template
        # The specific version of invoice rendering template to use for this invoice.
        attr_accessor :template_version

        def initialize(amount_tax_display: nil, pdf: nil, template: nil, template_version: nil)
          @amount_tax_display = amount_tax_display
          @pdf = pdf
          @template = template
          @template_version = template_version
        end
      end

      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end

            class Minimum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            attr_accessor :minimum

            def initialize(maximum: nil, minimum: nil)
              @maximum = maximum
              @minimum = minimum
            end
          end

          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              attr_accessor :tax_behavior

              def initialize(amount: nil, tax_behavior: nil)
                @amount = amount
                @tax_behavior = tax_behavior
              end
            end
            # A non-negative integer in cents representing how much to charge.
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency_options

            def initialize(amount: nil, currency: nil, currency_options: nil)
              @amount = amount
              @currency = currency
              @currency_options = currency_options
            end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          attr_accessor :type

          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          )
            @delivery_estimate = delivery_estimate
            @display_name = display_name
            @fixed_amount = fixed_amount
            @metadata = metadata
            @tax_behavior = tax_behavior
            @tax_code = tax_code
            @type = type
          end
        end
        # The ID of the shipping rate to use for this order.
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        attr_accessor :shipping_rate_data

        def initialize(shipping_rate: nil, shipping_rate_data: nil)
          @shipping_rate = shipping_rate
          @shipping_rate_data = shipping_rate_data
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # Shipping address
        attr_accessor :address
        # Recipient name.
        attr_accessor :name
        # Recipient phone (including extension)
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred.
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        attr_accessor :destination

        def initialize(amount: nil, destination: nil)
          @amount = amount
          @destination = destination
        end
      end
      # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
      attr_accessor :account_tax_ids
      # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
      attr_accessor :application_fee_amount
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice.
      attr_accessor :auto_advance
      # Settings for automatic tax lookup for this invoice.
      attr_accessor :automatic_tax
      # The time when this invoice should be scheduled to finalize. The invoice will be finalized at this time if it is still in draft state. To turn off automatic finalization, set `auto_advance` to false.
      attr_accessor :automatically_finalizes_at
      # Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
      attr_accessor :collection_method
      # A list of up to 4 custom fields to be displayed on the invoice. If a value for `custom_fields` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
      attr_accessor :custom_fields
      # The number of days from which the invoice is created until it is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
      attr_accessor :days_until_due
      # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
      attr_accessor :default_payment_method
      # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
      attr_accessor :default_source
      # The tax rates that will apply to any line item that does not have `tax_rates` set. Pass an empty string to remove previously-defined tax rates.
      attr_accessor :default_tax_rates
      # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
      attr_accessor :description
      # The discounts that will apply to the invoice. Pass an empty string to remove previously-defined discounts.
      attr_accessor :discounts
      # The date on which payment for this invoice is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
      attr_accessor :due_date
      # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
      attr_accessor :effective_at
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Footer to be displayed on the invoice.
      attr_accessor :footer
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      attr_accessor :issuer
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
      attr_accessor :number
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      attr_accessor :on_behalf_of
      # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
      attr_accessor :payment_settings
      # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
      attr_accessor :rendering
      # Settings for the cost of shipping for this invoice.
      attr_accessor :shipping_cost
      # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
      attr_accessor :shipping_details
      # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
      attr_accessor :statement_descriptor
      # If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge. This will be unset if you POST an empty value.
      attr_accessor :transfer_data

      def initialize(
        account_tax_ids: nil,
        application_fee_amount: nil,
        auto_advance: nil,
        automatic_tax: nil,
        automatically_finalizes_at: nil,
        collection_method: nil,
        custom_fields: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        due_date: nil,
        effective_at: nil,
        expand: nil,
        footer: nil,
        issuer: nil,
        metadata: nil,
        number: nil,
        on_behalf_of: nil,
        payment_settings: nil,
        rendering: nil,
        shipping_cost: nil,
        shipping_details: nil,
        statement_descriptor: nil,
        transfer_data: nil
      )
        @account_tax_ids = account_tax_ids
        @application_fee_amount = application_fee_amount
        @auto_advance = auto_advance
        @automatic_tax = automatic_tax
        @automatically_finalizes_at = automatically_finalizes_at
        @collection_method = collection_method
        @custom_fields = custom_fields
        @days_until_due = days_until_due
        @default_payment_method = default_payment_method
        @default_source = default_source
        @default_tax_rates = default_tax_rates
        @description = description
        @discounts = discounts
        @due_date = due_date
        @effective_at = effective_at
        @expand = expand
        @footer = footer
        @issuer = issuer
        @metadata = metadata
        @number = number
        @on_behalf_of = on_behalf_of
        @payment_settings = payment_settings
        @rendering = rendering
        @shipping_cost = shipping_cost
        @shipping_details = shipping_details
        @statement_descriptor = statement_descriptor
        @transfer_data = transfer_data
      end
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class DueDate < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # The collection method of the invoice to retrieve. Either `charge_automatically` or `send_invoice`.
      attr_accessor :collection_method
      # Only return invoices that were created during the given date interval.
      attr_accessor :created
      # Only return invoices for the customer specified by this customer ID.
      attr_accessor :customer
      # Attribute for param field due_date
      attr_accessor :due_date
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview)
      attr_accessor :status
      # Only return invoices for the subscription specified by this subscription ID.
      attr_accessor :subscription

      def initialize(
        collection_method: nil,
        created: nil,
        customer: nil,
        due_date: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        subscription: nil
      )
        @collection_method = collection_method
        @created = created
        @customer = customer
        @due_date = due_date
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
        @subscription = subscription
      end
    end

    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class CustomField < Stripe::RequestParams
        # The name of the custom field. This may be up to 40 characters.
        attr_accessor :name
        # The value of the custom field. This may be up to 140 characters.
        attr_accessor :value

        def initialize(name: nil, value: nil)
          @name = name
          @value = value
        end
      end

      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class FromInvoice < Stripe::RequestParams
        # The relation between the new invoice and the original invoice. Currently, only 'revision' is permitted
        attr_accessor :action
        # The `id` of the invoice that will be cloned.
        attr_accessor :invoice

        def initialize(action: nil, invoice: nil)
          @action = action
          @invoice = invoice
        end
      end

      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        attr_accessor :account
        # Type of the account referenced in the request.
        attr_accessor :type

        def initialize(account: nil, type: nil)
          @account = account
          @type = type
        end
      end

      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              attr_accessor :transaction_type

              def initialize(transaction_type: nil)
                @transaction_type = transaction_type
              end
            end
            # Additional fields for Mandate creation
            attr_accessor :mandate_options
            # Verification method for the intent
            attr_accessor :verification_method

            def initialize(mandate_options: nil, verification_method: nil)
              @mandate_options = mandate_options
              @verification_method = verification_method
            end
          end

          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            attr_accessor :preferred_language

            def initialize(preferred_language: nil)
              @preferred_language = preferred_language
            end
          end

          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              class Plan < Stripe::RequestParams
                # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
                attr_accessor :count
                # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
                # One of `month`.
                attr_accessor :interval
                # Type of installment plan, one of `fixed_count`.
                attr_accessor :type

                def initialize(count: nil, interval: nil, type: nil)
                  @count = count
                  @interval = interval
                  @type = type
                end
              end
              # Setting to true enables installments for this invoice.
              # Setting to false will prevent any selected plan from applying to a payment.
              attr_accessor :enabled
              # The selected installment plan to use for this invoice.
              attr_accessor :plan

              def initialize(enabled: nil, plan: nil)
                @enabled = enabled
                @plan = plan
              end
            end
            # Installment configuration for payments attempted on this invoice (Mexico Only).
            #
            # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
            attr_accessor :installments
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            attr_accessor :request_three_d_secure

            def initialize(installments: nil, request_three_d_secure: nil)
              @installments = installments
              @request_three_d_secure = request_three_d_secure
            end
          end

          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                attr_accessor :country

                def initialize(country: nil)
                  @country = country
                end
              end
              # Configuration for eu_bank_transfer funding type.
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              attr_accessor :type

              def initialize(eu_bank_transfer: nil, type: nil)
                @eu_bank_transfer = eu_bank_transfer
                @type = type
              end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            attr_accessor :funding_type

            def initialize(bank_transfer: nil, funding_type: nil)
              @bank_transfer = bank_transfer
              @funding_type = funding_type
            end
          end

          class Konbini < Stripe::RequestParams
          end

          class SepaDebit < Stripe::RequestParams
          end

          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                attr_accessor :account_subcategories

                def initialize(account_subcategories: nil)
                  @account_subcategories = account_subcategories
                end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              attr_accessor :prefetch

              def initialize(filters: nil, permissions: nil, prefetch: nil)
                @filters = filters
                @permissions = permissions
                @prefetch = prefetch
              end
            end
            # Additional fields for Financial Connections Session creation
            attr_accessor :financial_connections
            # Verification method for the intent
            attr_accessor :verification_method

            def initialize(financial_connections: nil, verification_method: nil)
              @financial_connections = financial_connections
              @verification_method = verification_method
            end
          end
          # If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :acss_debit
          # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :bancontact
          # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :card
          # If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :customer_balance
          # If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :konbini
          # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          attr_accessor :sepa_debit
          # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
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
        end
        # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
        attr_accessor :default_mandate
        # Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        attr_accessor :payment_method_types

        def initialize(default_mandate: nil, payment_method_options: nil, payment_method_types: nil)
          @default_mandate = default_mandate
          @payment_method_options = payment_method_options
          @payment_method_types = payment_method_types
        end
      end

      class Rendering < Stripe::RequestParams
        class Pdf < Stripe::RequestParams
          # Page size for invoice PDF. Can be set to `a4`, `letter`, or `auto`.
          #  If set to `auto`, invoice PDF page size defaults to `a4` for customers with
          #  Japanese locale and `letter` for customers with other locales.
          attr_accessor :page_size

          def initialize(page_size: nil)
            @page_size = page_size
          end
        end
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
        attr_accessor :amount_tax_display
        # Invoice pdf rendering options
        attr_accessor :pdf
        # ID of the invoice rendering template to use for this invoice.
        attr_accessor :template
        # The specific version of invoice rendering template to use for this invoice.
        attr_accessor :template_version

        def initialize(amount_tax_display: nil, pdf: nil, template: nil, template_version: nil)
          @amount_tax_display = amount_tax_display
          @pdf = pdf
          @template = template
          @template_version = template_version
        end
      end

      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end

            class Minimum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            attr_accessor :minimum

            def initialize(maximum: nil, minimum: nil)
              @maximum = maximum
              @minimum = minimum
            end
          end

          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              attr_accessor :tax_behavior

              def initialize(amount: nil, tax_behavior: nil)
                @amount = amount
                @tax_behavior = tax_behavior
              end
            end
            # A non-negative integer in cents representing how much to charge.
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency_options

            def initialize(amount: nil, currency: nil, currency_options: nil)
              @amount = amount
              @currency = currency
              @currency_options = currency_options
            end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          attr_accessor :type

          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          )
            @delivery_estimate = delivery_estimate
            @display_name = display_name
            @fixed_amount = fixed_amount
            @metadata = metadata
            @tax_behavior = tax_behavior
            @tax_code = tax_code
            @type = type
          end
        end
        # The ID of the shipping rate to use for this order.
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        attr_accessor :shipping_rate_data

        def initialize(shipping_rate: nil, shipping_rate_data: nil)
          @shipping_rate = shipping_rate
          @shipping_rate_data = shipping_rate_data
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # Shipping address
        attr_accessor :address
        # Recipient name.
        attr_accessor :name
        # Recipient phone (including extension)
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred.
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        attr_accessor :destination

        def initialize(amount: nil, destination: nil)
          @amount = amount
          @destination = destination
        end
      end
      # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
      attr_accessor :account_tax_ids
      # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
      attr_accessor :application_fee_amount
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
      attr_accessor :auto_advance
      # Settings for automatic tax lookup for this invoice.
      attr_accessor :automatic_tax
      # The time when this invoice should be scheduled to finalize. The invoice will be finalized at this time if it is still in draft state.
      attr_accessor :automatically_finalizes_at
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to `charge_automatically`.
      attr_accessor :collection_method
      # The currency to create this invoice in. Defaults to that of `customer` if not specified.
      attr_accessor :currency
      # A list of up to 4 custom fields to be displayed on the invoice.
      attr_accessor :custom_fields
      # The ID of the customer who will be billed.
      attr_accessor :customer
      # The number of days from when the invoice is created until it is due. Valid only for invoices where `collection_method=send_invoice`.
      attr_accessor :days_until_due
      # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
      attr_accessor :default_payment_method
      # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
      attr_accessor :default_source
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      attr_accessor :default_tax_rates
      # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
      attr_accessor :description
      # The coupons and promotion codes to redeem into discounts for the invoice. If not specified, inherits the discount from the invoice's customer. Pass an empty string to avoid inheriting any discounts.
      attr_accessor :discounts
      # The date on which payment for this invoice is due. Valid only for invoices where `collection_method=send_invoice`.
      attr_accessor :due_date
      # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
      attr_accessor :effective_at
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Footer to be displayed on the invoice.
      attr_accessor :footer
      # Revise an existing invoice. The new invoice will be created in `status=draft`. See the [revision documentation](https://stripe.com/docs/invoicing/invoice-revisions) for more details.
      attr_accessor :from_invoice
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      attr_accessor :issuer
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
      attr_accessor :number
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      attr_accessor :on_behalf_of
      # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
      attr_accessor :payment_settings
      # How to handle pending invoice items on invoice creation. Defaults to `exclude` if the parameter is omitted.
      attr_accessor :pending_invoice_items_behavior
      # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
      attr_accessor :rendering
      # Settings for the cost of shipping for this invoice.
      attr_accessor :shipping_cost
      # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
      attr_accessor :shipping_details
      # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
      attr_accessor :statement_descriptor
      # The ID of the subscription to invoice, if any. If set, the created invoice will only include pending invoice items for that subscription. The subscription's billing cycle and regular subscription events won't be affected.
      attr_accessor :subscription
      # If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge.
      attr_accessor :transfer_data

      def initialize(
        account_tax_ids: nil,
        application_fee_amount: nil,
        auto_advance: nil,
        automatic_tax: nil,
        automatically_finalizes_at: nil,
        collection_method: nil,
        currency: nil,
        custom_fields: nil,
        customer: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        due_date: nil,
        effective_at: nil,
        expand: nil,
        footer: nil,
        from_invoice: nil,
        issuer: nil,
        metadata: nil,
        number: nil,
        on_behalf_of: nil,
        payment_settings: nil,
        pending_invoice_items_behavior: nil,
        rendering: nil,
        shipping_cost: nil,
        shipping_details: nil,
        statement_descriptor: nil,
        subscription: nil,
        transfer_data: nil
      )
        @account_tax_ids = account_tax_ids
        @application_fee_amount = application_fee_amount
        @auto_advance = auto_advance
        @automatic_tax = automatic_tax
        @automatically_finalizes_at = automatically_finalizes_at
        @collection_method = collection_method
        @currency = currency
        @custom_fields = custom_fields
        @customer = customer
        @days_until_due = days_until_due
        @default_payment_method = default_payment_method
        @default_source = default_source
        @default_tax_rates = default_tax_rates
        @description = description
        @discounts = discounts
        @due_date = due_date
        @effective_at = effective_at
        @expand = expand
        @footer = footer
        @from_invoice = from_invoice
        @issuer = issuer
        @metadata = metadata
        @number = number
        @on_behalf_of = on_behalf_of
        @payment_settings = payment_settings
        @pending_invoice_items_behavior = pending_invoice_items_behavior
        @rendering = rendering
        @shipping_cost = shipping_cost
        @shipping_details = shipping_details
        @statement_descriptor = statement_descriptor
        @subscription = subscription
        @transfer_data = transfer_data
      end
    end

    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for invoices](https://stripe.com/docs/search#query-fields-for-invoices).
      attr_accessor :query

      def initialize(expand: nil, limit: nil, page: nil, query: nil)
        @expand = expand
        @limit = limit
        @page = page
        @query = query
      end
    end

    class AddLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
          end
        end

        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          attr_accessor :end
          # The start of the period. This value is inclusive.
          attr_accessor :start

          def initialize(end_: nil, start: nil)
            @end = end_
            @start = start
          end
        end

        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            attr_accessor :tax_code

            def initialize(description: nil, images: nil, metadata: nil, name: nil, tax_code: nil)
              @description = description
              @images = images
              @metadata = metadata
              @name = name
              @tax_code = tax_code
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          attr_accessor :product_data
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @product_data = product_data
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end

        class Pricing < Stripe::RequestParams
          # The ID of the price object.
          attr_accessor :price

          def initialize(price: nil)
            @price = price
          end
        end

        class TaxAmount < Stripe::RequestParams
          class TaxRateData < Stripe::RequestParams
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
            attr_accessor :description
            # The display name of the tax rate, which will be shown to users.
            attr_accessor :display_name
            # This specifies if the tax rate is inclusive or exclusive.
            attr_accessor :inclusive
            # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
            attr_accessor :jurisdiction
            # The level of the jurisdiction that imposes this tax rate.
            attr_accessor :jurisdiction_level
            # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
            attr_accessor :percentage
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            attr_accessor :state
            # The high-level tax type, such as `vat` or `sales_tax`.
            attr_accessor :tax_type

            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              inclusive: nil,
              jurisdiction: nil,
              jurisdiction_level: nil,
              percentage: nil,
              state: nil,
              tax_type: nil
            )
              @country = country
              @description = description
              @display_name = display_name
              @inclusive = inclusive
              @jurisdiction = jurisdiction
              @jurisdiction_level = jurisdiction_level
              @percentage = percentage
              @state = state
              @tax_type = tax_type
            end
          end
          # The amount, in cents (or local equivalent), of the tax.
          attr_accessor :amount
          # Data to find or create a TaxRate object.
          #
          # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
          attr_accessor :tax_rate_data
          # The reasoning behind this tax, for example, if the product is tax exempt.
          attr_accessor :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_accessor :taxable_amount

          def initialize(
            amount: nil,
            tax_rate_data: nil,
            taxability_reason: nil,
            taxable_amount: nil
          )
            @amount = amount
            @tax_rate_data = tax_rate_data
            @taxability_reason = taxability_reason
            @taxable_amount = taxable_amount
          end
        end
        # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
        attr_accessor :amount
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        attr_accessor :description
        # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
        attr_accessor :discountable
        # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
        attr_accessor :discounts
        # ID of an unassigned invoice item to assign to this invoice. If not provided, a new item will be created.
        attr_accessor :invoice_item
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        attr_accessor :period
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
        attr_accessor :price_data
        # The pricing information for the invoice item.
        attr_accessor :pricing
        # Non-negative integer. The quantity of units for the line item.
        attr_accessor :quantity
        # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
        attr_accessor :tax_amounts
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
        attr_accessor :tax_rates

        def initialize(
          amount: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          invoice_item: nil,
          metadata: nil,
          period: nil,
          price_data: nil,
          pricing: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil
        )
          @amount = amount
          @description = description
          @discountable = discountable
          @discounts = discounts
          @invoice_item = invoice_item
          @metadata = metadata
          @period = period
          @price_data = price_data
          @pricing = pricing
          @quantity = quantity
          @tax_amounts = tax_amounts
          @tax_rates = tax_rates
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :invoice_metadata
      # The line items to add.
      attr_accessor :lines

      def initialize(expand: nil, invoice_metadata: nil, lines: nil)
        @expand = expand
        @invoice_metadata = invoice_metadata
        @lines = lines
      end
    end

    class FinalizeInvoiceParams < Stripe::RequestParams
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
      attr_accessor :auto_advance
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(auto_advance: nil, expand: nil)
        @auto_advance = auto_advance
        @expand = expand
      end
    end

    class MarkUncollectibleParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class PayParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # In cases where the source used to pay the invoice has insufficient funds, passing `forgive=true` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due.
      #
      # Passing `forgive=false` will fail the charge if the source hasn't been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference. Defaults to `false`.
      attr_accessor :forgive
      # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the payment_method param or the invoice's default_payment_method or default_source, if set.
      attr_accessor :mandate
      # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `true` (off-session).
      attr_accessor :off_session
      # Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made. Defaults to `false`.
      attr_accessor :paid_out_of_band
      # A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
      attr_accessor :payment_method
      # A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
      attr_accessor :source

      def initialize(
        expand: nil,
        forgive: nil,
        mandate: nil,
        off_session: nil,
        paid_out_of_band: nil,
        payment_method: nil,
        source: nil
      )
        @expand = expand
        @forgive = forgive
        @mandate = mandate
        @off_session = off_session
        @paid_out_of_band = paid_out_of_band
        @payment_method = payment_method
        @source = source
      end
    end

    class RemoveLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        # Either `delete` or `unassign`. Deleted line items are permanently deleted. Unassigned line items can be reassigned to an invoice.
        attr_accessor :behavior
        # ID of an existing line item to remove from this invoice.
        attr_accessor :id

        def initialize(behavior: nil, id: nil)
          @behavior = behavior
          @id = id
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :invoice_metadata
      # The line items to remove.
      attr_accessor :lines

      def initialize(expand: nil, invoice_metadata: nil, lines: nil)
        @expand = expand
        @invoice_metadata = invoice_metadata
        @lines = lines
      end
    end

    class SendInvoiceParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
          end
        end

        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          attr_accessor :end
          # The start of the period. This value is inclusive.
          attr_accessor :start

          def initialize(end_: nil, start: nil)
            @end = end_
            @start = start
          end
        end

        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            attr_accessor :tax_code

            def initialize(description: nil, images: nil, metadata: nil, name: nil, tax_code: nil)
              @description = description
              @images = images
              @metadata = metadata
              @name = name
              @tax_code = tax_code
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          attr_accessor :product_data
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @product_data = product_data
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end

        class Pricing < Stripe::RequestParams
          # The ID of the price object.
          attr_accessor :price

          def initialize(price: nil)
            @price = price
          end
        end

        class TaxAmount < Stripe::RequestParams
          class TaxRateData < Stripe::RequestParams
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
            attr_accessor :description
            # The display name of the tax rate, which will be shown to users.
            attr_accessor :display_name
            # This specifies if the tax rate is inclusive or exclusive.
            attr_accessor :inclusive
            # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
            attr_accessor :jurisdiction
            # The level of the jurisdiction that imposes this tax rate.
            attr_accessor :jurisdiction_level
            # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
            attr_accessor :percentage
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            attr_accessor :state
            # The high-level tax type, such as `vat` or `sales_tax`.
            attr_accessor :tax_type

            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              inclusive: nil,
              jurisdiction: nil,
              jurisdiction_level: nil,
              percentage: nil,
              state: nil,
              tax_type: nil
            )
              @country = country
              @description = description
              @display_name = display_name
              @inclusive = inclusive
              @jurisdiction = jurisdiction
              @jurisdiction_level = jurisdiction_level
              @percentage = percentage
              @state = state
              @tax_type = tax_type
            end
          end
          # The amount, in cents (or local equivalent), of the tax.
          attr_accessor :amount
          # Data to find or create a TaxRate object.
          #
          # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
          attr_accessor :tax_rate_data
          # The reasoning behind this tax, for example, if the product is tax exempt.
          attr_accessor :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_accessor :taxable_amount

          def initialize(
            amount: nil,
            tax_rate_data: nil,
            taxability_reason: nil,
            taxable_amount: nil
          )
            @amount = amount
            @tax_rate_data = tax_rate_data
            @taxability_reason = taxability_reason
            @taxable_amount = taxable_amount
          end
        end
        # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
        attr_accessor :amount
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        attr_accessor :description
        # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
        attr_accessor :discountable
        # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
        attr_accessor :discounts
        # ID of an existing line item on the invoice.
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        attr_accessor :period
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
        attr_accessor :price_data
        # The pricing information for the invoice item.
        attr_accessor :pricing
        # Non-negative integer. The quantity of units for the line item.
        attr_accessor :quantity
        # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
        attr_accessor :tax_amounts
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
        attr_accessor :tax_rates

        def initialize(
          amount: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          id: nil,
          metadata: nil,
          period: nil,
          price_data: nil,
          pricing: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil
        )
          @amount = amount
          @description = description
          @discountable = discountable
          @discounts = discounts
          @id = id
          @metadata = metadata
          @period = period
          @price_data = price_data
          @pricing = pricing
          @quantity = quantity
          @tax_amounts = tax_amounts
          @tax_rates = tax_rates
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
      attr_accessor :invoice_metadata
      # The line items to update.
      attr_accessor :lines

      def initialize(expand: nil, invoice_metadata: nil, lines: nil)
        @expand = expand
        @invoice_metadata = invoice_metadata
        @lines = lines
      end
    end

    class VoidInvoiceParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class CreatePreviewParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class CustomerDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # Customer shipping address.
          attr_accessor :address
          # Customer name.
          attr_accessor :name
          # Customer phone (including extension).
          attr_accessor :phone

          def initialize(address: nil, name: nil, phone: nil)
            @address = address
            @name = name
            @phone = phone
          end
        end

        class Tax < Stripe::RequestParams
          # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
          attr_accessor :ip_address

          def initialize(ip_address: nil)
            @ip_address = ip_address
          end
        end

        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          attr_accessor :type
          # Value of the tax ID.
          attr_accessor :value

          def initialize(type: nil, value: nil)
            @type = type
            @value = value
          end
        end
        # The customer's address.
        attr_accessor :address
        # The customer's shipping information. Appears on invoices emailed to this customer.
        attr_accessor :shipping
        # Tax details about the customer.
        attr_accessor :tax
        # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
        attr_accessor :tax_exempt
        # The customer's tax IDs.
        attr_accessor :tax_ids

        def initialize(address: nil, shipping: nil, tax: nil, tax_exempt: nil, tax_ids: nil)
          @address = address
          @shipping = shipping
          @tax = tax
          @tax_exempt = tax_exempt
          @tax_ids = tax_ids
        end
      end

      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class InvoiceItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
          end
        end

        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          attr_accessor :end
          # The start of the period. This value is inclusive.
          attr_accessor :start

          def initialize(end_: nil, start: nil)
            @end = end_
            @start = start
          end
        end

        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          attr_accessor :product
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end
        # The integer amount in cents (or local equivalent) of previewed invoice item.
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Only applicable to new invoice items.
        attr_accessor :currency
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        attr_accessor :description
        # Explicitly controls whether discounts apply to this invoice item. Defaults to true, except for negative invoice items.
        attr_accessor :discountable
        # The coupons to redeem into discounts for the invoice item in the preview.
        attr_accessor :discounts
        # The ID of the invoice item to update in preview. If not specified, a new invoice item will be added to the preview of the upcoming invoice.
        attr_accessor :invoiceitem
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        attr_accessor :period
        # The ID of the price object. One of `price` or `price_data` is required.
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        attr_accessor :price_data
        # Non-negative integer. The quantity of units for the invoice item.
        attr_accessor :quantity
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        attr_accessor :tax_code
        # The tax rates that apply to the item. When set, any `default_tax_rates` do not apply to this item.
        attr_accessor :tax_rates
        # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          invoiceitem: nil,
          metadata: nil,
          period: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_behavior: nil,
          tax_code: nil,
          tax_rates: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @amount = amount
          @currency = currency
          @description = description
          @discountable = discountable
          @discounts = discounts
          @invoiceitem = invoiceitem
          @metadata = metadata
          @period = period
          @price = price
          @price_data = price_data
          @quantity = quantity
          @tax_behavior = tax_behavior
          @tax_code = tax_code
          @tax_rates = tax_rates
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        attr_accessor :account
        # Type of the account referenced in the request.
        attr_accessor :type

        def initialize(account: nil, type: nil)
          @account = account
          @type = type
        end
      end

      class ScheduleDetails < Stripe::RequestParams
        class Phase < Stripe::RequestParams
          class AddInvoiceItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @promotion_code = promotion_code
              end
            end

            class PriceData < Stripe::RequestParams
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              attr_accessor :currency
              # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
              attr_accessor :product
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              attr_accessor :unit_amount_decimal

              def initialize(
                currency: nil,
                product: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              )
                @currency = currency
                @product = product
                @tax_behavior = tax_behavior
                @unit_amount = unit_amount
                @unit_amount_decimal = unit_amount_decimal
              end
            end
            # The coupons to redeem into discounts for the item.
            attr_accessor :discounts
            # The ID of the price object. One of `price` or `price_data` is required.
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
            attr_accessor :price_data
            # Quantity for this item. Defaults to 1.
            attr_accessor :quantity
            # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
            attr_accessor :tax_rates

            def initialize(
              discounts: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil
            )
              @discounts = discounts
              @price = price
              @price_data = price_data
              @quantity = quantity
              @tax_rates = tax_rates
            end
          end

          class AutomaticTax < Stripe::RequestParams
            class Liability < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              attr_accessor :account
              # Type of the account referenced in the request.
              attr_accessor :type

              def initialize(account: nil, type: nil)
                @account = account
                @type = type
              end
            end
            # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
            attr_accessor :enabled
            # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
            attr_accessor :liability

            def initialize(enabled: nil, liability: nil)
              @enabled = enabled
              @liability = liability
            end
          end

          class Discount < Stripe::RequestParams
            # ID of the coupon to create a new discount for.
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class InvoiceSettings < Stripe::RequestParams
            class Issuer < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              attr_accessor :account
              # Type of the account referenced in the request.
              attr_accessor :type

              def initialize(account: nil, type: nil)
                @account = account
                @type = type
              end
            end
            # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
            attr_accessor :account_tax_ids
            # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
            attr_accessor :days_until_due
            # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
            attr_accessor :issuer

            def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil)
              @account_tax_ids = account_tax_ids
              @days_until_due = days_until_due
              @issuer = issuer
            end
          end

          class Item < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @promotion_code = promotion_code
              end
            end

            class PriceData < Stripe::RequestParams
              class Recurring < Stripe::RequestParams
                # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
                attr_accessor :interval
                # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
                attr_accessor :interval_count

                def initialize(interval: nil, interval_count: nil)
                  @interval = interval
                  @interval_count = interval_count
                end
              end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              attr_accessor :currency
              # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
              attr_accessor :product
              # The recurring components of a price such as `interval` and `interval_count`.
              attr_accessor :recurring
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              attr_accessor :unit_amount_decimal

              def initialize(
                currency: nil,
                product: nil,
                recurring: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              )
                @currency = currency
                @product = product
                @recurring = recurring
                @tax_behavior = tax_behavior
                @unit_amount = unit_amount
                @unit_amount_decimal = unit_amount_decimal
              end
            end
            # The coupons to redeem into discounts for the subscription item.
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
            attr_accessor :metadata
            # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
            attr_accessor :plan
            # The ID of the price object.
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
            attr_accessor :price_data
            # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
            attr_accessor :quantity
            # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
            attr_accessor :tax_rates

            def initialize(
              discounts: nil,
              metadata: nil,
              plan: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil
            )
              @discounts = discounts
              @metadata = metadata
              @plan = plan
              @price = price
              @price_data = price_data
              @quantity = quantity
              @tax_rates = tax_rates
            end
          end

          class TransferData < Stripe::RequestParams
            # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
            attr_accessor :amount_percent
            # ID of an existing, connected Stripe account.
            attr_accessor :destination

            def initialize(amount_percent: nil, destination: nil)
              @amount_percent = amount_percent
              @destination = destination
            end
          end
          # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
          attr_accessor :add_invoice_items
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
          attr_accessor :application_fee_percent
          # Automatic tax settings for this phase.
          attr_accessor :automatic_tax
          # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
          attr_accessor :billing_cycle_anchor
          # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
          attr_accessor :collection_method
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
          attr_accessor :default_payment_method
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
          attr_accessor :default_tax_rates
          # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
          attr_accessor :description
          # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
          attr_accessor :discounts
          # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
          attr_accessor :end_date
          # All invoices will be billed using the specified settings.
          attr_accessor :invoice_settings
          # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
          attr_accessor :items
          # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
          attr_accessor :iterations
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
          attr_accessor :metadata
          # The account on behalf of which to charge, for each of the associated subscription's invoices.
          attr_accessor :on_behalf_of
          # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
          attr_accessor :proration_behavior
          # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
          attr_accessor :start_date
          # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
          attr_accessor :transfer_data
          # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
          attr_accessor :trial
          # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
          attr_accessor :trial_end

          def initialize(
            add_invoice_items: nil,
            application_fee_percent: nil,
            automatic_tax: nil,
            billing_cycle_anchor: nil,
            collection_method: nil,
            currency: nil,
            default_payment_method: nil,
            default_tax_rates: nil,
            description: nil,
            discounts: nil,
            end_date: nil,
            invoice_settings: nil,
            items: nil,
            iterations: nil,
            metadata: nil,
            on_behalf_of: nil,
            proration_behavior: nil,
            start_date: nil,
            transfer_data: nil,
            trial: nil,
            trial_end: nil
          )
            @add_invoice_items = add_invoice_items
            @application_fee_percent = application_fee_percent
            @automatic_tax = automatic_tax
            @billing_cycle_anchor = billing_cycle_anchor
            @collection_method = collection_method
            @currency = currency
            @default_payment_method = default_payment_method
            @default_tax_rates = default_tax_rates
            @description = description
            @discounts = discounts
            @end_date = end_date
            @invoice_settings = invoice_settings
            @items = items
            @iterations = iterations
            @metadata = metadata
            @on_behalf_of = on_behalf_of
            @proration_behavior = proration_behavior
            @start_date = start_date
            @transfer_data = transfer_data
            @trial = trial
            @trial_end = trial_end
          end
        end
        # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
        attr_accessor :end_behavior
        # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
        attr_accessor :phases
        # In cases where the `schedule_details` params update the currently active phase, specifies if and how to prorate at the time of the request.
        attr_accessor :proration_behavior

        def initialize(end_behavior: nil, phases: nil, proration_behavior: nil)
          @end_behavior = end_behavior
          @phases = phases
          @proration_behavior = proration_behavior
        end
      end

      class SubscriptionDetails < Stripe::RequestParams
        class Item < Stripe::RequestParams
          class Discount < Stripe::RequestParams
            # ID of the coupon to create a new discount for.
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            attr_accessor :unit_amount_decimal

            def initialize(
              currency: nil,
              product: nil,
              recurring: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            )
              @currency = currency
              @product = product
              @recurring = recurring
              @tax_behavior = tax_behavior
              @unit_amount = unit_amount
              @unit_amount_decimal = unit_amount_decimal
            end
          end
          # Delete all usage for a given subscription item. You must pass this when deleting a usage records subscription item. `clear_usage` has no effect if the plan has a billing meter attached.
          attr_accessor :clear_usage
          # A flag that, if set to `true`, will delete the specified item.
          attr_accessor :deleted
          # The coupons to redeem into discounts for the subscription item.
          attr_accessor :discounts
          # Subscription item to update.
          attr_accessor :id
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Plan ID for this item, as a string.
          attr_accessor :plan
          # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          attr_accessor :price_data
          # Quantity for this item.
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          attr_accessor :tax_rates

          def initialize(
            clear_usage: nil,
            deleted: nil,
            discounts: nil,
            id: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          )
            @clear_usage = clear_usage
            @deleted = deleted
            @discounts = discounts
            @id = id
            @metadata = metadata
            @plan = plan
            @price = price
            @price_data = price_data
            @quantity = quantity
            @tax_rates = tax_rates
          end
        end
        # For new subscriptions, a future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. For existing subscriptions, the value can only be set to `now` or `unchanged`.
        attr_accessor :billing_cycle_anchor
        # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
        attr_accessor :cancel_at
        # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
        attr_accessor :cancel_at_period_end
        # This simulates the subscription being canceled or expired immediately.
        attr_accessor :cancel_now
        # If provided, the invoice returned will preview updating or creating a subscription with these default tax rates. The default tax rates will apply to any line item that does not have `tax_rates` set.
        attr_accessor :default_tax_rates
        # A list of up to 20 subscription items, each with an attached price.
        attr_accessor :items
        # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
        attr_accessor :proration_behavior
        # If previewing an update to a subscription, and doing proration, `subscription_details.proration_date` forces the proration to be calculated as though the update was done at the specified time. The time given must be within the current subscription period and within the current phase of the schedule backing this subscription, if the schedule exists. If set, `subscription`, and one of `subscription_details.items`, or `subscription_details.trial_end` are required. Also, `subscription_details.proration_behavior` cannot be set to 'none'.
        attr_accessor :proration_date
        # For paused subscriptions, setting `subscription_details.resume_at` to `now` will preview the invoice that will be generated if the subscription is resumed.
        attr_accessor :resume_at
        # Date a subscription is intended to start (can be future or past).
        attr_accessor :start_date
        # If provided, the invoice returned will preview updating or creating a subscription with that trial end. If set, one of `subscription_details.items` or `subscription` is required.
        attr_accessor :trial_end

        def initialize(
          billing_cycle_anchor: nil,
          cancel_at: nil,
          cancel_at_period_end: nil,
          cancel_now: nil,
          default_tax_rates: nil,
          items: nil,
          proration_behavior: nil,
          proration_date: nil,
          resume_at: nil,
          start_date: nil,
          trial_end: nil
        )
          @billing_cycle_anchor = billing_cycle_anchor
          @cancel_at = cancel_at
          @cancel_at_period_end = cancel_at_period_end
          @cancel_now = cancel_now
          @default_tax_rates = default_tax_rates
          @items = items
          @proration_behavior = proration_behavior
          @proration_date = proration_date
          @resume_at = resume_at
          @start_date = start_date
          @trial_end = trial_end
        end
      end
      # Settings for automatic tax lookup for this invoice preview.
      attr_accessor :automatic_tax
      # The currency to preview this invoice in. Defaults to that of `customer` if not specified.
      attr_accessor :currency
      # The identifier of the customer whose upcoming invoice you'd like to retrieve. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      attr_accessor :customer
      # Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      attr_accessor :customer_details
      # The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # List of invoice items to add or update in the upcoming invoice preview (up to 250).
      attr_accessor :invoice_items
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      attr_accessor :issuer
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      attr_accessor :on_behalf_of
      # Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified.
      attr_accessor :preview_mode
      # The identifier of the schedule whose upcoming invoice you'd like to retrieve. Cannot be used with subscription or subscription fields.
      attr_accessor :schedule
      # The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
      attr_accessor :schedule_details
      # The identifier of the subscription for which you'd like to retrieve the upcoming invoice. If not provided, but a `subscription_details.items` is provided, you will preview creating a subscription with those items. If neither `subscription` nor `subscription_details.items` is provided, you will retrieve the next upcoming invoice from among the customer's subscriptions.
      attr_accessor :subscription
      # The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
      attr_accessor :subscription_details

      def initialize(
        automatic_tax: nil,
        currency: nil,
        customer: nil,
        customer_details: nil,
        discounts: nil,
        expand: nil,
        invoice_items: nil,
        issuer: nil,
        on_behalf_of: nil,
        preview_mode: nil,
        schedule: nil,
        schedule_details: nil,
        subscription: nil,
        subscription_details: nil
      )
        @automatic_tax = automatic_tax
        @currency = currency
        @customer = customer
        @customer_details = customer_details
        @discounts = discounts
        @expand = expand
        @invoice_items = invoice_items
        @issuer = issuer
        @on_behalf_of = on_behalf_of
        @preview_mode = preview_mode
        @schedule = schedule
        @schedule_details = schedule_details
        @subscription = subscription
        @subscription_details = subscription_details
      end
    end
    # The country of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_country
    # The public name of the business associated with this invoice, most often the business creating the invoice.
    attr_reader :account_name
    # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
    attr_reader :account_tax_ids
    # Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
    attr_reader :amount_due
    # Amount that was overpaid on the invoice. The amount overpaid is credited to the customer's credit balance.
    attr_reader :amount_overpaid
    # The amount, in cents (or local equivalent), that was paid.
    attr_reader :amount_paid
    # The difference between amount_due and amount_paid, in cents (or local equivalent).
    attr_reader :amount_remaining
    # This is the sum of all the shipping amounts.
    attr_reader :amount_shipping
    # ID of the Connect Application that created the invoice.
    attr_reader :application
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
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
    attr_reader :collection_method
    # The confirmation secret associated with this invoice. Currently, this contains the client_secret of the PaymentIntent that Stripe creates during invoice finalization.
    attr_reader :confirmation_secret
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
    # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
    attr_reader :default_payment_method
    # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
    attr_reader :default_source
    # The tax rates applied to this invoice, if any.
    attr_reader :default_tax_rates
    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    attr_reader :description
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
    # The parent that generated this invoice
    attr_reader :parent
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
    # Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
    attr_reader :subtotal
    # The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
    attr_reader :subtotal_excluding_tax
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
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this invoice. This is a combined list of total_pretax_credit_amounts across all invoice line items.
    attr_reader :total_pretax_credit_amounts
    # The aggregate tax information of all line items.
    attr_reader :total_taxes
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

    # This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you [finalize the invoice, which allows you to [pay](#pay_invoice) or <a href="#send_invoice">send](https://stripe.com/docs/api#finalize_invoice) the invoice to your customers.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/invoices", params: params, opts: opts)
    end

    # At any time, you can preview the upcoming invoice for a subscription or subscription schedule. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
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
    def self.delete(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(invoice) }),
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
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices", params: params, opts: opts)
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

    # Draft invoices are fully editable. Once an invoice is [finalized](https://stripe.com/docs/billing/invoices/workflow#finalized),
    # monetary values, as well as collection_method, become uneditable.
    #
    # If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,
    # sending reminders for, or [automatically reconciling](https://stripe.com/docs/billing/invoices/reconciliation) invoices, pass
    # auto_advance=false.
    def self.update(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(invoice) }),
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
