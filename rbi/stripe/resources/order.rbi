# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    class AutomaticTax < Stripe::StripeObject
      # Whether Stripe automatically computes tax on this Order.
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # The status of the most recent automated tax calculation for this Order.
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class BillingDetails < Stripe::StripeObject
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
      # Billing address for the order.
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      # Email address for the order.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # Full name for the order.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Billing phone number for the order (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class Credit < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        # The token of the gift card applied to the order
        sig { returns(String) }
        attr_reader :card
      end
      # The amount of this credit to apply to the order.
      sig { returns(Integer) }
      attr_reader :amount
      # Details for a gift card.
      sig { returns(T.nilable(GiftCard)) }
      attr_reader :gift_card
      # Line items on this order that are ineligible for this credit
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ineligible_line_items
      # The type of credit to apply to the order, only `gift_card` currently supported.
      sig { returns(String) }
      attr_reader :type
    end
    class Payment < Stripe::StripeObject
      class Settings < Stripe::StripeObject
        class AutomaticPaymentMethods < Stripe::StripeObject
          # Whether this Order has been opted into managing payment method types via the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # A URL for custom mandate text
              sig { returns(String) }
              attr_reader :custom_mandate_url
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
          class AfterpayClearpay < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            attr_reader :capture_method
            # Order identifier shown to the user in Afterpay's online portal. We recommend using a value that helps you answer any questions a customer might have about the payment. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
            sig { returns(T.nilable(String)) }
            attr_reader :reference
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
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
          class Bancontact < Stripe::StripeObject
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(String) }
            attr_reader :preferred_language
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
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            attr_reader :capture_method
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
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
          class Klarna < Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            attr_reader :capture_method
            # Preferred locale of the Klarna checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_locale
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
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            attr_reader :capture_method
            # [Deprecated] This is a legacy parameter that no longer has any function.
            sig { returns(T.nilable(String)) }
            attr_reader :persistent_token
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
          class Paypal < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              class Tax < Stripe::StripeObject
                # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                attr_reader :amount
                # The tax behavior for the line item.
                sig { returns(String) }
                attr_reader :behavior
              end
              # Type of the line item.
              sig { returns(String) }
              attr_reader :category
              # Description of the line item.
              sig { returns(String) }
              attr_reader :description
              # Descriptive name of the line item.
              sig { returns(String) }
              attr_reader :name
              # Quantity of the line item. Cannot be a negative number.
              sig { returns(Integer) }
              attr_reader :quantity
              # Client facing stock keeping unit, article number or similar.
              sig { returns(String) }
              attr_reader :sku
              # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
              sig { returns(String) }
              attr_reader :sold_by
              # Attribute for field tax
              sig { returns(Tax) }
              attr_reader :tax
              # Price for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              attr_reader :unit_amount
            end
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            attr_reader :capture_method
            # The line items purchased by the customer.
            sig { returns(T::Array[LineItem]) }
            attr_reader :line_items
            # Preferred locale of the PayPal checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_locale
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            attr_reader :reference
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            attr_reader :reference_id
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
            # Preferred language of the SOFORT authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_language
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
          class WechatPay < Stripe::StripeObject
            # The app ID registered with WeChat Pay. Only required when client is ios or android.
            sig { returns(T.nilable(String)) }
            attr_reader :app_id
            # The client type that the end customer will pay from
            sig { returns(T.nilable(String)) }
            attr_reader :client
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
          # Attribute for field acss_debit
          sig { returns(AcssDebit) }
          attr_reader :acss_debit
          # Attribute for field afterpay_clearpay
          sig { returns(AfterpayClearpay) }
          attr_reader :afterpay_clearpay
          # Attribute for field alipay
          sig { returns(Alipay) }
          attr_reader :alipay
          # Attribute for field bancontact
          sig { returns(Bancontact) }
          attr_reader :bancontact
          # Attribute for field card
          sig { returns(Card) }
          attr_reader :card
          # Attribute for field customer_balance
          sig { returns(CustomerBalance) }
          attr_reader :customer_balance
          # Attribute for field ideal
          sig { returns(Ideal) }
          attr_reader :ideal
          # Attribute for field klarna
          sig { returns(Klarna) }
          attr_reader :klarna
          # Attribute for field link
          sig { returns(Link) }
          attr_reader :link
          # Attribute for field oxxo
          sig { returns(Oxxo) }
          attr_reader :oxxo
          # Attribute for field p24
          sig { returns(P24) }
          attr_reader :p24
          # Attribute for field paypal
          sig { returns(Paypal) }
          attr_reader :paypal
          # Attribute for field sepa_debit
          sig { returns(SepaDebit) }
          attr_reader :sepa_debit
          # Attribute for field sofort
          sig { returns(Sofort) }
          attr_reader :sofort
          # Attribute for field wechat_pay
          sig { returns(WechatPay) }
          attr_reader :wechat_pay
        end
        class TransferData < Stripe::StripeObject
          # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount
          # ID of the Connected account receiving the transfer.
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :destination
        end
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :application_fee_amount
        # Indicates whether order has been opted into using [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods) to manage payment method types.
        sig { returns(T.nilable(AutomaticPaymentMethods)) }
        attr_reader :automatic_payment_methods
        # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
        sig { returns(T.nilable(PaymentMethodOptions)) }
        attr_reader :payment_method_options
        # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :payment_method_types
        # The URL to redirect the customer to after they authenticate their payment.
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor
        # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_suffix
        # Provides configuration for completing a transfer for the order after it is paid.
        sig { returns(T.nilable(TransferData)) }
        attr_reader :transfer_data
      end
      # ID of the payment intent associated with this order. Null when the order is `open`.
      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
      attr_reader :payment_intent
      # Settings describing how the order should configure generated PaymentIntents.
      sig { returns(T.nilable(Settings)) }
      attr_reader :settings
      # The status of the underlying payment associated with this order, if any. Null when the order is `open`.
      sig { returns(T.nilable(String)) }
      attr_reader :status
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
      # Recipient shipping address. Required if the order includes products that are shippable.
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      # Recipient name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class TaxDetails < Stripe::StripeObject
      class TaxId < Stripe::StripeObject
        # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, or `unknown`
        sig { returns(String) }
        attr_reader :type
        # The value of the tax ID.
        sig { returns(T.nilable(String)) }
        attr_reader :value
      end
      # Describes the purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
      sig { returns(String) }
      attr_reader :tax_exempt
      # The purchaser's tax IDs to be used in calculation of tax for this Order.
      sig { returns(T::Array[TaxId]) }
      attr_reader :tax_ids
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
      # Attribute for field amount_credit
      sig { returns(Integer) }
      attr_reader :amount_credit
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
    # Attribute for field amount_remaining
    sig { returns(Integer) }
    attr_reader :amount_remaining

    # Order cost before any discounts or taxes are applied. A positive integer representing the subtotal of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
    sig { returns(Integer) }
    attr_reader :amount_subtotal

    # Total order cost after discounts and taxes are applied. A positive integer representing the cost of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). To submit an order, the total must be either 0 or at least $0.50 USD or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts).
    sig { returns(Integer) }
    attr_reader :amount_total

    # ID of the Connect application that created the Order, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    # Customer billing details associated with the order.
    sig { returns(T.nilable(BillingDetails)) }
    attr_reader :billing_details

    # The client secret of this Order. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment for an Order from your frontend. It should not be stored, logged, embedded in URLs, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs for [creating and processing an order](https://stripe.com/docs/orders-beta/create-and-process) to learn about how client_secret should be handled.
    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The credits applied to the Order. At most 10 credits can be applied to an Order.
    sig { returns(T::Array[Credit]) }
    attr_reader :credits

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # The customer which this orders belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    attr_reader :discounts

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    sig { returns(T.nilable(String)) }
    attr_reader :ip_address

    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    sig { returns(Stripe::ListObject) }
    attr_reader :line_items

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Attribute for field payment
    sig { returns(Payment) }
    attr_reader :payment

    # The details of the customer cost of shipping, including the customer chosen ShippingRate.
    sig { returns(T.nilable(ShippingCost)) }
    attr_reader :shipping_cost

    # Customer shipping information associated with the order.
    sig { returns(T.nilable(ShippingDetails)) }
    attr_reader :shipping_details

    # The overall status of the order.
    sig { returns(String) }
    attr_reader :status

    # Attribute for field tax_details
    sig { returns(TaxDetails) }
    attr_reader :tax_details

    # Attribute for field total_details
    sig { returns(TotalDetails) }
    attr_reader :total_details
  end
end