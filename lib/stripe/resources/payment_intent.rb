# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
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
  class PaymentIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_intent"
    def self.object_name
      "payment_intent"
    end

    class AmountDetails < Stripe::StripeObject
      class Tip < Stripe::StripeObject
        # Portion of the amount that corresponds to a tip.
        attr_reader :amount
      end
      # Attribute for field tip
      attr_reader :tip
    end

    class AsyncWorkflows < Stripe::StripeObject
      class Inputs < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          attr_reader :calculation
        end
        # Attribute for field tax
        attr_reader :tax
      end
      # Attribute for field inputs
      attr_reader :inputs
    end

    class AutomaticPaymentMethods < Stripe::StripeObject
      # Controls whether this PaymentIntent will accept redirect-based payment methods.
      #
      # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
      attr_reader :allow_redirects
      # Automatically calculates compatible payment methods
      attr_reader :enabled
    end

    class LastPaymentError < Stripe::StripeObject
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

    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        # The native data to be used with Alipay SDK you must redirect your customer to in order to authenticate the payment in an Android App.
        attr_reader :native_data
        # The native URL you must redirect your customer to in order to authenticate the payment in an iOS App.
        attr_reader :native_url
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate the payment.
        attr_reader :url
      end

      class BoletoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the boleto expires.
        attr_reader :expires_at
        # The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
        attr_reader :hosted_voucher_url
        # The boleto number.
        attr_reader :number
        # The URL to the downloadable boleto voucher PDF.
        attr_reader :pdf
      end

      class CardAwaitNotification < Stripe::StripeObject
        # The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
        attr_reader :charge_attempt_at
        # For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
        attr_reader :customer_approval_required
      end

      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The date (unix timestamp) when the QR code expires.
          attr_reader :expires_at
          # The image_url_png string used to render QR code
          attr_reader :image_url_png
          # The image_url_svg string used to render QR code
          attr_reader :image_url_svg
        end
        # The URL to the hosted Cash App Pay instructions page, which allows customers to view the QR code, and supports QR code refreshing on expiration.
        attr_reader :hosted_instructions_url
        # The url for mobile redirect based auth
        attr_reader :mobile_auth_url
        # Attribute for field qr_code
        attr_reader :qr_code
      end

      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The account holder name
            attr_reader :account_holder_name
            # The ABA account number
            attr_reader :account_number
            # The account type
            attr_reader :account_type
            # Attribute for field bank_address
            attr_reader :bank_address
            # The bank name
            attr_reader :bank_name
            # The ABA routing number
            attr_reader :routing_number
          end

          class Iban < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The name of the person or business that owns the bank account
            attr_reader :account_holder_name
            # Attribute for field bank_address
            attr_reader :bank_address
            # The BIC/SWIFT code of the account.
            attr_reader :bic
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # The IBAN of the account.
            attr_reader :iban
          end

          class SortCode < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The name of the person or business that owns the bank account
            attr_reader :account_holder_name
            # The account number
            attr_reader :account_number
            # Attribute for field bank_address
            attr_reader :bank_address
            # The six-digit sort code
            attr_reader :sort_code
          end

          class Spei < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The account holder name
            attr_reader :account_holder_name
            # Attribute for field bank_address
            attr_reader :bank_address
            # The three-digit bank code
            attr_reader :bank_code
            # The short banking institution name
            attr_reader :bank_name
            # The CLABE number
            attr_reader :clabe
          end

          class Swift < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The account holder name
            attr_reader :account_holder_name
            # The account number
            attr_reader :account_number
            # The account type
            attr_reader :account_type
            # Attribute for field bank_address
            attr_reader :bank_address
            # The bank name
            attr_reader :bank_name
            # The SWIFT code
            attr_reader :swift_code
          end

          class Zengin < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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

            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            attr_reader :account_holder_address
            # The account holder name
            attr_reader :account_holder_name
            # The account number
            attr_reader :account_number
            # The bank account type. In Japan, this can only be `futsu` or `toza`.
            attr_reader :account_type
            # Attribute for field bank_address
            attr_reader :bank_address
            # The bank code of the account
            attr_reader :bank_code
            # The bank name of the account
            attr_reader :bank_name
            # The branch code of the account
            attr_reader :branch_code
            # The branch name of the account
            attr_reader :branch_name
          end
          # ABA Records contain U.S. bank account details per the ABA format.
          attr_reader :aba
          # Iban Records contain E.U. bank account details per the SEPA format.
          attr_reader :iban
          # Sort Code Records contain U.K. bank account details per the sort code format.
          attr_reader :sort_code
          # SPEI Records contain Mexico bank account details per the SPEI format.
          attr_reader :spei
          # The payment networks supported by this FinancialAddress
          attr_reader :supported_networks
          # SWIFT Records contain U.S. bank account details per the SWIFT format.
          attr_reader :swift
          # The type of financial address
          attr_reader :type
          # Zengin Records contain Japan bank account details per the Zengin format.
          attr_reader :zengin
        end
        # The remaining amount that needs to be transferred to complete the payment.
        attr_reader :amount_remaining
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # A list of financial addresses that can be used to fund the customer balance
        attr_reader :financial_addresses
        # A link to a hosted page that guides your customer through completing the transfer.
        attr_reader :hosted_instructions_url
        # A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
        attr_reader :reference
        # Type of bank transfer
        attr_reader :type
      end

      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            # The confirmation number.
            attr_reader :confirmation_number
            # The payment code.
            attr_reader :payment_code
          end

          class Lawson < Stripe::StripeObject
            # The confirmation number.
            attr_reader :confirmation_number
            # The payment code.
            attr_reader :payment_code
          end

          class Ministop < Stripe::StripeObject
            # The confirmation number.
            attr_reader :confirmation_number
            # The payment code.
            attr_reader :payment_code
          end

          class Seicomart < Stripe::StripeObject
            # The confirmation number.
            attr_reader :confirmation_number
            # The payment code.
            attr_reader :payment_code
          end
          # FamilyMart instruction details.
          attr_reader :familymart
          # Lawson instruction details.
          attr_reader :lawson
          # Ministop instruction details.
          attr_reader :ministop
          # Seicomart instruction details.
          attr_reader :seicomart
        end
        # The timestamp at which the pending Konbini payment expires.
        attr_reader :expires_at
        # The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
        attr_reader :hosted_voucher_url
        # Attribute for field stores
        attr_reader :stores
      end

      class MultibancoDisplayDetails < Stripe::StripeObject
        # Entity number associated with this Multibanco payment.
        attr_reader :entity
        # The timestamp at which the Multibanco voucher expires.
        attr_reader :expires_at
        # The URL for the hosted Multibanco voucher page, which allows customers to view a Multibanco voucher.
        attr_reader :hosted_voucher_url
        # Reference number associated with this Multibanco payment.
        attr_reader :reference
      end

      class OxxoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the OXXO voucher expires.
        attr_reader :expires_after
        # The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
        attr_reader :hosted_voucher_url
        # OXXO reference number.
        attr_reader :number
      end

      class PaynowDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        attr_reader :data
        # The URL to the hosted PayNow instructions page, which allows customers to view the PayNow QR code.
        attr_reader :hosted_instructions_url
        # The image_url_png string used to render QR code
        attr_reader :image_url_png
        # The image_url_svg string used to render QR code
        attr_reader :image_url_svg
      end

      class PixDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        attr_reader :data
        # The date (unix timestamp) when the PIX expires.
        attr_reader :expires_at
        # The URL to the hosted pix instructions page, which allows customers to view the pix QR code.
        attr_reader :hosted_instructions_url
        # The image_url_png string used to render png QR code
        attr_reader :image_url_png
        # The image_url_svg string used to render svg QR code
        attr_reader :image_url_svg
      end

      class PromptpayDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        attr_reader :data
        # The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
        attr_reader :hosted_instructions_url
        # The PNG path used to render the QR code, can be used as the source in an HTML img tag
        attr_reader :image_url_png
        # The SVG path used to render the QR code, can be used as the source in an HTML img tag
        attr_reader :image_url_svg
      end

      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate the payment.
        attr_reader :url
      end

      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The raw data string used to generate QR code, it should be used together with QR code library.
          attr_reader :data
          # The image_url_png string used to render QR code
          attr_reader :image_url_png
          # The image_url_svg string used to render QR code
          attr_reader :image_url_svg
        end
        # The URL to the hosted Swish instructions page, which allows customers to view the QR code.
        attr_reader :hosted_instructions_url
        # The url for mobile redirect based auth (for internal use only and not typically available in standard API requests).
        attr_reader :mobile_auth_url
        # Attribute for field qr_code
        attr_reader :qr_code
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        # The timestamp when the microdeposits are expected to land.
        attr_reader :arrival_date
        # The URL for the hosted verification page, which allows customers to verify their bank account.
        attr_reader :hosted_verification_url
        # The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
        attr_reader :microdeposit_type
      end

      class WechatPayDisplayQrCode < Stripe::StripeObject
        # The data being used to generate QR code
        attr_reader :data
        # The URL to the hosted WeChat Pay instructions page, which allows customers to view the WeChat Pay QR code.
        attr_reader :hosted_instructions_url
        # The base64 image data for a pre-generated QR code
        attr_reader :image_data_url
        # The image_url_png string used to render QR code
        attr_reader :image_url_png
        # The image_url_svg string used to render QR code
        attr_reader :image_url_svg
      end

      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        # app_id is the APP ID registered on WeChat open platform
        attr_reader :app_id
        # nonce_str is a random string
        attr_reader :nonce_str
        # package is static value
        attr_reader :package
        # an unique merchant ID assigned by WeChat Pay
        attr_reader :partner_id
        # an unique trading ID assigned by WeChat Pay
        attr_reader :prepay_id
        # A signature
        attr_reader :sign
        # Specifies the current time in epoch format
        attr_reader :timestamp
      end

      class WechatPayRedirectToIosApp < Stripe::StripeObject
        # An universal link that redirect to WeChat Pay app
        attr_reader :native_url
      end
      # Attribute for field alipay_handle_redirect
      attr_reader :alipay_handle_redirect
      # Attribute for field boleto_display_details
      attr_reader :boleto_display_details
      # Attribute for field card_await_notification
      attr_reader :card_await_notification
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      # Attribute for field display_bank_transfer_instructions
      attr_reader :display_bank_transfer_instructions
      # Attribute for field konbini_display_details
      attr_reader :konbini_display_details
      # Attribute for field multibanco_display_details
      attr_reader :multibanco_display_details
      # Attribute for field oxxo_display_details
      attr_reader :oxxo_display_details
      # Attribute for field paynow_display_qr_code
      attr_reader :paynow_display_qr_code
      # Attribute for field pix_display_qr_code
      attr_reader :pix_display_qr_code
      # Attribute for field promptpay_display_qr_code
      attr_reader :promptpay_display_qr_code
      # Attribute for field redirect_to_url
      attr_reader :redirect_to_url
      # Attribute for field swish_handle_redirect_or_display_qr_code
      attr_reader :swish_handle_redirect_or_display_qr_code
      # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      attr_reader :type
      # When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      attr_reader :use_stripe_sdk
      # Attribute for field verify_with_microdeposits
      attr_reader :verify_with_microdeposits
      # Attribute for field wechat_pay_display_qr_code
      attr_reader :wechat_pay_display_qr_code
      # Attribute for field wechat_pay_redirect_to_android_app
      attr_reader :wechat_pay_redirect_to_android_app
      # Attribute for field wechat_pay_redirect_to_ios_app
      attr_reader :wechat_pay_redirect_to_ios_app
    end

    class PaymentDetails < Stripe::StripeObject
      class CarRental < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          attr_reader :name
        end

        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            # The email of the recipient the ticket is delivered to.
            attr_reader :email
            # The name of the recipient the ticket is delivered to.
            attr_reader :name
            # The phone number of the recipient the ticket is delivered to.
            attr_reader :phone
          end
          # The delivery method for the payment
          attr_reader :mode
          # Attribute for field recipient
          attr_reader :recipient
        end

        class Driver < Stripe::StripeObject
          # Full name of the driver on the reservation.
          attr_reader :name
        end

        class PickupAddress < Stripe::StripeObject
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

        class ReturnAddress < Stripe::StripeObject
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
        # Attribute for field affiliate
        attr_reader :affiliate
        # The booking number associated with the car rental.
        attr_reader :booking_number
        # Class code of the car.
        attr_reader :car_class_code
        # Make of the car.
        attr_reader :car_make
        # Model of the car.
        attr_reader :car_model
        # The name of the rental car company.
        attr_reader :company
        # The customer service phone number of the car rental company.
        attr_reader :customer_service_phone_number
        # Number of days the car is being rented.
        attr_reader :days_rented
        # Attribute for field delivery
        attr_reader :delivery
        # The details of the drivers associated with the trip.
        attr_reader :drivers
        # List of additional charges being billed.
        attr_reader :extra_charges
        # Indicates if the customer did not keep nor cancel their booking.
        attr_reader :no_show
        # Attribute for field pickup_address
        attr_reader :pickup_address
        # Car pick-up time. Measured in seconds since the Unix epoch.
        attr_reader :pickup_at
        # Rental rate.
        attr_reader :rate_amount
        # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
        attr_reader :rate_interval
        # The full name of the person or entity renting the car.
        attr_reader :renter_name
        # Attribute for field return_address
        attr_reader :return_address
        # Car return time. Measured in seconds since the Unix epoch.
        attr_reader :return_at
        # Indicates whether the goods or services are tax-exempt or tax is not collected.
        attr_reader :tax_exempt
      end

      class EventDetails < Stripe::StripeObject
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

        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          attr_reader :name
        end

        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            # The email of the recipient the ticket is delivered to.
            attr_reader :email
            # The name of the recipient the ticket is delivered to.
            attr_reader :name
            # The phone number of the recipient the ticket is delivered to.
            attr_reader :phone
          end
          # The delivery method for the payment
          attr_reader :mode
          # Attribute for field recipient
          attr_reader :recipient
        end
        # Indicates if the tickets are digitally checked when entering the venue.
        attr_reader :access_controlled_venue
        # Attribute for field address
        attr_reader :address
        # Attribute for field affiliate
        attr_reader :affiliate
        # The name of the company
        attr_reader :company
        # Attribute for field delivery
        attr_reader :delivery
        # Event end time. Measured in seconds since the Unix epoch.
        attr_reader :ends_at
        # Type of the event entertainment (concert, sports event etc)
        attr_reader :genre
        # The name of the event.
        attr_reader :name
        # Event start time. Measured in seconds since the Unix epoch.
        attr_reader :starts_at
      end

      class Subscription < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          attr_reader :name
        end

        class BillingInterval < Stripe::StripeObject
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          attr_reader :count
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          attr_reader :interval
        end
        # Attribute for field affiliate
        attr_reader :affiliate
        # Info whether the subscription will be auto renewed upon expiry.
        attr_reader :auto_renewal
        # Attribute for field billing_interval
        attr_reader :billing_interval
        # Subscription end time. Measured in seconds since the Unix epoch.
        attr_reader :ends_at
        # Name of the product on subscription. e.g. Apple Music Subscription.
        attr_reader :name
        # Subscription start time. Measured in seconds since the Unix epoch.
        attr_reader :starts_at
      end
      # Attribute for field car_rental
      attr_reader :car_rental
      # Attribute for field event_details
      attr_reader :event_details
      # Attribute for field subscription
      attr_reader :subscription
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      # ID of the payment method configuration used.
      attr_reader :id
      # ID of the parent payment method configuration used.
      attr_reader :parent
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

      class Affirm < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Preferred language of the Affirm authorization page that the customer is redirected to.
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

      class AfterpayClearpay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
        # This field differs from the statement descriptor and item name.
        attr_reader :reference
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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

      class Alma < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
      end

      class AmazonPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
        attr_reader :setup_future_usage
      end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
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

      class Blik < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Boleto < Stripe::StripeObject
        # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto voucher will expire on Wednesday at 23:59 America/Sao_Paulo time.
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

      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class AvailablePlan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`.
            attr_reader :type
          end

          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`.
            attr_reader :type
          end
          # Installment plans that may be selected for this PaymentIntent.
          attr_reader :available_plans
          # Whether Installments are enabled for this PaymentIntent.
          attr_reader :enabled
          # Installment plan selected for this PaymentIntent.
          attr_reader :plan
        end

        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          attr_reader :amount
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          attr_reader :amount_type
          # A description of the mandate or subscription that is meant to be displayed to the customer.
          attr_reader :description
          # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          attr_reader :end_date
          # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
          attr_reader :interval
          # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
          attr_reader :interval_count
          # Unique identifier for the mandate or subscription.
          attr_reader :reference
          # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
          attr_reader :start_date
          # Specifies the type of mandates supported. Possible values are `india`.
          attr_reader :supported_types
        end

        class StatementDetails < Stripe::StripeObject
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
          # Phone number
          attr_reader :phone
        end
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Installment details for this payment (Mexico only).
        #
        # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
        attr_reader :installments
        # Configuration options for setting up an eMandate for cards issued in India.
        attr_reader :mandate_options
        # Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
        attr_reader :network
        # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
        attr_reader :request_decremental_authorization
        # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
        attr_reader :request_extended_authorization
        # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
        attr_reader :request_incremental_authorization
        # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
        attr_reader :request_multicapture
        # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
        attr_reader :request_overcapture
        # Request partial authorization on this PaymentIntent.
        attr_reader :request_partial_authorization
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        attr_reader :request_three_d_secure
        # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
        attr_reader :require_cvc_recollection
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
        attr_reader :statement_descriptor_suffix_kana
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
        attr_reader :statement_descriptor_suffix_kanji
        # Attribute for field statement_details
        attr_reader :statement_details
      end

      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          # Requested routing priority
          attr_reader :requested_priority
        end
        # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
        attr_reader :request_extended_authorization
        # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
        attr_reader :request_incremental_authorization_support
        # Attribute for field routing
        attr_reader :routing
      end

      class Cashapp < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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

      class Eps < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
        attr_reader :setup_future_usage
      end

      class Gopay < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
        attr_reader :setup_future_usage
      end

      class IdBankTransfer < Stripe::StripeObject
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now till 2678400 seconds (31 days) from now.
        attr_reader :expires_after
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
        attr_reader :expires_at
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

      class InteracPresent < Stripe::StripeObject; end

      class KakaoPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
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

      class Konbini < Stripe::StripeObject
        # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores.
        attr_reader :confirmation_number
        # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST.
        attr_reader :expires_after_days
        # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
        attr_reader :expires_at
        # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
        attr_reader :product_description
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class KrCard < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
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

      class MbWay < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Mobilepay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
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
        attr_reader :setup_future_usage
      end

      class NaverPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
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

      class Payco < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
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

      class Payto < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount that will be collected. It is required when `amount_type` is `fixed`.
          attr_reader :amount
          # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
          attr_reader :amount_type
          # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
          attr_reader :end_date
          # The periodicity at which payments will be collected.
          attr_reader :payment_schedule
          # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
          attr_reader :payments_per_period
          # The purpose for which payments are made. Defaults to retail.
          attr_reader :purpose
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

      class Pix < Stripe::StripeObject
        # The number of seconds (between 10 and 1209600) after which Pix payment will expire.
        attr_reader :expires_after_seconds
        # The timestamp at which the Pix expires.
        attr_reader :expires_at
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Promptpay < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Qris < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Rechnung < Stripe::StripeObject; end

      class RevolutPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class SamsungPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        attr_reader :capture_method
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
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

      class Shopeepay < Stripe::StripeObject
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

      class Swish < Stripe::StripeObject
        # A reference for this payment to be displayed in the Swish app.
        attr_reader :reference
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class Twint < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_reader :setup_future_usage
      end

      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
            attr_reader :account_subcategories
            # The institution to use to filter for possible accounts to link.
            attr_reader :institution
          end

          class ManualEntry < Stripe::StripeObject
            # Settings for configuring manual entry of account details.
            attr_reader :mode
          end
          # Attribute for field filters
          attr_reader :filters
          # Attribute for field manual_entry
          attr_reader :manual_entry
          # The list of permissions to request. The `payment_method` permission must be included.
          attr_reader :permissions
          # Data features requested to be retrieved upon account creation.
          attr_reader :prefetch
          # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
          attr_reader :return_url
        end

        class MandateOptions < Stripe::StripeObject
          # Mandate collection method
          attr_reader :collection_method
        end
        # Attribute for field financial_connections
        attr_reader :financial_connections
        # Attribute for field mandate_options
        attr_reader :mandate_options
        # Preferred transaction settlement speed
        attr_reader :preferred_settlement_speed
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

      class Zip < Stripe::StripeObject
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
      # Attribute for field affirm
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      attr_reader :alipay
      # Attribute for field alma
      attr_reader :alma
      # Attribute for field amazon_pay
      attr_reader :amazon_pay
      # Attribute for field au_becs_debit
      attr_reader :au_becs_debit
      # Attribute for field bacs_debit
      attr_reader :bacs_debit
      # Attribute for field bancontact
      attr_reader :bancontact
      # Attribute for field blik
      attr_reader :blik
      # Attribute for field boleto
      attr_reader :boleto
      # Attribute for field card
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field cashapp
      attr_reader :cashapp
      # Attribute for field customer_balance
      attr_reader :customer_balance
      # Attribute for field eps
      attr_reader :eps
      # Attribute for field fpx
      attr_reader :fpx
      # Attribute for field giropay
      attr_reader :giropay
      # Attribute for field gopay
      attr_reader :gopay
      # Attribute for field grabpay
      attr_reader :grabpay
      # Attribute for field id_bank_transfer
      attr_reader :id_bank_transfer
      # Attribute for field ideal
      attr_reader :ideal
      # Attribute for field interac_present
      attr_reader :interac_present
      # Attribute for field kakao_pay
      attr_reader :kakao_pay
      # Attribute for field klarna
      attr_reader :klarna
      # Attribute for field konbini
      attr_reader :konbini
      # Attribute for field kr_card
      attr_reader :kr_card
      # Attribute for field link
      attr_reader :link
      # Attribute for field mb_way
      attr_reader :mb_way
      # Attribute for field mobilepay
      attr_reader :mobilepay
      # Attribute for field multibanco
      attr_reader :multibanco
      # Attribute for field naver_pay
      attr_reader :naver_pay
      # Attribute for field oxxo
      attr_reader :oxxo
      # Attribute for field p24
      attr_reader :p24
      # Attribute for field payco
      attr_reader :payco
      # Attribute for field paynow
      attr_reader :paynow
      # Attribute for field paypal
      attr_reader :paypal
      # Attribute for field payto
      attr_reader :payto
      # Attribute for field pix
      attr_reader :pix
      # Attribute for field promptpay
      attr_reader :promptpay
      # Attribute for field qris
      attr_reader :qris
      # Attribute for field rechnung
      attr_reader :rechnung
      # Attribute for field revolut_pay
      attr_reader :revolut_pay
      # Attribute for field samsung_pay
      attr_reader :samsung_pay
      # Attribute for field sepa_debit
      attr_reader :sepa_debit
      # Attribute for field shopeepay
      attr_reader :shopeepay
      # Attribute for field sofort
      attr_reader :sofort
      # Attribute for field swish
      attr_reader :swish
      # Attribute for field twint
      attr_reader :twint
      # Attribute for field us_bank_account
      attr_reader :us_bank_account
      # Attribute for field wechat_pay
      attr_reader :wechat_pay
      # Attribute for field zip
      attr_reader :zip
    end

    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          # Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
          attr_reader :approval_requested
          # If customer approval is required, they need to provide approval before this time.
          attr_reader :completes_at
        end
        # Attribute for field customer_notification
        attr_reader :customer_notification
      end
      # Attribute for field card
      attr_reader :card
      # Type of the payment method for which payment is in `processing` state, one of `card`.
      attr_reader :type
    end

    class Shipping < Stripe::StripeObject
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

    class TransferData < Stripe::StripeObject
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      attr_reader :amount
      # The account (if any) that the payment is attributed to for tax
      # reporting, and where funds from the payment are transferred to after
      # payment success.
      attr_reader :destination
    end
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_reader :amount

    # Amount that can be captured from this PaymentIntent.
    attr_reader :amount_capturable

    # Attribute for field amount_details
    attr_reader :amount_details

    # Amount that this PaymentIntent collects.
    attr_reader :amount_received

    # ID of the Connect application that created the PaymentIntent.
    attr_reader :application

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :application_fee_amount

    # Attribute for field async_workflows
    attr_reader :async_workflows

    # Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
    attr_reader :automatic_payment_methods

    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    attr_reader :canceled_at

    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
    attr_reader :cancellation_reason

    # Controls when the funds will be captured from the customer's account.
    attr_reader :capture_method

    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    attr_reader :client_secret

    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    attr_reader :confirmation_method

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency

    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    attr_reader :customer

    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description

    # Unique identifier for the object.
    attr_reader :id

    # ID of the invoice that created this PaymentIntent, if it exists.
    attr_reader :invoice

    # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
    attr_reader :last_payment_error

    # ID of the latest [Charge object](https://stripe.com/docs/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
    attr_reader :latest_charge

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Learn more about [storing information in metadata](https://stripe.com/docs/payments/payment-intents/creating-payment-intents#storing-information-in-metadata).
    attr_reader :metadata

    # If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
    attr_reader :next_action

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    attr_reader :on_behalf_of

    # Attribute for field payment_details
    attr_reader :payment_details

    # ID of the payment method used in this PaymentIntent.
    attr_reader :payment_method

    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this PaymentIntent.
    attr_reader :payment_method_configuration_details

    # Payment-method-specific configuration for this PaymentIntent.
    attr_reader :payment_method_options

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
    attr_reader :payment_method_types

    # If present, this property tells you about the processing state of the payment.
    attr_reader :processing

    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    attr_reader :receipt_email

    # ID of the review associated with this PaymentIntent, if any.
    attr_reader :review

    # Indicates whether confirmation for this PaymentIntent using a secret key is `required` or `optional`.
    attr_reader :secret_key_confirmation

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    attr_reader :setup_future_usage

    # Shipping information for this PaymentIntent.
    attr_reader :shipping

    # This is a legacy field that will be removed in the future. It is the ID of the Source object that is associated with this PaymentIntent, if one was supplied.
    attr_reader :source

    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_reader :statement_descriptor

    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_reader :statement_descriptor_suffix

    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    attr_reader :status

    # The data that automatically creates a Transfer after the payment finalizes. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :transfer_data

    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    attr_reader :transfer_group

    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    def apply_customer_balance(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/apply_customer_balance", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    def self.apply_customer_balance(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/apply_customer_balance", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def self.cancel(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    def capture(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/capture", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    def self.capture(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/capture", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://stripe.com/docs/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://stripe.com/docs/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    def self.confirm(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Creates a PaymentIntent object.
    #
    # After the PaymentIntent is created, attach a payment method and [confirm](https://stripe.com/docs/api/payment_intents/confirm)
    # to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flows
    # with the Payment Intents API.
    #
    # When you use confirm=true during creation, it's equivalent to creating
    # and confirming the PaymentIntent in the same call. You can use any parameters
    # available in the [confirm API](https://stripe.com/docs/api/payment_intents/confirm) when you supply
    # confirm=true.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_intents", params: params, opts: opts)
    end

    # Perform a decremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [decremental_authorization.status](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card-decremental_authorization)
    # must be available.
    #
    # Decremental authorizations decrease the authorized amount on your customer's card
    # to the new, lower amount provided. A single PaymentIntent can call this endpoint multiple times to further decrease the authorized amount.
    #
    # After decrement, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # The PaymentIntent will now be capturable up to the new authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 decremental or incremental authorization attempts, including declines.
    # After it's fully captured, a PaymentIntent can no longer be decremented.
    def decrement_authorization(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/decrement_authorization", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Perform a decremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [decremental_authorization.status](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card-decremental_authorization)
    # must be available.
    #
    # Decremental authorizations decrease the authorized amount on your customer's card
    # to the new, lower amount provided. A single PaymentIntent can call this endpoint multiple times to further decrease the authorized amount.
    #
    # After decrement, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # The PaymentIntent will now be capturable up to the new authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 decremental or incremental authorization attempts, including declines.
    # After it's fully captured, a PaymentIntent can no longer be decremented.
    def self.decrement_authorization(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/decrement_authorization", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
    # must be true.
    #
    # Incremental authorizations attempt to increase the authorized amount on
    # your customer's card to the new, higher amount provided. Similar to the
    # initial authorization, incremental authorizations can be declined. A
    # single PaymentIntent can call this endpoint multiple times to further
    # increase the authorized amount.
    #
    # If the incremental authorization succeeds, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://stripe.com/docs/terminal/features/incremental-authorizations).
    def increment_authorization(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/increment_authorization", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
    # must be true.
    #
    # Incremental authorizations attempt to increase the authorized amount on
    # your customer's card to the new, higher amount provided. Similar to the
    # initial authorization, incremental authorizations can be declined. A
    # single PaymentIntent can call this endpoint multiple times to further
    # increase the authorized amount.
    #
    # If the incremental authorization succeeds, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://stripe.com/docs/terminal/features/incremental-authorizations).
    def self.increment_authorization(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/increment_authorization", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentIntents.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_intents", params: filters, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_intents/search",
        params: params,
        opts: opts
      )
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Trigger an external action on a PaymentIntent.
    def trigger_action(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/test/payment_intents/%<intent>s/trigger_action", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Trigger an external action on a PaymentIntent.
    def self.trigger_action(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/test/payment_intents/%<intent>s/trigger_action", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Updates properties on a PaymentIntent object without confirming.
    #
    # Depending on which properties you update, you might need to confirm the
    # PaymentIntent again. For example, updating the payment_method
    # always requires you to confirm the PaymentIntent again. If you prefer to
    # update and confirm at the same time, we recommend updating properties through
    # the [confirm API](https://stripe.com/docs/api/payment_intents/confirm) instead.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a PaymentIntent object.
    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a PaymentIntent object.
    def self.verify_microdeposits(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end
  end
end
