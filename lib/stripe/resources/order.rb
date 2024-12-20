# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order"
    def self.object_name
      "order"
    end

    class AutomaticTax < Stripe::StripeObject
      # Whether Stripe automatically computes tax on this Order.
      attr_reader :enabled
      # The status of the most recent automated tax calculation for this Order.
      attr_reader :status
    end

    class BillingDetails < Stripe::StripeObject
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
      # Billing address for the order.
      attr_reader :address
      # Email address for the order.
      attr_reader :email
      # Full name for the order.
      attr_reader :name
      # Billing phone number for the order (including extension).
      attr_reader :phone
    end

    class Credit < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        # The token of the gift card applied to the order
        attr_reader :card
      end
      # The amount of this credit to apply to the order.
      attr_reader :amount
      # Details for a gift card.
      attr_reader :gift_card
      # Line items on this order that are ineligible for this credit
      attr_reader :ineligible_line_items
      # The type of credit to apply to the order, only `gift_card` currently supported.
      attr_reader :type
    end

    class Payment < Stripe::StripeObject
      class Settings < Stripe::StripeObject
        class AutomaticPaymentMethods < Stripe::StripeObject
          # Whether this Order has been opted into managing payment method types via the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          attr_reader :enabled
        end

        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # A URL for custom mandate text
              attr_reader :custom_mandate_url
              # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
              attr_reader :interval_description
              # Payment schedule for the mandate.
              attr_reader :payment_schedule
              # Transaction type of the mandate.
              attr_reader :transaction_type
            end
            # Attribute for field mandate_options
            attr_reader :mandate_options
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
            # Bank account verification method.
            attr_reader :verification_method
          end

          class AfterpayClearpay < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            attr_reader :capture_method
            # Order identifier shown to the user in Afterpay's online portal. We recommend using a value that helps you answer any questions a customer might have about the payment. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
            attr_reader :reference
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
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
            attr_reader :setup_future_usage
          end

          class Bancontact < Stripe::StripeObject
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            attr_reader :preferred_language
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end

          class Card < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            attr_reader :capture_method
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
            attr_reader :setup_future_usage
          end

          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                attr_reader :country
              end
              # Attribute for field eu_bank_transfer
              attr_reader :eu_bank_transfer
              # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
              #
              # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
              attr_reader :requested_address_types
              # The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              attr_reader :type
            end
            # Attribute for field bank_transfer
            attr_reader :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            attr_reader :funding_type
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
            attr_reader :setup_future_usage
          end

          class Klarna < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            attr_reader :capture_method
            # Preferred locale of the Klarna checkout page that the customer is redirected to.
            attr_reader :preferred_locale
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end

          class Link < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            attr_reader :capture_method
            # [Deprecated] This is a legacy parameter that no longer has any function.
            attr_reader :persistent_token
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end

          class Oxxo < Stripe::StripeObject
            # The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
            attr_reader :expires_after_days
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
            attr_reader :setup_future_usage
          end

          class Paypal < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              class Tax < Stripe::StripeObject
                # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                attr_reader :amount
                # The tax behavior for the line item.
                attr_reader :behavior
              end
              # Type of the line item.
              attr_reader :category
              # Description of the line item.
              attr_reader :description
              # Descriptive name of the line item.
              attr_reader :name
              # Quantity of the line item. Cannot be a negative number.
              attr_reader :quantity
              # Client facing stock keeping unit, article number or similar.
              attr_reader :sku
              # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
              attr_reader :sold_by
              # Attribute for field tax
              attr_reader :tax
              # Price for a single unit of the line item in minor units. Cannot be a negative number.
              attr_reader :unit_amount
            end
            # Controls when the funds will be captured from the customer's account.
            attr_reader :capture_method
            # The line items purchased by the customer.
            attr_reader :line_items
            # Preferred locale of the PayPal checkout page that the customer is redirected to.
            attr_reader :preferred_locale
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            attr_reader :reference
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            attr_reader :reference_id
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
            # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
            attr_reader :subsellers
          end

          class SepaDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
              attr_reader :reference_prefix
            end
            # Attribute for field mandate_options
            attr_reader :mandate_options
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end

          class Sofort < Stripe::StripeObject
            # Preferred language of the SOFORT authorization page that the customer is redirected to.
            attr_reader :preferred_language
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end

          class WechatPay < Stripe::StripeObject
            # The app ID registered with WeChat Pay. Only required when client is ios or android.
            attr_reader :app_id
            # The client type that the end customer will pay from
            attr_reader :client
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            attr_reader :setup_future_usage
          end
          # Attribute for field acss_debit
          attr_reader :acss_debit
          # Attribute for field afterpay_clearpay
          attr_reader :afterpay_clearpay
          # Attribute for field alipay
          attr_reader :alipay
          # Attribute for field bancontact
          attr_reader :bancontact
          # Attribute for field card
          attr_reader :card
          # Attribute for field customer_balance
          attr_reader :customer_balance
          # Attribute for field ideal
          attr_reader :ideal
          # Attribute for field klarna
          attr_reader :klarna
          # Attribute for field link
          attr_reader :link
          # Attribute for field oxxo
          attr_reader :oxxo
          # Attribute for field p24
          attr_reader :p24
          # Attribute for field paypal
          attr_reader :paypal
          # Attribute for field sepa_debit
          attr_reader :sepa_debit
          # Attribute for field sofort
          attr_reader :sofort
          # Attribute for field wechat_pay
          attr_reader :wechat_pay
        end

        class TransferData < Stripe::StripeObject
          # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
          attr_reader :amount
          # ID of the Connected account receiving the transfer.
          attr_reader :destination
        end
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
        attr_reader :application_fee_amount
        # Indicates whether order has been opted into using [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods) to manage payment method types.
        attr_reader :automatic_payment_methods
        # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
        attr_reader :payment_method_options
        # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
        attr_reader :payment_method_types
        # The URL to redirect the customer to after they authenticate their payment.
        attr_reader :return_url
        # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
        attr_reader :statement_descriptor
        # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
        attr_reader :statement_descriptor_suffix
        # Provides configuration for completing a transfer for the order after it is paid.
        attr_reader :transfer_data
      end
      # ID of the payment intent associated with this order. Null when the order is `open`.
      attr_reader :payment_intent
      # Settings describing how the order should configure generated PaymentIntents.
      attr_reader :settings
      # The status of the underlying payment associated with this order, if any. Null when the order is `open`.
      attr_reader :status
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
      # Total shipping cost before any discounts or taxes are applied.
      attr_reader :amount_subtotal
      # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
      attr_reader :amount_tax
      # Total shipping cost after discounts and taxes are applied.
      attr_reader :amount_total
      # The ID of the ShippingRate for this order.
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
      # Recipient shipping address. Required if the order includes products that are shippable.
      attr_reader :address
      # Recipient name.
      attr_reader :name
      # Recipient phone (including extension).
      attr_reader :phone
    end

    class TaxDetails < Stripe::StripeObject
      class TaxId < Stripe::StripeObject
        # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, or `unknown`
        attr_reader :type
        # The value of the tax ID.
        attr_reader :value
      end
      # Describes the purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
      attr_reader :tax_exempt
      # The purchaser's tax IDs to be used in calculation of tax for this Order.
      attr_reader :tax_ids
    end

    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          # The amount discounted.
          attr_reader :amount
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          attr_reader :discount
        end

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
        # The aggregated discounts.
        attr_reader :discounts
        # The aggregated tax amounts by rate.
        attr_reader :taxes
      end
      # Attribute for field amount_credit
      attr_reader :amount_credit
      # This is the sum of all the discounts.
      attr_reader :amount_discount
      # This is the sum of all the shipping amounts.
      attr_reader :amount_shipping
      # This is the sum of all the tax amounts.
      attr_reader :amount_tax
      # Attribute for field breakdown
      attr_reader :breakdown
    end

    class ListParams < Stripe::RequestParams
      # Only return orders for the given customer.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        attr_accessor :enabled

        def initialize(enabled: nil)
          @enabled = enabled
        end
      end

      class BillingDetails < Stripe::RequestParams
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
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
        # The billing address provided by the customer.
        attr_accessor :address
        # The billing email provided by the customer.
        attr_accessor :email
        # The billing name provided by the customer.
        attr_accessor :name
        # The billing phone number provided by the customer.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end

      class Credit < Stripe::RequestParams
        # The gift card to apply to the order.
        attr_accessor :gift_card
        # The type of credit to apply to the order, only `gift_card` currently supported.
        attr_accessor :type

        def initialize(gift_card: nil, type: nil)
          @gift_card = gift_card
          @type = type
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

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount

          def initialize(coupon: nil, discount: nil)
            @coupon = coupon
            @discount = discount
          end
        end

        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # ID of the product this price belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
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

        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            attr_accessor :height
            # Length, in inches. Maximum precision is 2 decimal places.
            attr_accessor :length
            # Weight, in ounces. Maximum precision is 2 decimal places.
            attr_accessor :weight
            # Width, in inches. Maximum precision is 2 decimal places.
            attr_accessor :width

            def initialize(height: nil, length: nil, weight: nil, width: nil)
              @height = height
              @length = length
              @weight = weight
              @width = width
            end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          attr_accessor :description
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          attr_accessor :id
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          attr_accessor :name
          # The dimensions of this product for shipping purposes.
          attr_accessor :package_dimensions
          # Whether this product is shipped (i.e., physical goods).
          attr_accessor :shippable
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          attr_accessor :tax_code
          # A URL of a publicly-accessible webpage for this product.
          attr_accessor :url

          def initialize(
            description: nil,
            id: nil,
            images: nil,
            metadata: nil,
            name: nil,
            package_dimensions: nil,
            shippable: nil,
            tax_code: nil,
            url: nil
          )
            @description = description
            @id = id
            @images = images
            @metadata = metadata
            @name = name
            @package_dimensions = package_dimensions
            @shippable = shippable
            @tax_code = tax_code
            @url = url
          end
        end
        # The description for the line item. Will default to the name of the associated product.
        attr_accessor :description
        # The discounts applied to this line item.
        attr_accessor :discounts
        # The ID of a [Price](https://stripe.com/docs/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        attr_accessor :price
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create products upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        attr_accessor :price_data
        # The ID of a [Product](https://stripe.com/docs/api/products) to add to the Order.
        #
        # The product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        attr_accessor :product
        # Defines a Product inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        attr_accessor :product_data
        # The quantity of the line item.
        attr_accessor :quantity
        # The tax rates applied to this line item.
        attr_accessor :tax_rates

        def initialize(
          description: nil,
          discounts: nil,
          price: nil,
          price_data: nil,
          product: nil,
          product_data: nil,
          quantity: nil,
          tax_rates: nil
        )
          @description = description
          @discounts = discounts
          @price = price
          @price_data = price_data
          @product = product
          @product_data = product_data
          @quantity = quantity
          @tax_rates = tax_rates
        end
      end

      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                attr_accessor :custom_mandate_url
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                attr_accessor :interval_description
                # Payment schedule for the mandate.
                attr_accessor :payment_schedule
                # Transaction type of the mandate.
                attr_accessor :transaction_type

                def initialize(
                  custom_mandate_url: nil,
                  interval_description: nil,
                  payment_schedule: nil,
                  transaction_type: nil
                )
                  @custom_mandate_url = custom_mandate_url
                  @interval_description = interval_description
                  @payment_schedule = payment_schedule
                  @transaction_type = transaction_type
                end
              end
              # Additional fields for Mandate creation
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage
              # Bank account verification method.
              attr_accessor :verification_method

              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                verification_method: nil
              )
                @mandate_options = mandate_options
                @setup_future_usage = setup_future_usage
                @verification_method = verification_method
              end
            end

            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              attr_accessor :reference
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @reference = reference
                @setup_future_usage = setup_future_usage
              end
            end

            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(setup_future_usage: nil)
                @setup_future_usage = setup_future_usage
              end
            end

            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(preferred_language: nil, setup_future_usage: nil)
                @preferred_language = preferred_language
                @setup_future_usage = setup_future_usage
              end
            end

            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              attr_accessor :capture_method
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @setup_future_usage = setup_future_usage
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
                # Configuration for the eu_bank_transfer funding type.
                attr_accessor :eu_bank_transfer
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                attr_accessor :requested_address_types
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                attr_accessor :type

                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil)
                  @eu_bank_transfer = eu_bank_transfer
                  @requested_address_types = requested_address_types
                  @type = type
                end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              attr_accessor :funding_type
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil)
                @bank_transfer = bank_transfer
                @funding_type = funding_type
                @setup_future_usage = setup_future_usage
              end
            end

            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(setup_future_usage: nil)
                @setup_future_usage = setup_future_usage
              end
            end

            class Klarna < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # Preferred language of the Klarna authorization page that the customer is redirected to
              attr_accessor :preferred_locale
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @preferred_locale = preferred_locale
                @setup_future_usage = setup_future_usage
              end
            end

            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # [Deprecated] This is a legacy parameter that no longer has any function.
              attr_accessor :persistent_token
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @persistent_token = persistent_token
                @setup_future_usage = setup_future_usage
              end
            end

            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              attr_accessor :expires_after_days
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(expires_after_days: nil, setup_future_usage: nil)
                @expires_after_days = expires_after_days
                @setup_future_usage = setup_future_usage
              end
            end

            class P24 < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage
              # Confirm that the payer has accepted the P24 terms and conditions.
              attr_accessor :tos_shown_and_accepted

              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil)
                @setup_future_usage = setup_future_usage
                @tos_shown_and_accepted = tos_shown_and_accepted
              end
            end

            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  attr_accessor :amount
                  # The tax behavior for the line item.
                  attr_accessor :behavior

                  def initialize(amount: nil, behavior: nil)
                    @amount = amount
                    @behavior = behavior
                  end
                end
                # Type of the line item.
                attr_accessor :category
                # Description of the line item.
                attr_accessor :description
                # Descriptive name of the line item.
                attr_accessor :name
                # Quantity of the line item. Must be a positive number.
                attr_accessor :quantity
                # Client facing stock keeping unit, article number or similar.
                attr_accessor :sku
                # The Stripe account ID of the connected account that sells the item.
                attr_accessor :sold_by
                # The tax information for the line item.
                attr_accessor :tax
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                attr_accessor :unit_amount

                def initialize(
                  category: nil,
                  description: nil,
                  name: nil,
                  quantity: nil,
                  sku: nil,
                  sold_by: nil,
                  tax: nil,
                  unit_amount: nil
                )
                  @category = category
                  @description = description
                  @name = name
                  @quantity = quantity
                  @sku = sku
                  @sold_by = sold_by
                  @tax = tax
                  @unit_amount = unit_amount
                end
              end
              # Controls when the funds will be captured from the customer's account.
              attr_accessor :capture_method
              # The line items purchased by the customer.
              attr_accessor :line_items
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              attr_accessor :preferred_locale
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              attr_accessor :reference
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              attr_accessor :reference_id
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
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
              attr_accessor :setup_future_usage
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              attr_accessor :subsellers

              def initialize(
                capture_method: nil,
                line_items: nil,
                preferred_locale: nil,
                reference: nil,
                reference_id: nil,
                risk_correlation_id: nil,
                setup_future_usage: nil,
                subsellers: nil
              )
                @capture_method = capture_method
                @line_items = line_items
                @preferred_locale = preferred_locale
                @reference = reference
                @reference_id = reference_id
                @risk_correlation_id = risk_correlation_id
                @setup_future_usage = setup_future_usage
                @subsellers = subsellers
              end
            end

            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                attr_accessor :reference_prefix

                def initialize(reference_prefix: nil)
                  @reference_prefix = reference_prefix
                end
              end
              # Additional fields for Mandate creation
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(mandate_options: nil, setup_future_usage: nil)
                @mandate_options = mandate_options
                @setup_future_usage = setup_future_usage
              end
            end

            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(preferred_language: nil, setup_future_usage: nil)
                @preferred_language = preferred_language
                @setup_future_usage = setup_future_usage
              end
            end

            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              attr_accessor :app_id
              # The client type that the end customer will pay from
              attr_accessor :client
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(app_id: nil, client: nil, setup_future_usage: nil)
                @app_id = app_id
                @client = client
                @setup_future_usage = setup_future_usage
              end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            attr_accessor :acss_debit
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            attr_accessor :afterpay_clearpay
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            attr_accessor :alipay
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            attr_accessor :bancontact
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            attr_accessor :card
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            attr_accessor :customer_balance
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            attr_accessor :ideal
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            attr_accessor :klarna
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            attr_accessor :link
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            attr_accessor :oxxo
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            attr_accessor :p24
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            attr_accessor :paypal
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            attr_accessor :sepa_debit
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            attr_accessor :sofort
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            attr_accessor :wechat_pay

            def initialize(
              acss_debit: nil,
              afterpay_clearpay: nil,
              alipay: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              ideal: nil,
              klarna: nil,
              link: nil,
              oxxo: nil,
              p24: nil,
              paypal: nil,
              sepa_debit: nil,
              sofort: nil,
              wechat_pay: nil
            )
              @acss_debit = acss_debit
              @afterpay_clearpay = afterpay_clearpay
              @alipay = alipay
              @bancontact = bancontact
              @card = card
              @customer_balance = customer_balance
              @ideal = ideal
              @klarna = klarna
              @link = link
              @oxxo = oxxo
              @p24 = p24
              @paypal = paypal
              @sepa_debit = sepa_debit
              @sofort = sofort
              @wechat_pay = wechat_pay
            end
          end

          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            attr_accessor :amount
            # ID of the Connected account receiving the transfer.
            attr_accessor :destination

            def initialize(amount: nil, destination: nil)
              @amount = amount
              @destination = destination
            end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          attr_accessor :application_fee_amount
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          attr_accessor :payment_method_options
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          attr_accessor :payment_method_types
          # The URL to redirect the customer to after they authenticate their payment.
          attr_accessor :return_url
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          attr_accessor :statement_descriptor
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          attr_accessor :statement_descriptor_suffix
          # Provides configuration for completing a transfer for the order after it is paid.
          attr_accessor :transfer_data

          def initialize(
            application_fee_amount: nil,
            payment_method_options: nil,
            payment_method_types: nil,
            return_url: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil
          )
            @application_fee_amount = application_fee_amount
            @payment_method_options = payment_method_options
            @payment_method_types = payment_method_types
            @return_url = return_url
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @transfer_data = transfer_data
          end
        end
        # Settings describing how the order should configure generated PaymentIntents.
        attr_accessor :settings

        def initialize(settings: nil)
          @settings = settings
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
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
        # The shipping address for the order.
        attr_accessor :address
        # The name of the recipient of the order.
        attr_accessor :name
        # The phone number (including extension) for the recipient of the order.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          attr_accessor :type
          # Value of the tax ID.
          attr_accessor :value

          def initialize(type: nil, value: nil)
            @type = type
            @value = value
          end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        attr_accessor :tax_exempt
        # The purchaser's tax IDs to be used for this order.
        attr_accessor :tax_ids

        def initialize(tax_exempt: nil, tax_ids: nil)
          @tax_exempt = tax_exempt
          @tax_ids = tax_ids
        end
      end
      # Settings for automatic tax calculation for this order.
      attr_accessor :automatic_tax
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      attr_accessor :billing_details
      # The credits to apply to the order, only `gift_card` currently supported.
      attr_accessor :credits
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # The customer associated with this order.
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # The coupons, promotion codes, and/or discounts to apply to the order.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The IP address of the purchaser for this order.
      attr_accessor :ip_address
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Payment information associated with the order, including payment settings.
      attr_accessor :payment
      # Settings for the customer cost of shipping for this order.
      attr_accessor :shipping_cost
      # Shipping details for the order.
      attr_accessor :shipping_details
      # Additional tax details about the purchaser to be used for this order.
      attr_accessor :tax_details

      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        credits: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        ip_address: nil,
        line_items: nil,
        metadata: nil,
        payment: nil,
        shipping_cost: nil,
        shipping_details: nil,
        tax_details: nil
      )
        @automatic_tax = automatic_tax
        @billing_details = billing_details
        @credits = credits
        @currency = currency
        @customer = customer
        @description = description
        @discounts = discounts
        @expand = expand
        @ip_address = ip_address
        @line_items = line_items
        @metadata = metadata
        @payment = payment
        @shipping_cost = shipping_cost
        @shipping_details = shipping_details
        @tax_details = tax_details
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        attr_accessor :enabled

        def initialize(enabled: nil)
          @enabled = enabled
        end
      end

      class BillingDetails < Stripe::RequestParams
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
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
        # The billing address provided by the customer.
        attr_accessor :address
        # The billing email provided by the customer.
        attr_accessor :email
        # The billing name provided by the customer.
        attr_accessor :name
        # The billing phone number provided by the customer.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end

      class Credit < Stripe::RequestParams
        # The gift card to apply to the order.
        attr_accessor :gift_card
        # The type of credit to apply to the order, only `gift_card` currently supported.
        attr_accessor :type

        def initialize(gift_card: nil, type: nil)
          @gift_card = gift_card
          @type = type
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

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount

          def initialize(coupon: nil, discount: nil)
            @coupon = coupon
            @discount = discount
          end
        end

        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # ID of the product this price belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
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

        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            attr_accessor :height
            # Length, in inches. Maximum precision is 2 decimal places.
            attr_accessor :length
            # Weight, in ounces. Maximum precision is 2 decimal places.
            attr_accessor :weight
            # Width, in inches. Maximum precision is 2 decimal places.
            attr_accessor :width

            def initialize(height: nil, length: nil, weight: nil, width: nil)
              @height = height
              @length = length
              @weight = weight
              @width = width
            end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          attr_accessor :description
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          attr_accessor :id
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          attr_accessor :name
          # The dimensions of this product for shipping purposes.
          attr_accessor :package_dimensions
          # Whether this product is shipped (i.e., physical goods).
          attr_accessor :shippable
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          attr_accessor :tax_code
          # A URL of a publicly-accessible webpage for this product.
          attr_accessor :url

          def initialize(
            description: nil,
            id: nil,
            images: nil,
            metadata: nil,
            name: nil,
            package_dimensions: nil,
            shippable: nil,
            tax_code: nil,
            url: nil
          )
            @description = description
            @id = id
            @images = images
            @metadata = metadata
            @name = name
            @package_dimensions = package_dimensions
            @shippable = shippable
            @tax_code = tax_code
            @url = url
          end
        end
        # The description for the line item. Will default to the name of the associated product.
        attr_accessor :description
        # The discounts applied to this line item.
        attr_accessor :discounts
        # The ID of an existing line item on the order.
        attr_accessor :id
        # The ID of a [Price](https://stripe.com/docs/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        attr_accessor :price
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create products upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        attr_accessor :price_data
        # The ID of a [Product](https://stripe.com/docs/api/products) to add to the Order.
        #
        # The product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        attr_accessor :product
        # Defines a Product inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        attr_accessor :product_data
        # The quantity of the line item.
        attr_accessor :quantity
        # The tax rates applied to this line item.
        attr_accessor :tax_rates

        def initialize(
          description: nil,
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          product: nil,
          product_data: nil,
          quantity: nil,
          tax_rates: nil
        )
          @description = description
          @discounts = discounts
          @id = id
          @price = price
          @price_data = price_data
          @product = product
          @product_data = product_data
          @quantity = quantity
          @tax_rates = tax_rates
        end
      end

      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                attr_accessor :custom_mandate_url
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                attr_accessor :interval_description
                # Payment schedule for the mandate.
                attr_accessor :payment_schedule
                # Transaction type of the mandate.
                attr_accessor :transaction_type

                def initialize(
                  custom_mandate_url: nil,
                  interval_description: nil,
                  payment_schedule: nil,
                  transaction_type: nil
                )
                  @custom_mandate_url = custom_mandate_url
                  @interval_description = interval_description
                  @payment_schedule = payment_schedule
                  @transaction_type = transaction_type
                end
              end
              # Additional fields for Mandate creation
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage
              # Bank account verification method.
              attr_accessor :verification_method

              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                verification_method: nil
              )
                @mandate_options = mandate_options
                @setup_future_usage = setup_future_usage
                @verification_method = verification_method
              end
            end

            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              attr_accessor :reference
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @reference = reference
                @setup_future_usage = setup_future_usage
              end
            end

            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(setup_future_usage: nil)
                @setup_future_usage = setup_future_usage
              end
            end

            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(preferred_language: nil, setup_future_usage: nil)
                @preferred_language = preferred_language
                @setup_future_usage = setup_future_usage
              end
            end

            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              attr_accessor :capture_method
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @setup_future_usage = setup_future_usage
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
                # Configuration for the eu_bank_transfer funding type.
                attr_accessor :eu_bank_transfer
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                attr_accessor :requested_address_types
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                attr_accessor :type

                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil)
                  @eu_bank_transfer = eu_bank_transfer
                  @requested_address_types = requested_address_types
                  @type = type
                end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              attr_accessor :funding_type
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil)
                @bank_transfer = bank_transfer
                @funding_type = funding_type
                @setup_future_usage = setup_future_usage
              end
            end

            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(setup_future_usage: nil)
                @setup_future_usage = setup_future_usage
              end
            end

            class Klarna < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # Preferred language of the Klarna authorization page that the customer is redirected to
              attr_accessor :preferred_locale
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @preferred_locale = preferred_locale
                @setup_future_usage = setup_future_usage
              end
            end

            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              attr_accessor :capture_method
              # [Deprecated] This is a legacy parameter that no longer has any function.
              attr_accessor :persistent_token
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil)
                @capture_method = capture_method
                @persistent_token = persistent_token
                @setup_future_usage = setup_future_usage
              end
            end

            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              attr_accessor :expires_after_days
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(expires_after_days: nil, setup_future_usage: nil)
                @expires_after_days = expires_after_days
                @setup_future_usage = setup_future_usage
              end
            end

            class P24 < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage
              # Confirm that the payer has accepted the P24 terms and conditions.
              attr_accessor :tos_shown_and_accepted

              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil)
                @setup_future_usage = setup_future_usage
                @tos_shown_and_accepted = tos_shown_and_accepted
              end
            end

            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  attr_accessor :amount
                  # The tax behavior for the line item.
                  attr_accessor :behavior

                  def initialize(amount: nil, behavior: nil)
                    @amount = amount
                    @behavior = behavior
                  end
                end
                # Type of the line item.
                attr_accessor :category
                # Description of the line item.
                attr_accessor :description
                # Descriptive name of the line item.
                attr_accessor :name
                # Quantity of the line item. Must be a positive number.
                attr_accessor :quantity
                # Client facing stock keeping unit, article number or similar.
                attr_accessor :sku
                # The Stripe account ID of the connected account that sells the item.
                attr_accessor :sold_by
                # The tax information for the line item.
                attr_accessor :tax
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                attr_accessor :unit_amount

                def initialize(
                  category: nil,
                  description: nil,
                  name: nil,
                  quantity: nil,
                  sku: nil,
                  sold_by: nil,
                  tax: nil,
                  unit_amount: nil
                )
                  @category = category
                  @description = description
                  @name = name
                  @quantity = quantity
                  @sku = sku
                  @sold_by = sold_by
                  @tax = tax
                  @unit_amount = unit_amount
                end
              end
              # Controls when the funds will be captured from the customer's account.
              attr_accessor :capture_method
              # The line items purchased by the customer.
              attr_accessor :line_items
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              attr_accessor :preferred_locale
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              attr_accessor :reference
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              attr_accessor :reference_id
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
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
              attr_accessor :setup_future_usage
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              attr_accessor :subsellers

              def initialize(
                capture_method: nil,
                line_items: nil,
                preferred_locale: nil,
                reference: nil,
                reference_id: nil,
                risk_correlation_id: nil,
                setup_future_usage: nil,
                subsellers: nil
              )
                @capture_method = capture_method
                @line_items = line_items
                @preferred_locale = preferred_locale
                @reference = reference
                @reference_id = reference_id
                @risk_correlation_id = risk_correlation_id
                @setup_future_usage = setup_future_usage
                @subsellers = subsellers
              end
            end

            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                attr_accessor :reference_prefix

                def initialize(reference_prefix: nil)
                  @reference_prefix = reference_prefix
                end
              end
              # Additional fields for Mandate creation
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(mandate_options: nil, setup_future_usage: nil)
                @mandate_options = mandate_options
                @setup_future_usage = setup_future_usage
              end
            end

            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(preferred_language: nil, setup_future_usage: nil)
                @preferred_language = preferred_language
                @setup_future_usage = setup_future_usage
              end
            end

            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              attr_accessor :app_id
              # The client type that the end customer will pay from
              attr_accessor :client
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              attr_accessor :setup_future_usage

              def initialize(app_id: nil, client: nil, setup_future_usage: nil)
                @app_id = app_id
                @client = client
                @setup_future_usage = setup_future_usage
              end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            attr_accessor :acss_debit
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            attr_accessor :afterpay_clearpay
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            attr_accessor :alipay
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            attr_accessor :bancontact
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            attr_accessor :card
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            attr_accessor :customer_balance
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            attr_accessor :ideal
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            attr_accessor :klarna
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            attr_accessor :link
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            attr_accessor :oxxo
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            attr_accessor :p24
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            attr_accessor :paypal
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            attr_accessor :sepa_debit
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            attr_accessor :sofort
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            attr_accessor :wechat_pay

            def initialize(
              acss_debit: nil,
              afterpay_clearpay: nil,
              alipay: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              ideal: nil,
              klarna: nil,
              link: nil,
              oxxo: nil,
              p24: nil,
              paypal: nil,
              sepa_debit: nil,
              sofort: nil,
              wechat_pay: nil
            )
              @acss_debit = acss_debit
              @afterpay_clearpay = afterpay_clearpay
              @alipay = alipay
              @bancontact = bancontact
              @card = card
              @customer_balance = customer_balance
              @ideal = ideal
              @klarna = klarna
              @link = link
              @oxxo = oxxo
              @p24 = p24
              @paypal = paypal
              @sepa_debit = sepa_debit
              @sofort = sofort
              @wechat_pay = wechat_pay
            end
          end

          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            attr_accessor :amount
            # ID of the Connected account receiving the transfer.
            attr_accessor :destination

            def initialize(amount: nil, destination: nil)
              @amount = amount
              @destination = destination
            end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          attr_accessor :application_fee_amount
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          attr_accessor :payment_method_options
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          attr_accessor :payment_method_types
          # The URL to redirect the customer to after they authenticate their payment.
          attr_accessor :return_url
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          attr_accessor :statement_descriptor
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          attr_accessor :statement_descriptor_suffix
          # Provides configuration for completing a transfer for the order after it is paid.
          attr_accessor :transfer_data

          def initialize(
            application_fee_amount: nil,
            payment_method_options: nil,
            payment_method_types: nil,
            return_url: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil
          )
            @application_fee_amount = application_fee_amount
            @payment_method_options = payment_method_options
            @payment_method_types = payment_method_types
            @return_url = return_url
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @transfer_data = transfer_data
          end
        end
        # Settings describing how the order should configure generated PaymentIntents.
        attr_accessor :settings

        def initialize(settings: nil)
          @settings = settings
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
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
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
        # The shipping address for the order.
        attr_accessor :address
        # The name of the recipient of the order.
        attr_accessor :name
        # The phone number (including extension) for the recipient of the order.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end

      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          attr_accessor :type
          # Value of the tax ID.
          attr_accessor :value

          def initialize(type: nil, value: nil)
            @type = type
            @value = value
          end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        attr_accessor :tax_exempt
        # The purchaser's tax IDs to be used for this order.
        attr_accessor :tax_ids

        def initialize(tax_exempt: nil, tax_ids: nil)
          @tax_exempt = tax_exempt
          @tax_ids = tax_ids
        end
      end
      # Settings for automatic tax calculation for this order.
      attr_accessor :automatic_tax
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      attr_accessor :billing_details
      # The credits to apply to the order, only `gift_card` currently supported. Pass the empty string `""` to unset this field.
      attr_accessor :credits
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # The customer associated with this order.
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # The coupons, promotion codes, and/or discounts to apply to the order. Pass the empty string `""` to unset this field.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The IP address of the purchaser for this order.
      attr_accessor :ip_address
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Payment information associated with the order, including payment settings.
      attr_accessor :payment
      # Settings for the customer cost of shipping for this order.
      attr_accessor :shipping_cost
      # Shipping details for the order.
      attr_accessor :shipping_details
      # Additional tax details about the purchaser to be used for this order.
      attr_accessor :tax_details

      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        credits: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        ip_address: nil,
        line_items: nil,
        metadata: nil,
        payment: nil,
        shipping_cost: nil,
        shipping_details: nil,
        tax_details: nil
      )
        @automatic_tax = automatic_tax
        @billing_details = billing_details
        @credits = credits
        @currency = currency
        @customer = customer
        @description = description
        @discounts = discounts
        @expand = expand
        @ip_address = ip_address
        @line_items = line_items
        @metadata = metadata
        @payment = payment
        @shipping_cost = shipping_cost
        @shipping_details = shipping_details
        @tax_details = tax_details
      end
    end

    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ReopenParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class SubmitParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # `expected_total` should always be set to the order's `amount_total` field. If they don't match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
      attr_accessor :expected_total

      def initialize(expand: nil, expected_total: nil)
        @expand = expand
        @expected_total = expected_total
      end
    end
    # Attribute for field amount_remaining
    attr_reader :amount_remaining
    # Order cost before any discounts or taxes are applied. A positive integer representing the subtotal of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
    attr_reader :amount_subtotal
    # Total order cost after discounts and taxes are applied. A positive integer representing the cost of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). To submit an order, the total must be either 0 or at least $0.50 USD or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts).
    attr_reader :amount_total
    # ID of the Connect application that created the Order, if any.
    attr_reader :application
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # Customer billing details associated with the order.
    attr_reader :billing_details
    # The client secret of this Order. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment for an Order from your frontend. It should not be stored, logged, embedded in URLs, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs for [creating and processing an order](https://stripe.com/docs/orders-beta/create-and-process) to learn about how client_secret should be handled.
    attr_reader :client_secret
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The credits applied to the Order. At most 10 credits can be applied to an Order.
    attr_reader :credits
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The customer which this orders belongs to.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # Unique identifier for the object.
    attr_reader :id
    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    attr_reader :ip_address
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    attr_reader :line_items
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field payment
    attr_reader :payment
    # The details of the customer cost of shipping, including the customer chosen ShippingRate.
    attr_reader :shipping_cost
    # Customer shipping information associated with the order.
    attr_reader :shipping_details
    # The overall status of the order.
    attr_reader :status
    # Attribute for field tax_details
    attr_reader :tax_details
    # Attribute for field total_details
    attr_reader :total_details

    # Cancels the order as well as the payment intent if one is attached.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the order as well as the payment intent if one is attached.
    def self.cancel(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Creates a new open order object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/orders", params: params, opts: opts)
    end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/orders", params: params, opts: opts)
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(id, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def reopen(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def self.reopen(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def submit(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def self.submit(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
