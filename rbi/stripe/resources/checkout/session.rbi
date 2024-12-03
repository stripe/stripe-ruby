# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Checkout
    # A Checkout Session represents your customer's session as they pay for
    # one-time purchases or subscriptions through [Checkout](https://stripe.com/docs/payments/checkout)
    # or [Payment Links](https://stripe.com/docs/payments/payment-links). We recommend creating a
    # new Session each time your customer attempts to pay.
    #
    # Once payment is successful, the Checkout Session will contain a reference
    # to the [Customer](https://stripe.com/docs/api/customers), and either the successful
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents) or an active
    # [Subscription](https://stripe.com/docs/api/subscriptions).
    #
    # You can create a Checkout Session on your server and redirect to its URL
    # to begin Checkout.
    #
    # Related guide: [Checkout quickstart](https://stripe.com/docs/checkout/quickstart)
    class Session < APIResource
      class AdaptivePricing < Stripe::StripeObject
        # Whether Adaptive Pricing is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class AfterExpiration < Stripe::StripeObject
        class Recovery < Stripe::StripeObject
          # Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
          sig { returns(T::Boolean) }
          attr_reader :allow_promotion_codes
          # If `true`, a recovery url will be generated to recover this Checkout Session if it
          # expires before a transaction is completed. It will be attached to the
          # Checkout Session object upon expiration.
          sig { returns(T::Boolean) }
          attr_reader :enabled
          # The timestamp at which the recovery URL will expire.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_at
          # URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
          sig { returns(T.nilable(String)) }
          attr_reader :url
        end
        # When set, configuration used to recover the Checkout Session on expiry.
        sig { returns(T.nilable(Recovery)) }
        attr_reader :recovery
      end
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          # Type of the account referenced.
          sig { returns(String) }
          attr_reader :type
        end
        # Indicates whether automatic tax is enabled for the session
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
        # The status of the most recent automated tax calculation for this session.
        sig { returns(T.nilable(String)) }
        attr_reader :status
      end
      class CollectedInformation < Stripe::StripeObject
        class ShippingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field address
          sig { returns(Address) }
          attr_reader :address
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          sig { returns(T.nilable(String)) }
          attr_reader :carrier
          # Recipient name.
          sig { returns(String) }
          attr_reader :name
          # Recipient phone (including extension).
          sig { returns(T.nilable(String)) }
          attr_reader :phone
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          sig { returns(T.nilable(String)) }
          attr_reader :tracking_number
        end
        class TaxId < Stripe::StripeObject
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, or `unknown`
          sig { returns(String) }
          attr_reader :type
          # The value of the tax ID.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        # Customer’s business name for this Checkout Session
        sig { returns(T.nilable(String)) }
        attr_reader :business_name
        # Customer’s email for this Checkout Session
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # Customer’s phone number for this Checkout Session
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # Shipping information for this Checkout Session.
        sig { returns(T.nilable(ShippingDetails)) }
        attr_reader :shipping_details
        # Customer’s tax ids for this Checkout Session.
        sig { returns(T.nilable(T::Array[TaxId])) }
        attr_reader :tax_ids
      end
      class Consent < Stripe::StripeObject
        # If `opt_in`, the customer consents to receiving promotional communications
        # from the merchant about this Checkout Session.
        sig { returns(T.nilable(String)) }
        attr_reader :promotions
        # If `accepted`, the customer in this Checkout Session has agreed to the merchant's terms of service.
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end
      class ConsentCollection < Stripe::StripeObject
        class PaymentMethodReuseAgreement < Stripe::StripeObject
          # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.
          #
          # When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
          sig { returns(String) }
          attr_reader :position
        end
        # If set to `hidden`, it will hide legal text related to the reuse of a payment method.
        sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
        attr_reader :payment_method_reuse_agreement
        # If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
        # Session will determine whether to display an option to opt into promotional communication
        # from the merchant depending on the customer's locale. Only available to US merchants.
        sig { returns(T.nilable(String)) }
        attr_reader :promotions
        # If set to `required`, it requires customers to accept the terms of service before being able to pay.
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end
      class CurrencyConversion < Stripe::StripeObject
        # Total of all items in source currency before discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total of all items in source currency after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # Exchange rate used to convert source currency amounts to customer currency amounts
        sig { returns(String) }
        attr_reader :fx_rate
        # Creation currency of the CheckoutSession before localization
        sig { returns(String) }
        attr_reader :source_currency
      end
      class CustomField < Stripe::StripeObject
        class Dropdown < Stripe::StripeObject
          class Option < Stripe::StripeObject
            # The label for the option, displayed to the customer. Up to 100 characters.
            sig { returns(String) }
            attr_reader :label
            # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
            sig { returns(String) }
            attr_reader :value
          end
          # The value that will pre-fill on the payment page.
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          # The options available for the customer to select. Up to 200 options allowed.
          sig { returns(T::Array[Option]) }
          attr_reader :options
          # The option selected by the customer. This will be the `value` for the option.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        class Label < Stripe::StripeObject
          # Custom text for the label, displayed to the customer. Up to 50 characters.
          sig { returns(T.nilable(String)) }
          attr_reader :custom
          # The type of the label.
          sig { returns(String) }
          attr_reader :type
        end
        class Numeric < Stripe::StripeObject
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length
          # The value entered by the customer, containing only digits.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        class Text < Stripe::StripeObject
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length
          # The value entered by the customer.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        # Attribute for field dropdown
        sig { returns(Dropdown) }
        attr_reader :dropdown
        # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
        sig { returns(String) }
        attr_reader :key
        # Attribute for field label
        sig { returns(Label) }
        attr_reader :label
        # Attribute for field numeric
        sig { returns(Numeric) }
        attr_reader :numeric
        # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
        sig { returns(T::Boolean) }
        attr_reader :optional
        # Attribute for field text
        sig { returns(Text) }
        attr_reader :text
        # The type of the field.
        sig { returns(String) }
        attr_reader :type
      end
      class CustomText < Stripe::StripeObject
        class AfterSubmit < Stripe::StripeObject
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_reader :message
        end
        class ShippingAddress < Stripe::StripeObject
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_reader :message
        end
        class Submit < Stripe::StripeObject
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_reader :message
        end
        class TermsOfServiceAcceptance < Stripe::StripeObject
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_reader :message
        end
        # Custom text that should be displayed after the payment confirmation button.
        sig { returns(T.nilable(AfterSubmit)) }
        attr_reader :after_submit
        # Custom text that should be displayed alongside shipping address collection.
        sig { returns(T.nilable(ShippingAddress)) }
        attr_reader :shipping_address
        # Custom text that should be displayed alongside the payment confirmation button.
        sig { returns(T.nilable(Submit)) }
        attr_reader :submit
        # Custom text that should be displayed in place of the default terms of service agreement text.
        sig { returns(T.nilable(TermsOfServiceAcceptance)) }
        attr_reader :terms_of_service_acceptance
      end
      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class TaxId < Stripe::StripeObject
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, or `unknown`
          sig { returns(String) }
          attr_reader :type
          # The value of the tax ID.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        # The customer's address after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        # The email associated with the Customer, if one exists, on the Checkout Session after a completed Checkout Session or at time of session expiry.
        # Otherwise, if the customer has consented to promotional content, this value is the most recent valid email provided by the customer on the Checkout form.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # The customer's name after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
        sig { returns(T.nilable(String)) }
        attr_reader :name
        # The customer's phone number after a completed Checkout Session.
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # The customer’s tax exempt status after a completed Checkout Session.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_exempt
        # The customer’s tax IDs after a completed Checkout Session.
        sig { returns(T.nilable(T::Array[TaxId])) }
        attr_reader :tax_ids
      end
      class InvoiceCreation < Stripe::StripeObject
        class InvoiceData < Stripe::StripeObject
          class CustomField < Stripe::StripeObject
            # The name of the custom field.
            sig { returns(String) }
            attr_reader :name
            # The value of the custom field.
            sig { returns(String) }
            attr_reader :value
          end
          class Issuer < Stripe::StripeObject
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.any(String, Stripe::Account)) }
            attr_reader :account
            # Type of the account referenced.
            sig { returns(String) }
            attr_reader :type
          end
          class RenderingOptions < Stripe::StripeObject
            # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
            sig { returns(T.nilable(String)) }
            attr_reader :amount_tax_display
          end
          # The account tax IDs associated with the invoice.
          sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
          attr_reader :account_tax_ids
          # Custom fields displayed on the invoice.
          sig { returns(T.nilable(T::Array[CustomField])) }
          attr_reader :custom_fields
          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_reader :description
          # Footer displayed on the invoice.
          sig { returns(T.nilable(String)) }
          attr_reader :footer
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig { returns(T.nilable(Issuer)) }
          attr_reader :issuer
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_reader :metadata
          # Options for invoice PDF rendering.
          sig { returns(T.nilable(RenderingOptions)) }
          attr_reader :rendering_options
        end
        # Indicates whether invoice creation is enabled for the Checkout Session.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field invoice_data
        sig { returns(InvoiceData) }
        attr_reader :invoice_data
      end
      class PaymentMethodConfigurationDetails < Stripe::StripeObject
        # ID of the payment method configuration used.
        sig { returns(String) }
        attr_reader :id
        # ID of the parent payment method configuration used.
        sig { returns(T.nilable(String)) }
        attr_reader :parent
      end
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # A URL for custom mandate text
            sig { returns(String) }
            attr_reader :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically. Returned when the Session is in `setup` mode.
            sig { returns(T::Array[String]) }
            attr_reader :default_for
            # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            attr_reader :interval_description
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            attr_reader :payment_schedule
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end
          # Currency supported by the bank account. Returned when the Session is in `setup` mode.
          sig { returns(String) }
          attr_reader :currency
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_reader :verification_method
        end
        class Affirm < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AfterpayClearpay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Alipay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AmazonPay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AuBecsDebit < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class BacsDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject; end
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Bancontact < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Boleto < Stripe::StripeObject
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto voucher will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(Integer) }
          attr_reader :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Card < Stripe::StripeObject
          class Installments < Stripe::StripeObject
            # Indicates if installments are enabled
            sig { returns(T::Boolean) }
            attr_reader :enabled
          end
          # Attribute for field installments
          sig { returns(Installments) }
          attr_reader :installments
          # Request ability to [capture beyond the standard authorization validity window](/payments/extended-authorization) for this CheckoutSession.
          sig { returns(String) }
          attr_reader :request_decremental_authorization
          # Request ability to [capture beyond the standard authorization validity window](/payments/extended-authorization) for this CheckoutSession.
          sig { returns(String) }
          attr_reader :request_extended_authorization
          # Request ability to [increment the authorization](/payments/incremental-authorization) for this CheckoutSession.
          sig { returns(String) }
          attr_reader :request_incremental_authorization
          # Request ability to make [multiple captures](/payments/multicapture) for this CheckoutSession.
          sig { returns(String) }
          attr_reader :request_multicapture
          # Request ability to [overcapture](/payments/overcapture) for this CheckoutSession.
          sig { returns(String) }
          attr_reader :request_overcapture
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_reader :request_three_d_secure
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kanji
        end
        class Cashapp < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
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
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T::Array[String]) }
            attr_reader :requested_address_types
            # The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_reader :type
          end
          # Attribute for field bank_transfer
          sig { returns(BankTransfer) }
          attr_reader :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          attr_reader :funding_type
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Eps < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Fpx < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Giropay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Grabpay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Ideal < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class KakaoPay < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Klarna < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Konbini < Stripe::StripeObject
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class KrCard < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Link < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Mobilepay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Multibanco < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class NaverPay < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
        end
        class Oxxo < Stripe::StripeObject
          # The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(Integer) }
          attr_reader :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class P24 < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Payco < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
        end
        class Paynow < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Paypal < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
          # Preferred locale of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_reader :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          attr_reader :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_reader :subsellers
        end
        class Payto < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(T.nilable(String)) }
            attr_reader :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(T.nilable(String)) }
            attr_reader :end_date
            # The periodicity at which payments will be collected.
            sig { returns(T.nilable(String)) }
            attr_reader :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(T.nilable(Integer)) }
            attr_reader :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(T.nilable(String)) }
            attr_reader :purpose
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(T.nilable(String)) }
            attr_reader :start_date
          end
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Pix < Stripe::StripeObject
          # The number of seconds after which Pix payment will expire.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_seconds
        end
        class RevolutPay < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class SamsungPay < Stripe::StripeObject
          # Controls when the funds will be captured from the customer's account.
          sig { returns(String) }
          attr_reader :capture_method
        end
        class SepaDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject; end
          # Attribute for field mandate_options
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Sofort < Stripe::StripeObject
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Swish < Stripe::StripeObject
          # The order reference that will be displayed to customers in the Swish application. Defaults to the `id` of the Payment Intent.
          sig { returns(T.nilable(String)) }
          attr_reader :reference
        end
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
            class ManualEntry < Stripe::StripeObject
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_reader :mode
            end
            # Attribute for field filters
            sig { returns(Filters) }
            attr_reader :filters
            # Attribute for field manual_entry
            sig { returns(ManualEntry) }
            attr_reader :manual_entry
            # The list of permissions to request. The `payment_method` permission must be included.
            sig { returns(T::Array[String]) }
            attr_reader :permissions
            # Data features requested to be retrieved upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_reader :return_url
          end
          # Attribute for field financial_connections
          sig { returns(FinancialConnections) }
          attr_reader :financial_connections
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(String) }
          attr_reader :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_reader :verification_method
        end
        # Attribute for field acss_debit
        sig { returns(AcssDebit) }
        attr_reader :acss_debit
        # Attribute for field affirm
        sig { returns(Affirm) }
        attr_reader :affirm
        # Attribute for field afterpay_clearpay
        sig { returns(AfterpayClearpay) }
        attr_reader :afterpay_clearpay
        # Attribute for field alipay
        sig { returns(Alipay) }
        attr_reader :alipay
        # Attribute for field amazon_pay
        sig { returns(AmazonPay) }
        attr_reader :amazon_pay
        # Attribute for field au_becs_debit
        sig { returns(AuBecsDebit) }
        attr_reader :au_becs_debit
        # Attribute for field bacs_debit
        sig { returns(BacsDebit) }
        attr_reader :bacs_debit
        # Attribute for field bancontact
        sig { returns(Bancontact) }
        attr_reader :bancontact
        # Attribute for field boleto
        sig { returns(Boleto) }
        attr_reader :boleto
        # Attribute for field card
        sig { returns(Card) }
        attr_reader :card
        # Attribute for field cashapp
        sig { returns(Cashapp) }
        attr_reader :cashapp
        # Attribute for field customer_balance
        sig { returns(CustomerBalance) }
        attr_reader :customer_balance
        # Attribute for field eps
        sig { returns(Eps) }
        attr_reader :eps
        # Attribute for field fpx
        sig { returns(Fpx) }
        attr_reader :fpx
        # Attribute for field giropay
        sig { returns(Giropay) }
        attr_reader :giropay
        # Attribute for field grabpay
        sig { returns(Grabpay) }
        attr_reader :grabpay
        # Attribute for field ideal
        sig { returns(Ideal) }
        attr_reader :ideal
        # Attribute for field kakao_pay
        sig { returns(KakaoPay) }
        attr_reader :kakao_pay
        # Attribute for field klarna
        sig { returns(Klarna) }
        attr_reader :klarna
        # Attribute for field konbini
        sig { returns(Konbini) }
        attr_reader :konbini
        # Attribute for field kr_card
        sig { returns(KrCard) }
        attr_reader :kr_card
        # Attribute for field link
        sig { returns(Link) }
        attr_reader :link
        # Attribute for field mobilepay
        sig { returns(Mobilepay) }
        attr_reader :mobilepay
        # Attribute for field multibanco
        sig { returns(Multibanco) }
        attr_reader :multibanco
        # Attribute for field naver_pay
        sig { returns(NaverPay) }
        attr_reader :naver_pay
        # Attribute for field oxxo
        sig { returns(Oxxo) }
        attr_reader :oxxo
        # Attribute for field p24
        sig { returns(P24) }
        attr_reader :p24
        # Attribute for field payco
        sig { returns(Payco) }
        attr_reader :payco
        # Attribute for field paynow
        sig { returns(Paynow) }
        attr_reader :paynow
        # Attribute for field paypal
        sig { returns(Paypal) }
        attr_reader :paypal
        # Attribute for field payto
        sig { returns(Payto) }
        attr_reader :payto
        # Attribute for field pix
        sig { returns(Pix) }
        attr_reader :pix
        # Attribute for field revolut_pay
        sig { returns(RevolutPay) }
        attr_reader :revolut_pay
        # Attribute for field samsung_pay
        sig { returns(SamsungPay) }
        attr_reader :samsung_pay
        # Attribute for field sepa_debit
        sig { returns(SepaDebit) }
        attr_reader :sepa_debit
        # Attribute for field sofort
        sig { returns(Sofort) }
        attr_reader :sofort
        # Attribute for field swish
        sig { returns(Swish) }
        attr_reader :swish
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class Permissions < Stripe::StripeObject
        class Update < Stripe::StripeObject
          # Determines which entity is allowed to update the line items.
          #
          # Default is `client_only`. Stripe Checkout client will automatically update the line items. If set to `server_only`, only your server is allowed to update the line items.
          #
          # When set to `server_only`, you must add the onLineItemsChange event handler when initializing the Stripe Checkout client and manually update the line items from your server using the Stripe API.
          sig { returns(T.nilable(String)) }
          attr_reader :line_items
          # Determines which entity is allowed to update the shipping details.
          #
          # Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.
          #
          # When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
          sig { returns(T.nilable(String)) }
          attr_reader :shipping_details
        end
        # Permissions for updating the Checkout Session.
        sig { returns(T.nilable(Update)) }
        attr_reader :update
      end
      class PhoneNumberCollection < Stripe::StripeObject
        # Indicates whether phone number collection is enabled for the session
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class SavedPaymentMethodOptions < Stripe::StripeObject
        # Uses the `allow_redisplay` value of each saved payment method to filter the set presented to a returning customer. By default, only saved payment methods with ’allow_redisplay: ‘always’ are shown in Checkout.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allow_redisplay_filters
        # Enable customers to choose if they wish to remove their saved payment methods. Disabled by default.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_remove
        # Enable customers to choose if they wish to save their payment method for future use. Disabled by default.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_save
      end
      class ShippingAddressCollection < Stripe::StripeObject
        # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
        # shipping locations. Unsupported country codes: `AS, CX, CC, CU, HM, IR, KP, MH, FM, NF, MP, PW, SD, SY, UM, VI`.
        sig { returns(T::Array[String]) }
        attr_reader :allowed_countries
      end
      class ShippingCost < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          attr_reader :amount
          # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
          sig { returns(Stripe::TaxRate) }
          attr_reader :rate
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end
        # Total shipping cost before any discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
        sig { returns(Integer) }
        attr_reader :amount_tax
        # Total shipping cost after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # The ID of the ShippingRate for this order.
        sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
        attr_reader :shipping_rate
        # The taxes applied to the shipping rate.
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      class ShippingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier
        # Recipient name.
        sig { returns(String) }
        attr_reader :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
      end
      class ShippingOption < Stripe::StripeObject
        # A non-negative integer in cents representing how much to charge.
        sig { returns(Integer) }
        attr_reader :shipping_amount
        # The shipping rate.
        sig { returns(T.any(String, Stripe::ShippingRate)) }
        attr_reader :shipping_rate
      end
      class TaxIdCollection < Stripe::StripeObject
        # Indicates whether tax ID collection is enabled for the session
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Indicates whether a tax ID is required on the payment page
        sig { returns(String) }
        attr_reader :required
      end
      class TotalDetails < Stripe::StripeObject
        class Breakdown < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            # The amount discounted.
            sig { returns(Integer) }
            attr_reader :amount
            # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
            # It contains information about when the discount began, when it will end, and what it is applied to.
            #
            # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
            sig { returns(Stripe::Discount) }
            attr_reader :discount
          end
          class Tax < Stripe::StripeObject
            # Amount of tax applied for this rate.
            sig { returns(Integer) }
            attr_reader :amount
            # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
            #
            # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
            sig { returns(Stripe::TaxRate) }
            attr_reader :rate
            # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
            sig { returns(T.nilable(String)) }
            attr_reader :taxability_reason
            # The amount on which tax is calculated, in cents (or local equivalent).
            sig { returns(T.nilable(Integer)) }
            attr_reader :taxable_amount
          end
          # The aggregated discounts.
          sig { returns(T::Array[Discount]) }
          attr_reader :discounts
          # The aggregated tax amounts by rate.
          sig { returns(T::Array[Tax]) }
          attr_reader :taxes
        end
        # This is the sum of all the discounts.
        sig { returns(Integer) }
        attr_reader :amount_discount
        # This is the sum of all the shipping amounts.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_shipping
        # This is the sum of all the tax amounts.
        sig { returns(Integer) }
        attr_reader :amount_tax
        # Attribute for field breakdown
        sig { returns(Breakdown) }
        attr_reader :breakdown
      end
      # Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
      sig { returns(T.nilable(AdaptivePricing)) }
      attr_reader :adaptive_pricing

      # When set, provides configuration for actions to take if this Checkout Session expires.
      sig { returns(T.nilable(AfterExpiration)) }
      attr_reader :after_expiration

      # Enables user redeemable promotion codes.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_promotion_codes

      # Total of all items before discounts or taxes are applied.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_subtotal

      # Total of all items after discounts and taxes are applied.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_total

      # Attribute for field automatic_tax
      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax

      # Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_address_collection

      # If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website.
      sig { returns(T.nilable(String)) }
      attr_reader :cancel_url

      # A unique string to reference the Checkout Session. This can be a
      # customer ID, a cart ID, or similar, and can be used to reconcile the
      # Session with your internal systems.
      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      # The client secret of the Session. Use this with [initCustomCheckout](https://stripe.com/docs/js/custom_checkout/init) on your front end.
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      # Information about the customer collected within the Checkout Session.
      sig { returns(T.nilable(CollectedInformation)) }
      attr_reader :collected_information

      # Results of `consent_collection` for this session.
      sig { returns(T.nilable(Consent)) }
      attr_reader :consent

      # When set, provides configuration for the Checkout Session to gather active consent from customers.
      sig { returns(T.nilable(ConsentCollection)) }
      attr_reader :consent_collection

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      # Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions
      sig { returns(T.nilable(CurrencyConversion)) }
      attr_reader :currency_conversion

      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      sig { returns(T::Array[CustomField]) }
      attr_reader :custom_fields

      # Attribute for field custom_text
      sig { returns(CustomText) }
      attr_reader :custom_text

      # The ID of the customer for this Session.
      # For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkout
      # will create a new customer object based on information provided
      # during the payment flow unless an existing customer was provided when
      # the Session was created.
      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      attr_reader :customer

      # Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_creation

      # The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
      sig { returns(T.nilable(CustomerDetails)) }
      attr_reader :customer_details

      # If provided, this value will be used when the Customer object is created.
      # If not provided, customers will be asked to enter their email address.
      # Use this parameter to prefill customer data if you already have an email
      # on file. To access information about the customer once the payment flow is
      # complete, use the `customer` attribute.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_email

      # The timestamp at which the Checkout Session will expire.
      sig { returns(Integer) }
      attr_reader :expires_at

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # ID of the invoice created by the Checkout Session, if it exists.
      sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
      attr_reader :invoice

      # Details on the state of invoice creation for the Checkout Session.
      sig { returns(T.nilable(InvoiceCreation)) }
      attr_reader :invoice_creation

      # The line items purchased by the customer.
      sig { returns(Stripe::ListObject) }
      attr_reader :line_items

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # The mode of the Checkout Session.
      sig { returns(String) }
      attr_reader :mode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The ID of the PaymentIntent for Checkout Sessions in `payment` mode. You can't confirm or cancel the PaymentIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
      attr_reader :payment_intent

      # The ID of the Payment Link that created this Session.
      sig { returns(T.nilable(T.any(String, Stripe::PaymentLink))) }
      attr_reader :payment_link

      # Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_method_collection

      # Information about the payment method configuration used for this Checkout session if using dynamic payment methods.
      sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
      attr_reader :payment_method_configuration_details

      # Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options

      # A list of the types of payment methods (e.g. card) this Checkout
      # Session is allowed to accept.
      sig { returns(T::Array[String]) }
      attr_reader :payment_method_types

      # The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
      # You can use this value to decide when to fulfill your customer's order.
      sig { returns(String) }
      attr_reader :payment_status

      # This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object.
      #
      # For specific permissions, please refer to their dedicated subsections, such as `permissions.update.shipping_details`.
      sig { returns(T.nilable(Permissions)) }
      attr_reader :permissions

      # Attribute for field phone_number_collection
      sig { returns(PhoneNumberCollection) }
      attr_reader :phone_number_collection

      # The ID of the original expired Checkout Session that triggered the recovery flow.
      sig { returns(T.nilable(String)) }
      attr_reader :recovered_from

      # This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://stripe.com/docs/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
      sig { returns(String) }
      attr_reader :redirect_on_completion

      # Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      sig { returns(String) }
      attr_reader :return_url

      # Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
      sig { returns(T.nilable(SavedPaymentMethodOptions)) }
      attr_reader :saved_payment_method_options

      # The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
      attr_reader :setup_intent

      # When set, provides configuration for Checkout to collect a shipping address from a customer.
      sig { returns(T.nilable(ShippingAddressCollection)) }
      attr_reader :shipping_address_collection

      # The details of the customer cost of shipping, including the customer chosen ShippingRate.
      sig { returns(T.nilable(ShippingCost)) }
      attr_reader :shipping_cost

      # Shipping information for this Checkout Session.
      sig { returns(T.nilable(ShippingDetails)) }
      attr_reader :shipping_details

      # The shipping rate options applied to this Session.
      sig { returns(T::Array[ShippingOption]) }
      attr_reader :shipping_options

      # The status of the Checkout Session, one of `open`, `complete`, or `expired`.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      # Describes the type of transaction being performed by Checkout in order to customize
      # relevant text on the page, such as the submit button. `submit_type` can only be
      # specified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
      sig { returns(T.nilable(String)) }
      attr_reader :submit_type

      # The ID of the subscription for Checkout Sessions in `subscription` mode.
      sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
      attr_reader :subscription

      # The URL the customer will be directed to after the payment or
      # subscription creation is successful.
      sig { returns(T.nilable(String)) }
      attr_reader :success_url

      # Attribute for field tax_id_collection
      sig { returns(TaxIdCollection) }
      attr_reader :tax_id_collection

      # Tax and discount details for the computed total amount.
      sig { returns(T.nilable(TotalDetails)) }
      attr_reader :total_details

      # The UI mode of the Session. Defaults to `hosted`.
      sig { returns(T.nilable(String)) }
      attr_reader :ui_mode

      # The URL to the Checkout Session. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://stripe.com/docs/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
      # This value is only present when the session is active.
      sig { returns(T.nilable(String)) }
      attr_reader :url
    end
  end
end