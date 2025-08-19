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
        # If enabled, Adaptive Pricing is available on [eligible sessions](https://docs.stripe.com/payments/currencies/localize-prices/adaptive-pricing?payment-ui=stripe-hosted#restrictions).
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
        # The tax provider powering automatic tax.
        sig { returns(T.nilable(String)) }
        attr_reader :provider
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
          # Customer name.
          sig { returns(String) }
          attr_reader :name
        end
        # Shipping information for this Checkout Session.
        sig { returns(T.nilable(ShippingDetails)) }
        attr_reader :shipping_details
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
          # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
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
      class Discount < Stripe::StripeObject
        # Coupon attached to the Checkout Session.
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon
        # Promotion code attached to the Checkout Session.
        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
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
            # ID of the invoice rendering template to be used for the generated invoice.
            sig { returns(T.nilable(String)) }
            attr_reader :template
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
      class OptionalItem < Stripe::StripeObject
        class AdjustableQuantity < Stripe::StripeObject
          # Set to true if the quantity can be adjusted to any non-negative integer.
          sig { returns(T::Boolean) }
          attr_reader :enabled
          # The maximum quantity of this item the customer can purchase. By default this value is 99. You can specify a value up to 999999.
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum
          # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum
        end
        # Attribute for field adjustable_quantity
        sig { returns(T.nilable(AdjustableQuantity)) }
        attr_reader :adjustable_quantity
        # Attribute for field price
        sig { returns(String) }
        attr_reader :price
        # Attribute for field quantity
        sig { returns(Integer) }
        attr_reader :quantity
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
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(String) }
          attr_reader :target_date
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
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(String) }
          attr_reader :target_date
        end
        class BacsDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(String) }
            attr_reader :reference_prefix
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
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(String) }
          attr_reader :target_date
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
          class Restrictions < Stripe::StripeObject
            # Specify the card brands to block in the Checkout Session. If a customer enters or selects a card belonging to a blocked brand, they can't complete the Session.
            sig { returns(T::Array[String]) }
            attr_reader :brands_blocked
          end
          # Attribute for field installments
          sig { returns(Installments) }
          attr_reader :installments
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
          # Attribute for field restrictions
          sig { returns(Restrictions) }
          attr_reader :restrictions
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
        end
        class Pix < Stripe::StripeObject
          # Determines if the amount includes the IOF tax.
          sig { returns(String) }
          attr_reader :amount_includes_iof
          # The number of seconds after which Pix payment will expire.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_seconds
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
          class MandateOptions < Stripe::StripeObject
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(String) }
            attr_reader :reference_prefix
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
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(String) }
          attr_reader :target_date
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
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(String) }
          attr_reader :target_date
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
        # Determines which entity is allowed to update the shipping details.
        #
        # Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.
        #
        # When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
        sig { returns(T.nilable(String)) }
        attr_reader :update_shipping_details
      end
      class PhoneNumberCollection < Stripe::StripeObject
        # Indicates whether phone number collection is enabled for the session
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class PresentmentDetails < Stripe::StripeObject
        # Amount intended to be collected by this payment, denominated in `presentment_currency`.
        sig { returns(Integer) }
        attr_reader :presentment_amount
        # Currency presented to the customer during payment.
        sig { returns(String) }
        attr_reader :presentment_currency
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
        # shipping locations. Unsupported country codes: `AS, CX, CC, CU, HM, IR, KP, MH, FM, NF, MP, PW, SY, UM, VI`.
        sig { returns(T::Array[String]) }
        attr_reader :allowed_countries
      end
      class ShippingCost < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          attr_reader :amount
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
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
            # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
            #
            # Related guide: [Tax rates](/billing/taxes/tax-rates)
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
      class WalletOptions < Stripe::StripeObject
        class Link < Stripe::StripeObject
          # Describes whether Checkout should display Link. Defaults to `auto`.
          sig { returns(String) }
          attr_reader :display
        end
        # Attribute for field link
        sig { returns(Link) }
        attr_reader :link
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
      # The client secret of your Checkout Session. Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. For `ui_mode: embedded`, the client secret is to be used when initializing Stripe.js embedded checkout.
      #  For `ui_mode: custom`, use the client secret with [initCheckout](https://stripe.com/docs/js/custom_checkout/init) on your front end.
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
      # Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions created before 2025-03-31.
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
      # List of coupons and promotion codes attached to the Checkout Session.
      sig { returns(T.nilable(T::Array[Discount])) }
      attr_reader :discounts
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
      # The optional items presented to the customer at checkout.
      sig { returns(T.nilable(T::Array[OptionalItem])) }
      attr_reader :optional_items
      # Where the user is coming from. This informs the optimizations that are applied to the session.
      sig { returns(T.nilable(String)) }
      attr_reader :origin_context
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
      # For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
      sig { returns(T.nilable(Permissions)) }
      attr_reader :permissions
      # Attribute for field phone_number_collection
      sig { returns(PhoneNumberCollection) }
      attr_reader :phone_number_collection
      # Attribute for field presentment_details
      sig { returns(PresentmentDetails) }
      attr_reader :presentment_details
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
      # The ID of the [Subscription](https://stripe.com/docs/api/subscriptions) for Checkout Sessions in `subscription` mode.
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
      # The URL to the Checkout Session. Applies to Checkout Sessions with `ui_mode: hosted`. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://stripe.com/docs/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
      # This value is only present when the session is active.
      sig { returns(T.nilable(String)) }
      attr_reader :url
      # Wallet-specific configuration for this Checkout Session.
      sig { returns(T.nilable(WalletOptions)) }
      attr_reader :wallet_options
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        class CustomerDetails < Stripe::RequestParams
          # Customer's email address.
          sig { returns(String) }
          attr_accessor :email
          sig { params(email: String).void }
          def initialize(email: nil); end
        end
        # Only return Checkout Sessions that were created during the given date interval.
        sig { returns(T.nilable(T.any(::Stripe::Checkout::Session::ListParams::Created, Integer))) }
        attr_accessor :created
        # Only return the Checkout Sessions for the Customer specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # Only return the Checkout Sessions for the Customer details specified.
        sig { returns(T.nilable(::Stripe::Checkout::Session::ListParams::CustomerDetails)) }
        attr_accessor :customer_details
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Only return the Checkout Session for the PaymentIntent specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_intent
        # Only return the Checkout Sessions for the Payment Link specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_link
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return the Checkout Sessions matching the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Only return the Checkout Session for the subscription specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :subscription
        sig {
          params(created: T.nilable(T.any(::Stripe::Checkout::Session::ListParams::Created, Integer)), customer: T.nilable(String), customer_details: T.nilable(::Stripe::Checkout::Session::ListParams::CustomerDetails), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_intent: T.nilable(String), payment_link: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), subscription: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          customer: nil,
          customer_details: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          payment_intent: nil,
          payment_link: nil,
          starting_after: nil,
          status: nil,
          subscription: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class AdaptivePricing < Stripe::RequestParams
          # If set to `true`, Adaptive Pricing is available on [eligible sessions](https://docs.stripe.com/payments/currencies/localize-prices/adaptive-pricing?payment-ui=stripe-hosted#restrictions). Defaults to your [dashboard setting](https://dashboard.stripe.com/settings/adaptive-pricing).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :enabled
          sig { params(enabled: T.nilable(T::Boolean)).void }
          def initialize(enabled: nil); end
        end
        class AfterExpiration < Stripe::RequestParams
          class Recovery < Stripe::RequestParams
            # Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :allow_promotion_codes
            # If `true`, a recovery URL will be generated to recover this Checkout Session if it
            # expires before a successful transaction is completed. It will be attached to the
            # Checkout Session object upon expiration.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig { params(allow_promotion_codes: T.nilable(T::Boolean), enabled: T::Boolean).void }
            def initialize(allow_promotion_codes: nil, enabled: nil); end
          end
          # Configure a Checkout Session that can be used to recover an expired session.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::AfterExpiration::Recovery))
           }
          attr_accessor :recovery
          sig {
            params(recovery: T.nilable(::Stripe::Checkout::Session::CreateParams::AfterExpiration::Recovery)).void
           }
          def initialize(recovery: nil); end
        end
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.
          #
          # Enabling this parameter causes Checkout to collect any billing address information necessary for tax calculation.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::AutomaticTax::Liability))
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: T.nilable(::Stripe::Checkout::Session::CreateParams::AutomaticTax::Liability)).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class ConsentCollection < Stripe::RequestParams
          class PaymentMethodReuseAgreement < Stripe::RequestParams
            # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's
            # defaults will be used. When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
            sig { returns(String) }
            attr_accessor :position
            sig { params(position: String).void }
            def initialize(position: nil); end
          end
          # Determines the display of payment method reuse agreement text in the UI. If set to `hidden`, it will hide legal text related to the reuse of a payment method.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ConsentCollection::PaymentMethodReuseAgreement))
           }
          attr_accessor :payment_method_reuse_agreement
          # If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
          # Session will determine whether to display an option to opt into promotional communication
          # from the merchant depending on the customer's locale. Only available to US merchants.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotions
          # If set to `required`, it requires customers to check a terms of service checkbox before being able to pay.
          # There must be a valid terms of service URL set in your [Dashboard settings](https://dashboard.stripe.com/settings/public).
          sig { returns(T.nilable(String)) }
          attr_accessor :terms_of_service
          sig {
            params(payment_method_reuse_agreement: T.nilable(::Stripe::Checkout::Session::CreateParams::ConsentCollection::PaymentMethodReuseAgreement), promotions: T.nilable(String), terms_of_service: T.nilable(String)).void
           }
          def initialize(
            payment_method_reuse_agreement: nil,
            promotions: nil,
            terms_of_service: nil
          ); end
        end
        class CustomField < Stripe::RequestParams
          class Dropdown < Stripe::RequestParams
            class Option < Stripe::RequestParams
              # The label for the option, displayed to the customer. Up to 100 characters.
              sig { returns(String) }
              attr_accessor :label
              # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
              sig { returns(String) }
              attr_accessor :value
              sig { params(label: String, value: String).void }
              def initialize(label: nil, value: nil); end
            end
            # The value that will pre-fill the field on the payment page.Must match a `value` in the `options` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :default_value
            # The options available for the customer to select. Up to 200 options allowed.
            sig {
              returns(T::Array[::Stripe::Checkout::Session::CreateParams::CustomField::Dropdown::Option])
             }
            attr_accessor :options
            sig {
              params(default_value: T.nilable(String), options: T::Array[::Stripe::Checkout::Session::CreateParams::CustomField::Dropdown::Option]).void
             }
            def initialize(default_value: nil, options: nil); end
          end
          class Label < Stripe::RequestParams
            # Custom text for the label, displayed to the customer. Up to 50 characters.
            sig { returns(String) }
            attr_accessor :custom
            # The type of the label.
            sig { returns(String) }
            attr_accessor :type
            sig { params(custom: String, type: String).void }
            def initialize(custom: nil, type: nil); end
          end
          class Numeric < Stripe::RequestParams
            # The value that will pre-fill the field on the payment page.
            sig { returns(T.nilable(String)) }
            attr_accessor :default_value
            # The maximum character length constraint for the customer's input.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_length
            # The minimum character length requirement for the customer's input.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_length
            sig {
              params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
             }
            def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
          end
          class Text < Stripe::RequestParams
            # The value that will pre-fill the field on the payment page.
            sig { returns(T.nilable(String)) }
            attr_accessor :default_value
            # The maximum character length constraint for the customer's input.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_length
            # The minimum character length requirement for the customer's input.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_length
            sig {
              params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
             }
            def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
          end
          # Configuration for `type=dropdown` fields.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Dropdown))
           }
          attr_accessor :dropdown
          # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
          sig { returns(String) }
          attr_accessor :key
          # The label for the field, displayed to the customer.
          sig { returns(::Stripe::Checkout::Session::CreateParams::CustomField::Label) }
          attr_accessor :label
          # Configuration for `type=numeric` fields.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Numeric))
           }
          attr_accessor :numeric
          # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :optional
          # Configuration for `type=text` fields.
          sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Text)) }
          attr_accessor :text
          # The type of the field.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(dropdown: T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Dropdown), key: String, label: ::Stripe::Checkout::Session::CreateParams::CustomField::Label, numeric: T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Numeric), optional: T.nilable(T::Boolean), text: T.nilable(::Stripe::Checkout::Session::CreateParams::CustomField::Text), type: String).void
           }
          def initialize(
            dropdown: nil,
            key: nil,
            label: nil,
            numeric: nil,
            optional: nil,
            text: nil,
            type: nil
          ); end
        end
        class CustomText < Stripe::RequestParams
          class AfterSubmit < Stripe::RequestParams
            # Text may be up to 1200 characters in length.
            sig { returns(String) }
            attr_accessor :message
            sig { params(message: String).void }
            def initialize(message: nil); end
          end
          class ShippingAddress < Stripe::RequestParams
            # Text may be up to 1200 characters in length.
            sig { returns(String) }
            attr_accessor :message
            sig { params(message: String).void }
            def initialize(message: nil); end
          end
          class Submit < Stripe::RequestParams
            # Text may be up to 1200 characters in length.
            sig { returns(String) }
            attr_accessor :message
            sig { params(message: String).void }
            def initialize(message: nil); end
          end
          class TermsOfServiceAcceptance < Stripe::RequestParams
            # Text may be up to 1200 characters in length.
            sig { returns(String) }
            attr_accessor :message
            sig { params(message: String).void }
            def initialize(message: nil); end
          end
          # Custom text that should be displayed after the payment confirmation button.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::AfterSubmit)))
           }
          attr_accessor :after_submit
          # Custom text that should be displayed alongside shipping address collection.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::ShippingAddress)))
           }
          attr_accessor :shipping_address
          # Custom text that should be displayed alongside the payment confirmation button.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::Submit)))
           }
          attr_accessor :submit
          # Custom text that should be displayed in place of the default terms of service agreement text.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::TermsOfServiceAcceptance)))
           }
          attr_accessor :terms_of_service_acceptance
          sig {
            params(after_submit: T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::AfterSubmit)), shipping_address: T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::ShippingAddress)), submit: T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::Submit)), terms_of_service_acceptance: T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::CustomText::TermsOfServiceAcceptance))).void
           }
          def initialize(
            after_submit: nil,
            shipping_address: nil,
            submit: nil,
            terms_of_service_acceptance: nil
          ); end
        end
        class CustomerUpdate < Stripe::RequestParams
          # Describes whether Checkout saves the billing address onto `customer.address`.
          # To always collect a full billing address, use `billing_address_collection`. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :address
          # Describes whether Checkout saves the name onto `customer.name`. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Describes whether Checkout saves shipping information onto `customer.shipping`.
          # To collect shipping information, use `shipping_address_collection`. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :shipping
          sig {
            params(address: T.nilable(String), name: T.nilable(String), shipping: T.nilable(String)).void
           }
          def initialize(address: nil, name: nil, shipping: nil); end
        end
        class Discount < Stripe::RequestParams
          # The ID of the coupon to apply to this Session.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # The ID of a promotion code to apply to this Session.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig { params(coupon: T.nilable(String), promotion_code: T.nilable(String)).void }
          def initialize(coupon: nil, promotion_code: nil); end
        end
        class InvoiceCreation < Stripe::RequestParams
          class InvoiceData < Stripe::RequestParams
            class CustomField < Stripe::RequestParams
              # The name of the custom field. This may be up to 40 characters.
              sig { returns(String) }
              attr_accessor :name
              # The value of the custom field. This may be up to 140 characters.
              sig { returns(String) }
              attr_accessor :value
              sig { params(name: String, value: String).void }
              def initialize(name: nil, value: nil); end
            end
            class Issuer < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(T.nilable(String)) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: T.nilable(String), type: String).void }
              def initialize(account: nil, type: nil); end
            end
            class RenderingOptions < Stripe::RequestParams
              # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
              sig { returns(T.nilable(T.any(String, String))) }
              attr_accessor :amount_tax_display
              # ID of the invoice rendering template to use for this invoice.
              sig { returns(T.nilable(String)) }
              attr_accessor :template
              sig {
                params(amount_tax_display: T.nilable(T.any(String, String)), template: T.nilable(String)).void
               }
              def initialize(amount_tax_display: nil, template: nil); end
            end
            # The account tax IDs associated with the invoice.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :account_tax_ids
            # Default custom fields to be displayed on invoices for this customer.
            sig {
              returns(T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::CustomField])))
             }
            attr_accessor :custom_fields
            # An arbitrary string attached to the object. Often useful for displaying to users.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # Default footer to be displayed on invoices for this customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :footer
            # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::Issuer))
             }
            attr_accessor :issuer
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # Default options for invoice PDF rendering for this customer.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::RenderingOptions)))
             }
            attr_accessor :rendering_options
            sig {
              params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::CustomField])), description: T.nilable(String), footer: T.nilable(String), issuer: T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::Issuer), metadata: T.nilable(T::Hash[String, String]), rendering_options: T.nilable(T.any(String, ::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData::RenderingOptions))).void
             }
            def initialize(
              account_tax_ids: nil,
              custom_fields: nil,
              description: nil,
              footer: nil,
              issuer: nil,
              metadata: nil,
              rendering_options: nil
            ); end
          end
          # Set to `true` to enable invoice creation.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # Parameters passed when creating invoices for payment-mode Checkout Sessions.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData))
           }
          attr_accessor :invoice_data
          sig {
            params(enabled: T::Boolean, invoice_data: T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation::InvoiceData)).void
           }
          def initialize(enabled: nil, invoice_data: nil); end
        end
        class LineItem < Stripe::RequestParams
          class AdjustableQuantity < Stripe::RequestParams
            # Set to true if the quantity can be adjusted to any non-negative integer.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The maximum quantity the customer can purchase for the Checkout Session. By default this value is 99. You can specify a value up to 999999.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum
            # The minimum quantity the customer must purchase for the Checkout Session. By default this value is 0.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum
            sig {
              params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
             }
            def initialize(enabled: nil, maximum: nil, minimum: nil); end
          end
          class PriceData < Stripe::RequestParams
            class ProductData < Stripe::RequestParams
              # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
              sig { returns(T.nilable(String)) }
              attr_accessor :description
              # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :images
              # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
              sig { returns(T.nilable(T::Hash[String, String])) }
              attr_accessor :metadata
              # The product's name, meant to be displayable to the customer.
              sig { returns(String) }
              attr_accessor :name
              # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_code
              sig {
                params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_code: T.nilable(String)).void
               }
              def initialize(
                description: nil,
                images: nil,
                metadata: nil,
                name: nil,
                tax_code: nil
              ); end
            end
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: T.nilable(Integer)).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
            sig { returns(T.nilable(String)) }
            attr_accessor :product
            # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData::ProductData))
             }
            attr_accessor :product_data
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData::Recurring))
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: T.nilable(String), product_data: T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData::ProductData), recurring: T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
             }
            def initialize(
              currency: nil,
              product: nil,
              product_data: nil,
              recurring: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            ); end
          end
          # When set, provides configuration for this item’s quantity to be adjusted by the customer during Checkout.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::AdjustableQuantity))
           }
          attr_accessor :adjustable_quantity
          # The [tax rates](https://stripe.com/docs/api/tax_rates) that will be applied to this line item depending on the customer's billing/shipping address. We currently support the following countries: US, GB, AU, and all countries in the EU.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :dynamic_tax_rates
          # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object. One of `price` or `price_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData)) }
          attr_accessor :price_data
          # The quantity of the line item being purchased. Quantity should not be defined when `recurring.usage_type=metered`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # The [tax rates](https://stripe.com/docs/api/tax_rates) which apply to this line item.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          sig {
            params(adjustable_quantity: T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::AdjustableQuantity), dynamic_tax_rates: T.nilable(T::Array[String]), price: T.nilable(String), price_data: T.nilable(::Stripe::Checkout::Session::CreateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String])).void
           }
          def initialize(
            adjustable_quantity: nil,
            dynamic_tax_rates: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class OptionalItem < Stripe::RequestParams
          class AdjustableQuantity < Stripe::RequestParams
            # Set to true if the quantity can be adjusted to any non-negative integer.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The maximum quantity of this item the customer can purchase. By default this value is 99. You can specify a value up to 999999.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum
            # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum
            sig {
              params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
             }
            def initialize(enabled: nil, maximum: nil, minimum: nil); end
          end
          # When set, provides configuration for the customer to adjust the quantity of the line item created when a customer chooses to add this optional item to their order.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::OptionalItem::AdjustableQuantity))
           }
          attr_accessor :adjustable_quantity
          # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object.
          sig { returns(String) }
          attr_accessor :price
          # The initial quantity of the line item created when a customer chooses to add this optional item to their order.
          sig { returns(Integer) }
          attr_accessor :quantity
          sig {
            params(adjustable_quantity: T.nilable(::Stripe::Checkout::Session::CreateParams::OptionalItem::AdjustableQuantity), price: String, quantity: Integer).void
           }
          def initialize(adjustable_quantity: nil, price: nil, quantity: nil); end
        end
        class PaymentIntentData < Stripe::RequestParams
          class Shipping < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(String) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_accessor :state
              sig {
                params(city: T.nilable(String), country: T.nilable(String), line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              ); end
            end
            # Shipping address.
            sig {
              returns(::Stripe::Checkout::Session::CreateParams::PaymentIntentData::Shipping::Address)
             }
            attr_accessor :address
            # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
            sig { returns(T.nilable(String)) }
            attr_accessor :carrier
            # Recipient name.
            sig { returns(String) }
            attr_accessor :name
            # Recipient phone (including extension).
            sig { returns(T.nilable(String)) }
            attr_accessor :phone
            # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
            sig { returns(T.nilable(String)) }
            attr_accessor :tracking_number
            sig {
              params(address: ::Stripe::Checkout::Session::CreateParams::PaymentIntentData::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
             }
            def initialize(
              address: nil,
              carrier: nil,
              name: nil,
              phone: nil,
              tracking_number: nil
            ); end
          end
          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when a charge succeeds.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # If specified, successful charges will be attributed to the destination
            # account for tax reporting, and the funds from charges will be transferred
            # to the destination account. The ID of the resulting transfer will be
            # returned on the successful charge's `transfer` field.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :application_fee_amount
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The Stripe account ID for which these funds are intended. For details,
          # see the PaymentIntents [use case for connected
          # accounts](/docs/payments/connected-accounts).
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
          sig { returns(T.nilable(String)) }
          attr_accessor :receipt_email
          # Indicates that you intend to [make future payments](https://stripe.com/docs/payments/payment-intents#future-usage) with the payment
          # method collected by this Checkout Session.
          #
          # When setting this to `on_session`, Checkout will show a notice to the
          # customer that their payment details will be saved.
          #
          # When setting this to `off_session`, Checkout will show a notice to the
          # customer that their payment details will be saved and used for future
          # payments.
          #
          # If a Customer has been provided or Checkout creates a new Customer,
          # Checkout will attach the payment method to the Customer.
          #
          # If Checkout does not create a Customer, the payment method is not attached
          # to a Customer. To reuse the payment method, you can retrieve it from the
          # Checkout Session's PaymentIntent.
          #
          # When processing card payments, Checkout also uses `setup_future_usage`
          # to dynamically optimize your payment flow and comply with regional
          # legislation and network rules, such as SCA.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Shipping information for this payment.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData::Shipping))
           }
          attr_accessor :shipping
          # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
          #
          # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix
          # The parameters used to automatically create a Transfer when the payment succeeds.
          # For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData::TransferData))
           }
          attr_accessor :transfer_data
          # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
          sig { returns(T.nilable(String)) }
          attr_accessor :transfer_group
          sig {
            params(application_fee_amount: T.nilable(Integer), capture_method: T.nilable(String), description: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), receipt_email: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData::Shipping), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData::TransferData), transfer_group: T.nilable(String)).void
           }
          def initialize(
            application_fee_amount: nil,
            capture_method: nil,
            description: nil,
            metadata: nil,
            on_behalf_of: nil,
            receipt_email: nil,
            setup_future_usage: nil,
            shipping: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil,
            transfer_group: nil
          ); end
        end
        class PaymentMethodData < Stripe::RequestParams
          # Allow redisplay will be set on the payment method on confirmation and indicates whether this payment method can be shown again to the customer in a checkout flow. Only set this field if you wish to override the allow_redisplay value determined by Checkout.
          sig { returns(T.nilable(String)) }
          attr_accessor :allow_redisplay
          sig { params(allow_redisplay: T.nilable(String)).void }
          def initialize(allow_redisplay: nil); end
        end
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # A URL for custom mandate text to render during confirmation step.
              # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
              # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
              sig { returns(T.nilable(String)) }
              attr_accessor :custom_mandate_url
              # List of Stripe products where this mandate can be selected automatically. Only usable in `setup` mode.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :default_for
              # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
              sig { returns(T.nilable(String)) }
              attr_accessor :interval_description
              # Payment schedule for the mandate.
              sig { returns(T.nilable(String)) }
              attr_accessor :payment_schedule
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              attr_accessor :transaction_type
              sig {
                params(custom_mandate_url: T.nilable(String), default_for: T.nilable(T::Array[String]), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
               }
              def initialize(
                custom_mandate_url: nil,
                default_for: nil,
                interval_description: nil,
                payment_schedule: nil,
                transaction_type: nil
              ); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). This is only accepted for Checkout Sessions in `setup` mode.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            attr_accessor :mandate_options
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            attr_accessor :target_date
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(currency: T.nilable(String), mandate_options: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(String), target_date: T.nilable(String), verification_method: T.nilable(String)).void
             }
            def initialize(
              currency: nil,
              mandate_options: nil,
              setup_future_usage: nil,
              target_date: nil,
              verification_method: nil
            ); end
          end
          class Affirm < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class AfterpayClearpay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Alipay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class AmazonPay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class AuBecsDebit < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            attr_accessor :target_date
            sig {
              params(setup_future_usage: T.nilable(String), target_date: T.nilable(String)).void
             }
            def initialize(setup_future_usage: nil, target_date: nil); end
          end
          class BacsDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference_prefix
              sig { params(reference_prefix: T.nilable(String)).void }
              def initialize(reference_prefix: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
             }
            attr_accessor :mandate_options
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            attr_accessor :target_date
            sig {
              params(mandate_options: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(String), target_date: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Boleto < Stripe::RequestParams
            # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :expires_after_days
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
             }
            def initialize(expires_after_days: nil, setup_future_usage: nil); end
          end
          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              # Setting to true enables installments for this Checkout Session.
              # Setting to false will prevent any installment plan from applying to a payment.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :enabled
              sig { params(enabled: T.nilable(T::Boolean)).void }
              def initialize(enabled: nil); end
            end
            class Restrictions < Stripe::RequestParams
              # Specify the card brands to block in the Checkout Session. If a customer enters or selects a card belonging to a blocked brand, they can't complete the Session.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :brands_blocked
              sig { params(brands_blocked: T.nilable(T::Array[String])).void }
              def initialize(brands_blocked: nil); end
            end
            # Installment options for card payments
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card::Installments))
             }
            attr_accessor :installments
            # Request ability to [capture beyond the standard authorization validity window](/payments/extended-authorization) for this CheckoutSession.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_extended_authorization
            # Request ability to [increment the authorization](/payments/incremental-authorization) for this CheckoutSession.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_incremental_authorization
            # Request ability to make [multiple captures](/payments/multicapture) for this CheckoutSession.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_multicapture
            # Request ability to [overcapture](/payments/overcapture) for this CheckoutSession.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_overcapture
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_three_d_secure
            # Restrictions to apply to the card payment method. For example, you can block specific card brands.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card::Restrictions))
             }
            attr_accessor :restrictions
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
            sig { returns(T.nilable(String)) }
            attr_accessor :statement_descriptor_suffix_kana
            # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
            sig { returns(T.nilable(String)) }
            attr_accessor :statement_descriptor_suffix_kanji
            sig {
              params(installments: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card::Installments), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), restrictions: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card::Restrictions), setup_future_usage: T.nilable(String), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String)).void
             }
            def initialize(
              installments: nil,
              request_extended_authorization: nil,
              request_incremental_authorization: nil,
              request_multicapture: nil,
              request_overcapture: nil,
              request_three_d_secure: nil,
              restrictions: nil,
              setup_future_usage: nil,
              statement_descriptor_suffix_kana: nil,
              statement_descriptor_suffix_kanji: nil
            ); end
          end
          class Cashapp < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                attr_accessor :country
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for eu_bank_transfer funding type.
              sig {
                returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              attr_accessor :eu_bank_transfer
              # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
              #
              # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :requested_address_types
              # The list of bank transfer types that this PaymentIntent is allowed to use for funding.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(eu_bank_transfer: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
               }
              def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_accessor :funding_type
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(bank_transfer: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
          end
          class Eps < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Fpx < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Giropay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Grabpay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Ideal < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class KakaoPay < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(capture_method: nil, setup_future_usage: nil); end
          end
          class Klarna < Stripe::RequestParams
            class Subscription < Stripe::RequestParams
              class NextBilling < Stripe::RequestParams
                # The amount of the next charge for the subscription.
                sig { returns(Integer) }
                attr_accessor :amount
                # The date of the next charge for the subscription in YYYY-MM-DD format.
                sig { returns(String) }
                attr_accessor :date
                sig { params(amount: Integer, date: String).void }
                def initialize(amount: nil, date: nil); end
              end
              # Unit of time between subscription charges.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :interval_count
              # Name for subscription.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # Describes the upcoming charge for this subscription.
              sig {
                returns(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
               }
              attr_accessor :next_billing
              # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
              sig { returns(String) }
              attr_accessor :reference
              sig {
                params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: ::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling, reference: String).void
               }
              def initialize(
                interval: nil,
                interval_count: nil,
                name: nil,
                next_billing: nil,
                reference: nil
              ); end
            end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Subscription details if the Checkout Session sets up a future subscription.
            sig {
              returns(T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
             }
            attr_accessor :subscriptions
            sig {
              params(setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).void
             }
            def initialize(setup_future_usage: nil, subscriptions: nil); end
          end
          class Konbini < Stripe::RequestParams
            # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :expires_after_days
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
             }
            def initialize(expires_after_days: nil, setup_future_usage: nil); end
          end
          class KrCard < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(capture_method: nil, setup_future_usage: nil); end
          end
          class Link < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Mobilepay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Multibanco < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class NaverPay < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(capture_method: nil, setup_future_usage: nil); end
          end
          class Oxxo < Stripe::RequestParams
            # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :expires_after_days
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
             }
            def initialize(expires_after_days: nil, setup_future_usage: nil); end
          end
          class P24 < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Confirm that the payer has accepted the P24 terms and conditions.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :tos_shown_and_accepted
            sig {
              params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
             }
            def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
          end
          class PayByBank < Stripe::RequestParams; end
          class Payco < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            sig { params(capture_method: T.nilable(String)).void }
            def initialize(capture_method: nil); end
          end
          class Paynow < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Paypal < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_accessor :preferred_locale
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference
            # The risk correlation ID for an on-session payment using a saved PayPal payment method.
            sig { returns(T.nilable(String)) }
            attr_accessor :risk_correlation_id
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :setup_future_usage
            sig {
              params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), reference: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
             }
            def initialize(
              capture_method: nil,
              preferred_locale: nil,
              reference: nil,
              risk_correlation_id: nil,
              setup_future_usage: nil
            ); end
          end
          class Pix < Stripe::RequestParams
            # Determines if the amount includes the IOF tax. Defaults to `never`.
            sig { returns(T.nilable(String)) }
            attr_accessor :amount_includes_iof
            # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :expires_after_seconds
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
             }
            def initialize(
              amount_includes_iof: nil,
              expires_after_seconds: nil,
              setup_future_usage: nil
            ); end
          end
          class RevolutPay < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class SamsungPay < Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            attr_accessor :capture_method
            sig { params(capture_method: T.nilable(String)).void }
            def initialize(capture_method: nil); end
          end
          class SepaDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference_prefix
              sig { params(reference_prefix: T.nilable(String)).void }
              def initialize(reference_prefix: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
             }
            attr_accessor :mandate_options
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            attr_accessor :target_date
            sig {
              params(mandate_options: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(String), target_date: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
          end
          class Sofort < Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig { params(setup_future_usage: T.nilable(String)).void }
            def initialize(setup_future_usage: nil); end
          end
          class Swish < Stripe::RequestParams
            # The order reference that will be displayed to customers in the Swish application. Defaults to the `id` of the Payment Intent.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference
            sig { params(reference: T.nilable(String)).void }
            def initialize(reference: nil); end
          end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :prefetch
              sig {
                params(permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
               }
              def initialize(permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
             }
            attr_accessor :financial_connections
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            attr_accessor :target_date
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(financial_connections: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), setup_future_usage: T.nilable(String), target_date: T.nilable(String), verification_method: T.nilable(String)).void
             }
            def initialize(
              financial_connections: nil,
              setup_future_usage: nil,
              target_date: nil,
              verification_method: nil
            ); end
          end
          class WechatPay < Stripe::RequestParams
            # The app ID registered with WeChat Pay. Only required when client is ios or android.
            sig { returns(T.nilable(String)) }
            attr_accessor :app_id
            # The client type that the end customer will pay from
            sig { returns(String) }
            attr_accessor :client
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            attr_accessor :setup_future_usage
            sig {
              params(app_id: T.nilable(String), client: String, setup_future_usage: T.nilable(String)).void
             }
            def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
          end
          # contains details about the ACSS Debit payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AcssDebit))
           }
          attr_accessor :acss_debit
          # contains details about the Affirm payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Affirm))
           }
          attr_accessor :affirm
          # contains details about the Afterpay Clearpay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AfterpayClearpay))
           }
          attr_accessor :afterpay_clearpay
          # contains details about the Alipay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Alipay))
           }
          attr_accessor :alipay
          # contains details about the AmazonPay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AmazonPay))
           }
          attr_accessor :amazon_pay
          # contains details about the AU Becs Debit payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AuBecsDebit))
           }
          attr_accessor :au_becs_debit
          # contains details about the Bacs Debit payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::BacsDebit))
           }
          attr_accessor :bacs_debit
          # contains details about the Bancontact payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Bancontact))
           }
          attr_accessor :bancontact
          # contains details about the Boleto payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Boleto))
           }
          attr_accessor :boleto
          # contains details about the Card payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card))
           }
          attr_accessor :card
          # contains details about the Cashapp Pay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Cashapp))
           }
          attr_accessor :cashapp
          # contains details about the Customer Balance payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance))
           }
          attr_accessor :customer_balance
          # contains details about the EPS payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Eps))
           }
          attr_accessor :eps
          # contains details about the FPX payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Fpx))
           }
          attr_accessor :fpx
          # contains details about the Giropay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Giropay))
           }
          attr_accessor :giropay
          # contains details about the Grabpay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Grabpay))
           }
          attr_accessor :grabpay
          # contains details about the Ideal payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Ideal))
           }
          attr_accessor :ideal
          # contains details about the Kakao Pay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::KakaoPay))
           }
          attr_accessor :kakao_pay
          # contains details about the Klarna payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna))
           }
          attr_accessor :klarna
          # contains details about the Konbini payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Konbini))
           }
          attr_accessor :konbini
          # contains details about the Korean card payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::KrCard))
           }
          attr_accessor :kr_card
          # contains details about the Link payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Link))
           }
          attr_accessor :link
          # contains details about the Mobilepay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Mobilepay))
           }
          attr_accessor :mobilepay
          # contains details about the Multibanco payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Multibanco))
           }
          attr_accessor :multibanco
          # contains details about the Naver Pay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::NaverPay))
           }
          attr_accessor :naver_pay
          # contains details about the OXXO payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Oxxo))
           }
          attr_accessor :oxxo
          # contains details about the P24 payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::P24))
           }
          attr_accessor :p24
          # contains details about the Pay By Bank payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::PayByBank))
           }
          attr_accessor :pay_by_bank
          # contains details about the PAYCO payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Payco))
           }
          attr_accessor :payco
          # contains details about the PayNow payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Paynow))
           }
          attr_accessor :paynow
          # contains details about the PayPal payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Paypal))
           }
          attr_accessor :paypal
          # contains details about the Pix payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Pix))
           }
          attr_accessor :pix
          # contains details about the RevolutPay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::RevolutPay))
           }
          attr_accessor :revolut_pay
          # contains details about the Samsung Pay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SamsungPay))
           }
          attr_accessor :samsung_pay
          # contains details about the Sepa Debit payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SepaDebit))
           }
          attr_accessor :sepa_debit
          # contains details about the Sofort payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Sofort))
           }
          attr_accessor :sofort
          # contains details about the Swish payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Swish))
           }
          attr_accessor :swish
          # contains details about the Us Bank Account payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::UsBankAccount))
           }
          attr_accessor :us_bank_account
          # contains details about the WeChat Pay payment method options.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::WechatPay))
           }
          attr_accessor :wechat_pay
          sig {
            params(acss_debit: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AcssDebit), affirm: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Affirm), afterpay_clearpay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Alipay), amazon_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AmazonPay), au_becs_debit: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::AuBecsDebit), bacs_debit: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::BacsDebit), bancontact: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Bancontact), boleto: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Boleto), card: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Card), cashapp: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Cashapp), customer_balance: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::CustomerBalance), eps: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Eps), fpx: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Fpx), giropay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Giropay), grabpay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Grabpay), ideal: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Ideal), kakao_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::KakaoPay), klarna: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Klarna), konbini: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Konbini), kr_card: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::KrCard), link: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Link), mobilepay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Mobilepay), multibanco: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Multibanco), naver_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::NaverPay), oxxo: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::P24), pay_by_bank: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::PayByBank), payco: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Payco), paynow: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Paynow), paypal: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Paypal), pix: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Pix), revolut_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::RevolutPay), samsung_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SamsungPay), sepa_debit: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::SepaDebit), sofort: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Sofort), swish: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::Swish), us_bank_account: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::UsBankAccount), wechat_pay: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions::WechatPay)).void
           }
          def initialize(
            acss_debit: nil,
            affirm: nil,
            afterpay_clearpay: nil,
            alipay: nil,
            amazon_pay: nil,
            au_becs_debit: nil,
            bacs_debit: nil,
            bancontact: nil,
            boleto: nil,
            card: nil,
            cashapp: nil,
            customer_balance: nil,
            eps: nil,
            fpx: nil,
            giropay: nil,
            grabpay: nil,
            ideal: nil,
            kakao_pay: nil,
            klarna: nil,
            konbini: nil,
            kr_card: nil,
            link: nil,
            mobilepay: nil,
            multibanco: nil,
            naver_pay: nil,
            oxxo: nil,
            p24: nil,
            pay_by_bank: nil,
            payco: nil,
            paynow: nil,
            paypal: nil,
            pix: nil,
            revolut_pay: nil,
            samsung_pay: nil,
            sepa_debit: nil,
            sofort: nil,
            swish: nil,
            us_bank_account: nil,
            wechat_pay: nil
          ); end
        end
        class Permissions < Stripe::RequestParams
          # Determines which entity is allowed to update the shipping details.
          #
          # Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.
          #
          # When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
          sig { returns(T.nilable(String)) }
          attr_accessor :update_shipping_details
          sig { params(update_shipping_details: T.nilable(String)).void }
          def initialize(update_shipping_details: nil); end
        end
        class PhoneNumberCollection < Stripe::RequestParams
          # Set to `true` to enable phone number collection.
          #
          # Can only be set in `payment` and `subscription` mode.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class SavedPaymentMethodOptions < Stripe::RequestParams
          # Uses the `allow_redisplay` value of each saved payment method to filter the set presented to a returning customer. By default, only saved payment methods with ’allow_redisplay: ‘always’ are shown in Checkout.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :allow_redisplay_filters
          # Enable customers to choose if they wish to remove their saved payment methods. Disabled by default.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_remove
          # Enable customers to choose if they wish to save their payment method for future use. Disabled by default.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_save
          sig {
            params(allow_redisplay_filters: T.nilable(T::Array[String]), payment_method_remove: T.nilable(String), payment_method_save: T.nilable(String)).void
           }
          def initialize(
            allow_redisplay_filters: nil,
            payment_method_remove: nil,
            payment_method_save: nil
          ); end
        end
        class SetupIntentData < Stripe::RequestParams
          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The Stripe account for which the setup is intended.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          sig {
            params(description: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String)).void
           }
          def initialize(description: nil, metadata: nil, on_behalf_of: nil); end
        end
        class ShippingAddressCollection < Stripe::RequestParams
          # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
          # shipping locations.
          sig { returns(T::Array[String]) }
          attr_accessor :allowed_countries
          sig { params(allowed_countries: T::Array[String]).void }
          def initialize(allowed_countries: nil); end
        end
        class ShippingOption < Stripe::RequestParams
          class ShippingRateData < Stripe::RequestParams
            class DeliveryEstimate < Stripe::RequestParams
              class Maximum < Stripe::RequestParams
                # A unit of time.
                sig { returns(String) }
                attr_accessor :unit
                # Must be greater than 0.
                sig { returns(Integer) }
                attr_accessor :value
                sig { params(unit: String, value: Integer).void }
                def initialize(unit: nil, value: nil); end
              end
              class Minimum < Stripe::RequestParams
                # A unit of time.
                sig { returns(String) }
                attr_accessor :unit
                # Must be greater than 0.
                sig { returns(Integer) }
                attr_accessor :value
                sig { params(unit: String, value: Integer).void }
                def initialize(unit: nil, value: nil); end
              end
              # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
              sig {
                returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
               }
              attr_accessor :maximum
              # The lower bound of the estimated range. If empty, represents no lower bound.
              sig {
                returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
               }
              attr_accessor :minimum
              sig {
                params(maximum: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).void
               }
              def initialize(maximum: nil, minimum: nil); end
            end
            class FixedAmount < Stripe::RequestParams
              class CurrencyOptions < Stripe::RequestParams
                # A non-negative integer in cents representing how much to charge.
                sig { returns(Integer) }
                attr_accessor :amount
                # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
                sig { returns(T.nilable(String)) }
                attr_accessor :tax_behavior
                sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
                def initialize(amount: nil, tax_behavior: nil); end
              end
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
              sig {
                returns(T.nilable(T::Hash[String, ::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
               }
              attr_accessor :currency_options
              sig {
                params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).void
               }
              def initialize(amount: nil, currency: nil, currency_options: nil); end
            end
            # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
             }
            attr_accessor :delivery_estimate
            # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
            sig { returns(String) }
            attr_accessor :display_name
            # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::FixedAmount))
             }
            attr_accessor :fixed_amount
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_code
            # The type of calculation to use on the shipping rate.
            sig { returns(T.nilable(String)) }
            attr_accessor :type
            sig {
              params(delivery_estimate: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
             }
            def initialize(
              delivery_estimate: nil,
              display_name: nil,
              fixed_amount: nil,
              metadata: nil,
              tax_behavior: nil,
              tax_code: nil,
              type: nil
            ); end
          end
          # The ID of the Shipping Rate to use for this shipping option.
          sig { returns(T.nilable(String)) }
          attr_accessor :shipping_rate
          # Parameters to be passed to Shipping Rate creation for this shipping option.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData))
           }
          attr_accessor :shipping_rate_data
          sig {
            params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingOption::ShippingRateData)).void
           }
          def initialize(shipping_rate: nil, shipping_rate_data: nil); end
        end
        class SubscriptionData < Stripe::RequestParams
          class BillingMode < Stripe::RequestParams
            # Controls the calculation and orchestration of prorations and invoices for subscriptions.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class InvoiceSettings < Stripe::RequestParams
            class Issuer < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(T.nilable(String)) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: T.nilable(String), type: String).void }
              def initialize(account: nil, type: nil); end
            end
            # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::InvoiceSettings::Issuer))
             }
            attr_accessor :issuer
            sig {
              params(issuer: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::InvoiceSettings::Issuer)).void
             }
            def initialize(issuer: nil); end
          end
          class TransferData < Stripe::RequestParams
            # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
            sig { returns(T.nilable(Float)) }
            attr_accessor :amount_percent
            # ID of an existing, connected Stripe account.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount_percent: T.nilable(Float), destination: String).void }
            def initialize(amount_percent: nil, destination: nil); end
          end
          class TrialSettings < Stripe::RequestParams
            class EndBehavior < Stripe::RequestParams
              # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
              sig { returns(String) }
              attr_accessor :missing_payment_method
              sig { params(missing_payment_method: String).void }
              def initialize(missing_payment_method: nil); end
            end
            # Defines how the subscription should behave when the user's free trial ends.
            sig {
              returns(::Stripe::Checkout::Session::CreateParams::SubscriptionData::TrialSettings::EndBehavior)
             }
            attr_accessor :end_behavior
            sig {
              params(end_behavior: ::Stripe::Checkout::Session::CreateParams::SubscriptionData::TrialSettings::EndBehavior).void
             }
            def initialize(end_behavior: nil); end
          end
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. To use an application fee percent, the request must be made on behalf of another account, using the `Stripe-Account` header or an OAuth key. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
          sig { returns(T.nilable(Float)) }
          attr_accessor :application_fee_percent
          # A future timestamp to anchor the subscription's billing cycle for new subscriptions.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :billing_cycle_anchor
          # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::BillingMode))
           }
          attr_accessor :billing_mode
          # The tax rates that will apply to any subscription item that does not have
          # `tax_rates` set. Invoices created will have their `default_tax_rates` populated
          # from the subscription.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :default_tax_rates
          # The subscription's description, meant to be displayable to the customer.
          # Use this field to optionally store an explanation of the subscription
          # for rendering in the [customer portal](https://stripe.com/docs/customer-management).
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # All invoices will be billed using the specified settings.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::InvoiceSettings))
           }
          attr_accessor :invoice_settings
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The account on behalf of which to charge, for each of the subscription's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          # Determines how to handle prorations resulting from the `billing_cycle_anchor`. If no value is passed, the default is `create_prorations`.
          sig { returns(T.nilable(String)) }
          attr_accessor :proration_behavior
          # If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::TransferData))
           }
          attr_accessor :transfer_data
          # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. Has to be at least 48 hours in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :trial_end
          # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :trial_period_days
          # Settings related to subscription trials.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::TrialSettings))
           }
          attr_accessor :trial_settings
          sig {
            params(application_fee_percent: T.nilable(Float), billing_cycle_anchor: T.nilable(Integer), billing_mode: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::BillingMode), default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), invoice_settings: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::InvoiceSettings), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), proration_behavior: T.nilable(String), transfer_data: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::TransferData), trial_end: T.nilable(Integer), trial_period_days: T.nilable(Integer), trial_settings: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData::TrialSettings)).void
           }
          def initialize(
            application_fee_percent: nil,
            billing_cycle_anchor: nil,
            billing_mode: nil,
            default_tax_rates: nil,
            description: nil,
            invoice_settings: nil,
            metadata: nil,
            on_behalf_of: nil,
            proration_behavior: nil,
            transfer_data: nil,
            trial_end: nil,
            trial_period_days: nil,
            trial_settings: nil
          ); end
        end
        class TaxIdCollection < Stripe::RequestParams
          # Enable tax ID collection during checkout. Defaults to `false`.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # Describes whether a tax ID is required during checkout. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :required
          sig { params(enabled: T::Boolean, required: T.nilable(String)).void }
          def initialize(enabled: nil, required: nil); end
        end
        class WalletOptions < Stripe::RequestParams
          class Link < Stripe::RequestParams
            # Specifies whether Checkout should display Link as a payment option. By default, Checkout will display all the supported wallets that the Checkout Session was created with. This is the `auto` behavior, and it is the default choice.
            sig { returns(T.nilable(String)) }
            attr_accessor :display
            sig { params(display: T.nilable(String)).void }
            def initialize(display: nil); end
          end
          # contains details about the Link wallet options.
          sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::WalletOptions::Link)) }
          attr_accessor :link
          sig {
            params(link: T.nilable(::Stripe::Checkout::Session::CreateParams::WalletOptions::Link)).void
           }
          def initialize(link: nil); end
        end
        # Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::AdaptivePricing)) }
        attr_accessor :adaptive_pricing
        # Configure actions after a Checkout Session has expired.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::AfterExpiration)) }
        attr_accessor :after_expiration
        # Enables user redeemable promotion codes.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :allow_promotion_codes
        # Settings for automatic tax lookup for this session and resulting payments, invoices, and subscriptions.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::AutomaticTax)) }
        attr_accessor :automatic_tax
        # Specify whether Checkout should collect the customer's billing address. Defaults to `auto`.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_address_collection
        # If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website. This parameter is not allowed if ui_mode is `embedded` or `custom`.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancel_url
        # A unique string to reference the Checkout Session. This can be a
        # customer ID, a cart ID, or similar, and can be used to reconcile the
        # session with your internal systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :client_reference_id
        # Configure fields for the Checkout Session to gather active consent from customers.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ConsentCollection)) }
        attr_accessor :consent_collection
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Required in `setup` mode when `payment_method_types` is not set.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
        sig { returns(T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::CustomField])) }
        attr_accessor :custom_fields
        # Display additional text for your customers using custom text.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::CustomText)) }
        attr_accessor :custom_text
        # ID of an existing Customer, if one exists. In `payment` mode, the customer’s most recently saved card
        # payment method will be used to prefill the email, name, card details, and billing address
        # on the Checkout page. In `subscription` mode, the customer’s [default payment method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method)
        # will be used if it’s a card, otherwise the most recently saved card will be used. A valid billing address, billing name and billing email are required on the payment method for Checkout to prefill the customer's card details.
        #
        # If the Customer already has a valid [email](https://stripe.com/docs/api/customers/object#customer_object-email) set, the email will be prefilled and not editable in Checkout.
        # If the Customer does not have a valid `email`, Checkout will set the email entered during the session on the Customer.
        #
        # If blank for Checkout Sessions in `subscription` mode or with `customer_creation` set as `always` in `payment` mode, Checkout will create a new Customer object based on information provided during the payment flow.
        #
        # You can set [`payment_intent_data.setup_future_usage`](https://stripe.com/docs/api/checkout/sessions/create#create_checkout_session-payment_intent_data-setup_future_usage) to have Checkout automatically attach the payment method to the Customer you pass in for future reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # Configure whether a Checkout Session creates a [Customer](https://stripe.com/docs/api/customers) during Session confirmation.
        #
        # When a Customer is not created, you can still retrieve email, address, and other customer data entered in Checkout
        # with [customer_details](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-customer_details).
        #
        # Sessions that don't create Customers instead are grouped by [guest customers](https://stripe.com/docs/payments/checkout/guest-customers)
        # in the Dashboard. Promotion codes limited to first time customers will return invalid for these Sessions.
        #
        # Can only be set in `payment` and `setup` mode.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_creation
        # If provided, this value will be used when the Customer object is created.
        # If not provided, customers will be asked to enter their email address.
        # Use this parameter to prefill customer data if you already have an email
        # on file. To access information about the customer once a session is
        # complete, use the `customer` field.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email
        # Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::CustomerUpdate)) }
        attr_accessor :customer_update
        # The coupon or promotion code to apply to this Session. Currently, only up to one may be specified.
        sig { returns(T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::Discount])) }
        attr_accessor :discounts
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The Epoch time in seconds at which the Checkout Session will expire. It can be anywhere from 30 minutes to 24 hours after Checkout Session creation. By default, this value is 24 hours from creation.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at
        # Generate a post-purchase Invoice for one-time payments.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation)) }
        attr_accessor :invoice_creation
        # A list of items the customer is purchasing. Use this parameter to pass one-time or recurring [Prices](https://stripe.com/docs/api/prices). The parameter is required for `payment` and `subscription` mode.
        #
        # For `payment` mode, there is a maximum of 100 line items, however it is recommended to consolidate line items if there are more than a few dozen.
        #
        # For `subscription` mode, there is a maximum of 20 line items with recurring Prices and 20 line items with one-time Prices. Line items with one-time Prices will be on the initial invoice only.
        sig { returns(T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::LineItem])) }
        attr_accessor :line_items
        # The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
        sig { returns(T.nilable(String)) }
        attr_accessor :locale
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The mode of the Checkout Session. Pass `subscription` if the Checkout Session includes at least one recurring item.
        sig { returns(T.nilable(String)) }
        attr_accessor :mode
        # A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://stripe.com/docs/api/prices).
        #
        # There is a maximum of 10 optional items allowed on a Checkout Session, and the existing limits on the number of line items allowed on a Checkout Session apply to the combined number of line items and optional items.
        #
        # For `payment` mode, there is a maximum of 100 combined line items and optional items, however it is recommended to consolidate items if there are more than a few dozen.
        #
        # For `subscription` mode, there is a maximum of 20 line items and optional items with recurring Prices and 20 line items and optional items with one-time Prices.
        sig {
          returns(T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::OptionalItem]))
         }
        attr_accessor :optional_items
        # Where the user is coming from. This informs the optimizations that are applied to the session.
        sig { returns(T.nilable(String)) }
        attr_accessor :origin_context
        # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData)) }
        attr_accessor :payment_intent_data
        # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.
        # This may occur if the Checkout Session includes a free trial or a discount.
        #
        # Can only be set in `subscription` mode. Defaults to `always`.
        #
        # If you'd like information on how to collect a payment method outside of Checkout, read the guide on configuring [subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_method_collection
        # The ID of the payment method configuration to use with this Checkout session.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_method_configuration
        # This parameter allows you to set some attributes on the payment method created during a Checkout session.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodData)) }
        attr_accessor :payment_method_data
        # Payment-method-specific configuration.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions)) }
        attr_accessor :payment_method_options
        # A list of the types of payment methods (e.g., `card`) this Checkout Session can accept.
        #
        # You can omit this attribute to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
        # See [Dynamic Payment Methods](https://stripe.com/docs/payments/payment-methods/integration-options#using-dynamic-payment-methods) for more details.
        #
        # Read more about the supported payment methods and their requirements in our [payment
        # method details guide](/docs/payments/checkout/payment-methods).
        #
        # If multiple payment methods are passed, Checkout will dynamically reorder them to
        # prioritize the most relevant payment methods based on the customer's location and
        # other characteristics.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :payment_method_types
        # This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object. Can only be set when creating `embedded` or `custom` sessions.
        #
        # For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::Permissions)) }
        attr_accessor :permissions
        # Controls phone number collection settings for the session.
        #
        # We recommend that you review your privacy policy and check with your legal contacts
        # before using this feature. Learn more about [collecting phone numbers with Checkout](https://stripe.com/docs/payments/checkout/phone-numbers).
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::PhoneNumberCollection)) }
        attr_accessor :phone_number_collection
        # This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://stripe.com/docs/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_on_completion
        # The URL to redirect your customer back to after they authenticate or cancel their payment on the
        # payment method's app or site. This parameter is required if `ui_mode` is `embedded` or `custom`
        # and redirect-based payment methods are enabled on the session.
        sig { returns(T.nilable(String)) }
        attr_accessor :return_url
        # Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
        sig {
          returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SavedPaymentMethodOptions))
         }
        attr_accessor :saved_payment_method_options
        # A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SetupIntentData)) }
        attr_accessor :setup_intent_data
        # When set, provides configuration for Checkout to collect a shipping address from a customer.
        sig {
          returns(T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingAddressCollection))
         }
        attr_accessor :shipping_address_collection
        # The shipping rate options to apply to this Session. Up to a maximum of 5.
        sig {
          returns(T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::ShippingOption]))
         }
        attr_accessor :shipping_options
        # Describes the type of transaction being performed by Checkout in order
        # to customize relevant text on the page, such as the submit button.
        #  `submit_type` can only be specified on Checkout Sessions in
        # `payment` or `subscription` mode. If blank or `auto`, `pay` is used.
        sig { returns(T.nilable(String)) }
        attr_accessor :submit_type
        # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData)) }
        attr_accessor :subscription_data
        # The URL to which Stripe should send customers when payment or setup
        # is complete.
        # This parameter is not allowed if ui_mode is `embedded` or `custom`. If you'd like to use
        # information from the successful Checkout Session on your page, read the
        # guide on [customizing your success page](https://stripe.com/docs/payments/checkout/custom-success-page).
        sig { returns(T.nilable(String)) }
        attr_accessor :success_url
        # Controls tax ID collection during checkout.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::TaxIdCollection)) }
        attr_accessor :tax_id_collection
        # The UI mode of the Session. Defaults to `hosted`.
        sig { returns(T.nilable(String)) }
        attr_accessor :ui_mode
        # Wallet-specific configuration.
        sig { returns(T.nilable(::Stripe::Checkout::Session::CreateParams::WalletOptions)) }
        attr_accessor :wallet_options
        sig {
          params(adaptive_pricing: T.nilable(::Stripe::Checkout::Session::CreateParams::AdaptivePricing), after_expiration: T.nilable(::Stripe::Checkout::Session::CreateParams::AfterExpiration), allow_promotion_codes: T.nilable(T::Boolean), automatic_tax: T.nilable(::Stripe::Checkout::Session::CreateParams::AutomaticTax), billing_address_collection: T.nilable(String), cancel_url: T.nilable(String), client_reference_id: T.nilable(String), consent_collection: T.nilable(::Stripe::Checkout::Session::CreateParams::ConsentCollection), currency: T.nilable(String), custom_fields: T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::CustomField]), custom_text: T.nilable(::Stripe::Checkout::Session::CreateParams::CustomText), customer: T.nilable(String), customer_creation: T.nilable(String), customer_email: T.nilable(String), customer_update: T.nilable(::Stripe::Checkout::Session::CreateParams::CustomerUpdate), discounts: T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::Discount]), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), invoice_creation: T.nilable(::Stripe::Checkout::Session::CreateParams::InvoiceCreation), line_items: T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::LineItem]), locale: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), mode: T.nilable(String), optional_items: T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::OptionalItem]), origin_context: T.nilable(String), payment_intent_data: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentIntentData), payment_method_collection: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::Checkout::Session::CreateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), permissions: T.nilable(::Stripe::Checkout::Session::CreateParams::Permissions), phone_number_collection: T.nilable(::Stripe::Checkout::Session::CreateParams::PhoneNumberCollection), redirect_on_completion: T.nilable(String), return_url: T.nilable(String), saved_payment_method_options: T.nilable(::Stripe::Checkout::Session::CreateParams::SavedPaymentMethodOptions), setup_intent_data: T.nilable(::Stripe::Checkout::Session::CreateParams::SetupIntentData), shipping_address_collection: T.nilable(::Stripe::Checkout::Session::CreateParams::ShippingAddressCollection), shipping_options: T.nilable(T::Array[::Stripe::Checkout::Session::CreateParams::ShippingOption]), submit_type: T.nilable(String), subscription_data: T.nilable(::Stripe::Checkout::Session::CreateParams::SubscriptionData), success_url: T.nilable(String), tax_id_collection: T.nilable(::Stripe::Checkout::Session::CreateParams::TaxIdCollection), ui_mode: T.nilable(String), wallet_options: T.nilable(::Stripe::Checkout::Session::CreateParams::WalletOptions)).void
         }
        def initialize(
          adaptive_pricing: nil,
          after_expiration: nil,
          allow_promotion_codes: nil,
          automatic_tax: nil,
          billing_address_collection: nil,
          cancel_url: nil,
          client_reference_id: nil,
          consent_collection: nil,
          currency: nil,
          custom_fields: nil,
          custom_text: nil,
          customer: nil,
          customer_creation: nil,
          customer_email: nil,
          customer_update: nil,
          discounts: nil,
          expand: nil,
          expires_at: nil,
          invoice_creation: nil,
          line_items: nil,
          locale: nil,
          metadata: nil,
          mode: nil,
          optional_items: nil,
          origin_context: nil,
          payment_intent_data: nil,
          payment_method_collection: nil,
          payment_method_configuration: nil,
          payment_method_data: nil,
          payment_method_options: nil,
          payment_method_types: nil,
          permissions: nil,
          phone_number_collection: nil,
          redirect_on_completion: nil,
          return_url: nil,
          saved_payment_method_options: nil,
          setup_intent_data: nil,
          shipping_address_collection: nil,
          shipping_options: nil,
          submit_type: nil,
          subscription_data: nil,
          success_url: nil,
          tax_id_collection: nil,
          ui_mode: nil,
          wallet_options: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class CollectedInformation < Stripe::RequestParams
          class ShippingDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(String) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_accessor :state
              sig {
                params(city: T.nilable(String), country: String, line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              ); end
            end
            # The address of the customer
            sig {
              returns(::Stripe::Checkout::Session::UpdateParams::CollectedInformation::ShippingDetails::Address)
             }
            attr_accessor :address
            # The name of customer
            sig { returns(String) }
            attr_accessor :name
            sig {
              params(address: ::Stripe::Checkout::Session::UpdateParams::CollectedInformation::ShippingDetails::Address, name: String).void
             }
            def initialize(address: nil, name: nil); end
          end
          # The shipping details to apply to this Session.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::CollectedInformation::ShippingDetails))
           }
          attr_accessor :shipping_details
          sig {
            params(shipping_details: T.nilable(::Stripe::Checkout::Session::UpdateParams::CollectedInformation::ShippingDetails)).void
           }
          def initialize(shipping_details: nil); end
        end
        class ShippingOption < Stripe::RequestParams
          class ShippingRateData < Stripe::RequestParams
            class DeliveryEstimate < Stripe::RequestParams
              class Maximum < Stripe::RequestParams
                # A unit of time.
                sig { returns(String) }
                attr_accessor :unit
                # Must be greater than 0.
                sig { returns(Integer) }
                attr_accessor :value
                sig { params(unit: String, value: Integer).void }
                def initialize(unit: nil, value: nil); end
              end
              class Minimum < Stripe::RequestParams
                # A unit of time.
                sig { returns(String) }
                attr_accessor :unit
                # Must be greater than 0.
                sig { returns(Integer) }
                attr_accessor :value
                sig { params(unit: String, value: Integer).void }
                def initialize(unit: nil, value: nil); end
              end
              # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
              sig {
                returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
               }
              attr_accessor :maximum
              # The lower bound of the estimated range. If empty, represents no lower bound.
              sig {
                returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
               }
              attr_accessor :minimum
              sig {
                params(maximum: T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).void
               }
              def initialize(maximum: nil, minimum: nil); end
            end
            class FixedAmount < Stripe::RequestParams
              class CurrencyOptions < Stripe::RequestParams
                # A non-negative integer in cents representing how much to charge.
                sig { returns(Integer) }
                attr_accessor :amount
                # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
                sig { returns(T.nilable(String)) }
                attr_accessor :tax_behavior
                sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
                def initialize(amount: nil, tax_behavior: nil); end
              end
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
              sig {
                returns(T.nilable(T::Hash[String, ::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
               }
              attr_accessor :currency_options
              sig {
                params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).void
               }
              def initialize(amount: nil, currency: nil, currency_options: nil); end
            end
            # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
             }
            attr_accessor :delivery_estimate
            # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
            sig { returns(String) }
            attr_accessor :display_name
            # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
            sig {
              returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::FixedAmount))
             }
            attr_accessor :fixed_amount
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_code
            # The type of calculation to use on the shipping rate.
            sig { returns(T.nilable(String)) }
            attr_accessor :type
            sig {
              params(delivery_estimate: T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
             }
            def initialize(
              delivery_estimate: nil,
              display_name: nil,
              fixed_amount: nil,
              metadata: nil,
              tax_behavior: nil,
              tax_code: nil,
              type: nil
            ); end
          end
          # The ID of the Shipping Rate to use for this shipping option.
          sig { returns(T.nilable(String)) }
          attr_accessor :shipping_rate
          # Parameters to be passed to Shipping Rate creation for this shipping option.
          sig {
            returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData))
           }
          attr_accessor :shipping_rate_data
          sig {
            params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::Checkout::Session::UpdateParams::ShippingOption::ShippingRateData)).void
           }
          def initialize(shipping_rate: nil, shipping_rate_data: nil); end
        end
        # Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
        sig { returns(T.nilable(::Stripe::Checkout::Session::UpdateParams::CollectedInformation)) }
        attr_accessor :collected_information
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # The shipping rate options to apply to this Session. Up to a maximum of 5.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::UpdateParams::ShippingOption])))
         }
        attr_accessor :shipping_options
        sig {
          params(collected_information: T.nilable(::Stripe::Checkout::Session::UpdateParams::CollectedInformation), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), shipping_options: T.nilable(T.any(String, T::Array[::Stripe::Checkout::Session::UpdateParams::ShippingOption]))).void
         }
        def initialize(
          collected_information: nil,
          expand: nil,
          metadata: nil,
          shipping_options: nil
        ); end
      end
      class ListLineItemsParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      class ExpireParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates a Checkout Session object.
      sig {
        params(params: T.any(::Stripe::Checkout::Session::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Checkout::Session)
       }
      def self.create(params = {}, opts = {}); end

      # A Checkout Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Checkout Session and customers loading the Checkout Session see a message saying the Checkout Session is expired.
      sig {
        params(params: T.any(::Stripe::Checkout::Session::ExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Checkout::Session)
       }
      def expire(params = {}, opts = {}); end

      # A Checkout Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Checkout Session and customers loading the Checkout Session see a message saying the Checkout Session is expired.
      sig {
        params(session: String, params: T.any(::Stripe::Checkout::Session::ExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Checkout::Session)
       }
      def self.expire(session, params = {}, opts = {}); end

      # Returns a list of Checkout Sessions.
      sig {
        params(params: T.any(::Stripe::Checkout::Session::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      sig {
        params(params: T.any(::Stripe::Checkout::Session::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list_line_items(params = {}, opts = {}); end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      sig {
        params(session: String, params: T.any(::Stripe::Checkout::Session::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list_line_items(session, params = {}, opts = {}); end

      # Updates a Checkout Session object.
      #
      # Related guide: [Dynamically update Checkout](https://docs.stripe.com/payments/checkout/dynamic-updates)
      sig {
        params(session: String, params: T.any(::Stripe::Checkout::Session::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Checkout::Session)
       }
      def self.update(session, params = {}, opts = {}); end
    end
  end
end