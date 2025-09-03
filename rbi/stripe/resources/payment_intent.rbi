# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    class AmountDetails < Stripe::StripeObject
      class Tip < Stripe::StripeObject
        # Portion of the amount that corresponds to a tip.
        sig { returns(Integer) }
        def amount; end
      end
      # Attribute for field tip
      sig { returns(Tip) }
      def tip; end
    end
    class AutomaticPaymentMethods < Stripe::StripeObject
      # Controls whether this PaymentIntent will accept redirect-based payment methods.
      #
      # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
      sig { returns(String) }
      def allow_redirects; end
      # Automatically calculates compatible payment methods
      sig { returns(T::Boolean) }
      def enabled; end
    end
    class LastPaymentError < Stripe::StripeObject
      # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines) if they provide one.
      sig { returns(String) }
      def advice_code; end
      # For card errors, the ID of the failed charge.
      sig { returns(String) }
      def charge; end
      # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(String) }
      def code; end
      # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
      sig { returns(String) }
      def decline_code; end
      # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(String) }
      def doc_url; end
      # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
      sig { returns(String) }
      def message; end
      # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
      sig { returns(String) }
      def network_advice_code; end
      # For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
      sig { returns(String) }
      def network_decline_code; end
      # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
      sig { returns(String) }
      def param; end
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
      sig { returns(Stripe::PaymentIntent) }
      def payment_intent; end
      # PaymentMethod objects represent your customer's payment instruments.
      # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
      # Customer objects to store instrument details for future payments.
      #
      # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
      sig { returns(Stripe::PaymentMethod) }
      def payment_method; end
      # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
      sig { returns(String) }
      def payment_method_type; end
      # A URL to the request log entry in your dashboard.
      sig { returns(String) }
      def request_log_url; end
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
      sig { returns(Stripe::SetupIntent) }
      def setup_intent; end
      # Attribute for field source
      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      def source; end
      # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
      sig { returns(String) }
      def type; end
    end
    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        # The native data to be used with Alipay SDK you must redirect your customer to in order to authenticate the payment in an Android App.
        sig { returns(T.nilable(String)) }
        def native_data; end
        # The native URL you must redirect your customer to in order to authenticate the payment in an iOS App.
        sig { returns(T.nilable(String)) }
        def native_url; end
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        def return_url; end
        # The URL you must redirect your customer to in order to authenticate the payment.
        sig { returns(T.nilable(String)) }
        def url; end
      end
      class BoletoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the boleto expires.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
        sig { returns(T.nilable(String)) }
        def hosted_voucher_url; end
        # The boleto number.
        sig { returns(T.nilable(String)) }
        def number; end
        # The URL to the downloadable boleto voucher PDF.
        sig { returns(T.nilable(String)) }
        def pdf; end
      end
      class CardAwaitNotification < Stripe::StripeObject
        # The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
        sig { returns(T.nilable(Integer)) }
        def charge_attempt_at; end
        # For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
        sig { returns(T.nilable(T::Boolean)) }
        def customer_approval_required; end
      end
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The date (unix timestamp) when the QR code expires.
          sig { returns(Integer) }
          def expires_at; end
          # The image_url_png string used to render QR code
          sig { returns(String) }
          def image_url_png; end
          # The image_url_svg string used to render QR code
          sig { returns(String) }
          def image_url_svg; end
        end
        # The URL to the hosted Cash App Pay instructions page, which allows customers to view the QR code, and supports QR code refreshing on expiration.
        sig { returns(String) }
        def hosted_instructions_url; end
        # The url for mobile redirect based auth
        sig { returns(String) }
        def mobile_auth_url; end
        # Attribute for field qr_code
        sig { returns(QrCode) }
        def qr_code; end
      end
      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The account holder name
            sig { returns(String) }
            def account_holder_name; end
            # The ABA account number
            sig { returns(String) }
            def account_number; end
            # The account type
            sig { returns(String) }
            def account_type; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The bank name
            sig { returns(String) }
            def bank_name; end
            # The ABA routing number
            sig { returns(String) }
            def routing_number; end
          end
          class Iban < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The name of the person or business that owns the bank account
            sig { returns(String) }
            def account_holder_name; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The BIC/SWIFT code of the account.
            sig { returns(String) }
            def bic; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            # The IBAN of the account.
            sig { returns(String) }
            def iban; end
          end
          class SortCode < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The name of the person or business that owns the bank account
            sig { returns(String) }
            def account_holder_name; end
            # The account number
            sig { returns(String) }
            def account_number; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The six-digit sort code
            sig { returns(String) }
            def sort_code; end
          end
          class Spei < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The account holder name
            sig { returns(String) }
            def account_holder_name; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The three-digit bank code
            sig { returns(String) }
            def bank_code; end
            # The short banking institution name
            sig { returns(String) }
            def bank_name; end
            # The CLABE number
            sig { returns(String) }
            def clabe; end
          end
          class Swift < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The account holder name
            sig { returns(String) }
            def account_holder_name; end
            # The account number
            sig { returns(String) }
            def account_number; end
            # The account type
            sig { returns(String) }
            def account_type; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The bank name
            sig { returns(String) }
            def bank_name; end
            # The SWIFT code
            sig { returns(String) }
            def swift_code; end
          end
          class Zengin < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class BankAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            def account_holder_address; end
            # The account holder name
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            # The account number
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The bank account type. In Japan, this can only be `futsu` or `toza`.
            sig { returns(T.nilable(String)) }
            def account_type; end
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            def bank_address; end
            # The bank code of the account
            sig { returns(T.nilable(String)) }
            def bank_code; end
            # The bank name of the account
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The branch code of the account
            sig { returns(T.nilable(String)) }
            def branch_code; end
            # The branch name of the account
            sig { returns(T.nilable(String)) }
            def branch_name; end
          end
          # ABA Records contain U.S. bank account details per the ABA format.
          sig { returns(Aba) }
          def aba; end
          # Iban Records contain E.U. bank account details per the SEPA format.
          sig { returns(Iban) }
          def iban; end
          # Sort Code Records contain U.K. bank account details per the sort code format.
          sig { returns(SortCode) }
          def sort_code; end
          # SPEI Records contain Mexico bank account details per the SPEI format.
          sig { returns(Spei) }
          def spei; end
          # The payment networks supported by this FinancialAddress
          sig { returns(T::Array[String]) }
          def supported_networks; end
          # SWIFT Records contain U.S. bank account details per the SWIFT format.
          sig { returns(Swift) }
          def swift; end
          # The type of financial address
          sig { returns(String) }
          def type; end
          # Zengin Records contain Japan bank account details per the Zengin format.
          sig { returns(Zengin) }
          def zengin; end
        end
        # The remaining amount that needs to be transferred to complete the payment.
        sig { returns(T.nilable(Integer)) }
        def amount_remaining; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        # A list of financial addresses that can be used to fund the customer balance
        sig { returns(T::Array[FinancialAddress]) }
        def financial_addresses; end
        # A link to a hosted page that guides your customer through completing the transfer.
        sig { returns(T.nilable(String)) }
        def hosted_instructions_url; end
        # A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Type of bank transfer
        sig { returns(String) }
        def type; end
      end
      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            def confirmation_number; end
            # The payment code.
            sig { returns(String) }
            def payment_code; end
          end
          class Lawson < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            def confirmation_number; end
            # The payment code.
            sig { returns(String) }
            def payment_code; end
          end
          class Ministop < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            def confirmation_number; end
            # The payment code.
            sig { returns(String) }
            def payment_code; end
          end
          class Seicomart < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            def confirmation_number; end
            # The payment code.
            sig { returns(String) }
            def payment_code; end
          end
          # FamilyMart instruction details.
          sig { returns(T.nilable(Familymart)) }
          def familymart; end
          # Lawson instruction details.
          sig { returns(T.nilable(Lawson)) }
          def lawson; end
          # Ministop instruction details.
          sig { returns(T.nilable(Ministop)) }
          def ministop; end
          # Seicomart instruction details.
          sig { returns(T.nilable(Seicomart)) }
          def seicomart; end
        end
        # The timestamp at which the pending Konbini payment expires.
        sig { returns(Integer) }
        def expires_at; end
        # The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
        sig { returns(T.nilable(String)) }
        def hosted_voucher_url; end
        # Attribute for field stores
        sig { returns(Stores) }
        def stores; end
      end
      class MultibancoDisplayDetails < Stripe::StripeObject
        # Entity number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        def entity; end
        # The timestamp at which the Multibanco voucher expires.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # The URL for the hosted Multibanco voucher page, which allows customers to view a Multibanco voucher.
        sig { returns(T.nilable(String)) }
        def hosted_voucher_url; end
        # Reference number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        def reference; end
      end
      class OxxoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the OXXO voucher expires.
        sig { returns(T.nilable(Integer)) }
        def expires_after; end
        # The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
        sig { returns(T.nilable(String)) }
        def hosted_voucher_url; end
        # OXXO reference number.
        sig { returns(T.nilable(String)) }
        def number; end
      end
      class PaynowDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        def data; end
        # The URL to the hosted PayNow instructions page, which allows customers to view the PayNow QR code.
        sig { returns(T.nilable(String)) }
        def hosted_instructions_url; end
        # The image_url_png string used to render QR code
        sig { returns(String) }
        def image_url_png; end
        # The image_url_svg string used to render QR code
        sig { returns(String) }
        def image_url_svg; end
      end
      class PixDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        def data; end
        # The date (unix timestamp) when the PIX expires.
        sig { returns(Integer) }
        def expires_at; end
        # The URL to the hosted pix instructions page, which allows customers to view the pix QR code.
        sig { returns(String) }
        def hosted_instructions_url; end
        # The image_url_png string used to render png QR code
        sig { returns(String) }
        def image_url_png; end
        # The image_url_svg string used to render svg QR code
        sig { returns(String) }
        def image_url_svg; end
      end
      class PromptpayDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        def data; end
        # The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
        sig { returns(String) }
        def hosted_instructions_url; end
        # The PNG path used to render the QR code, can be used as the source in an HTML img tag
        sig { returns(String) }
        def image_url_png; end
        # The SVG path used to render the QR code, can be used as the source in an HTML img tag
        sig { returns(String) }
        def image_url_svg; end
      end
      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        def return_url; end
        # The URL you must redirect your customer to in order to authenticate the payment.
        sig { returns(T.nilable(String)) }
        def url; end
      end
      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The raw data string used to generate QR code, it should be used together with QR code library.
          sig { returns(String) }
          def data; end
          # The image_url_png string used to render QR code
          sig { returns(String) }
          def image_url_png; end
          # The image_url_svg string used to render QR code
          sig { returns(String) }
          def image_url_svg; end
        end
        # The URL to the hosted Swish instructions page, which allows customers to view the QR code.
        sig { returns(String) }
        def hosted_instructions_url; end
        # The url for mobile redirect based auth (for internal use only and not typically available in standard API requests).
        sig { returns(String) }
        def mobile_auth_url; end
        # Attribute for field qr_code
        sig { returns(QrCode) }
        def qr_code; end
      end
      class VerifyWithMicrodeposits < Stripe::StripeObject
        # The timestamp when the microdeposits are expected to land.
        sig { returns(Integer) }
        def arrival_date; end
        # The URL for the hosted verification page, which allows customers to verify their bank account.
        sig { returns(String) }
        def hosted_verification_url; end
        # The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
        sig { returns(T.nilable(String)) }
        def microdeposit_type; end
      end
      class WechatPayDisplayQrCode < Stripe::StripeObject
        # The data being used to generate QR code
        sig { returns(String) }
        def data; end
        # The URL to the hosted WeChat Pay instructions page, which allows customers to view the WeChat Pay QR code.
        sig { returns(String) }
        def hosted_instructions_url; end
        # The base64 image data for a pre-generated QR code
        sig { returns(String) }
        def image_data_url; end
        # The image_url_png string used to render QR code
        sig { returns(String) }
        def image_url_png; end
        # The image_url_svg string used to render QR code
        sig { returns(String) }
        def image_url_svg; end
      end
      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        # app_id is the APP ID registered on WeChat open platform
        sig { returns(String) }
        def app_id; end
        # nonce_str is a random string
        sig { returns(String) }
        def nonce_str; end
        # package is static value
        sig { returns(String) }
        def package; end
        # an unique merchant ID assigned by WeChat Pay
        sig { returns(String) }
        def partner_id; end
        # an unique trading ID assigned by WeChat Pay
        sig { returns(String) }
        def prepay_id; end
        # A signature
        sig { returns(String) }
        def sign; end
        # Specifies the current time in epoch format
        sig { returns(String) }
        def timestamp; end
      end
      class WechatPayRedirectToIosApp < Stripe::StripeObject
        # An universal link that redirect to WeChat Pay app
        sig { returns(String) }
        def native_url; end
      end
      # Attribute for field alipay_handle_redirect
      sig { returns(AlipayHandleRedirect) }
      def alipay_handle_redirect; end
      # Attribute for field boleto_display_details
      sig { returns(BoletoDisplayDetails) }
      def boleto_display_details; end
      # Attribute for field card_await_notification
      sig { returns(CardAwaitNotification) }
      def card_await_notification; end
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      def cashapp_handle_redirect_or_display_qr_code; end
      # Attribute for field display_bank_transfer_instructions
      sig { returns(DisplayBankTransferInstructions) }
      def display_bank_transfer_instructions; end
      # Attribute for field konbini_display_details
      sig { returns(KonbiniDisplayDetails) }
      def konbini_display_details; end
      # Attribute for field multibanco_display_details
      sig { returns(MultibancoDisplayDetails) }
      def multibanco_display_details; end
      # Attribute for field oxxo_display_details
      sig { returns(OxxoDisplayDetails) }
      def oxxo_display_details; end
      # Attribute for field paynow_display_qr_code
      sig { returns(PaynowDisplayQrCode) }
      def paynow_display_qr_code; end
      # Attribute for field pix_display_qr_code
      sig { returns(PixDisplayQrCode) }
      def pix_display_qr_code; end
      # Attribute for field promptpay_display_qr_code
      sig { returns(PromptpayDisplayQrCode) }
      def promptpay_display_qr_code; end
      # Attribute for field redirect_to_url
      sig { returns(RedirectToUrl) }
      def redirect_to_url; end
      # Attribute for field swish_handle_redirect_or_display_qr_code
      sig { returns(SwishHandleRedirectOrDisplayQrCode) }
      def swish_handle_redirect_or_display_qr_code; end
      # Type of the next action to perform. Refer to the other child attributes under `next_action` for available values. Examples include: `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      sig { returns(String) }
      def type; end
      # When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      sig { returns(T::Hash[String, T.untyped]) }
      def use_stripe_sdk; end
      # Attribute for field verify_with_microdeposits
      sig { returns(VerifyWithMicrodeposits) }
      def verify_with_microdeposits; end
      # Attribute for field wechat_pay_display_qr_code
      sig { returns(WechatPayDisplayQrCode) }
      def wechat_pay_display_qr_code; end
      # Attribute for field wechat_pay_redirect_to_android_app
      sig { returns(WechatPayRedirectToAndroidApp) }
      def wechat_pay_redirect_to_android_app; end
      # Attribute for field wechat_pay_redirect_to_ios_app
      sig { returns(WechatPayRedirectToIosApp) }
      def wechat_pay_redirect_to_ios_app; end
    end
    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      # ID of the payment method configuration used.
      sig { returns(String) }
      def id; end
      # ID of the parent payment method configuration used.
      sig { returns(T.nilable(String)) }
      def parent; end
    end
    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # A URL for custom mandate text
          sig { returns(String) }
          def custom_mandate_url; end
          # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
          sig { returns(T.nilable(String)) }
          def interval_description; end
          # Payment schedule for the mandate.
          sig { returns(T.nilable(String)) }
          def payment_schedule; end
          # Transaction type of the mandate.
          sig { returns(T.nilable(String)) }
          def transaction_type; end
        end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        def mandate_options; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
        # Bank account verification method.
        sig { returns(String) }
        def verification_method; end
      end
      class Affirm < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Preferred language of the Affirm authorization page that the customer is redirected to.
        sig { returns(String) }
        def preferred_locale; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class AfterpayClearpay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
        # This field differs from the statement descriptor and item name.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
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
        def setup_future_usage; end
      end
      class Alma < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
      end
      class AmazonPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
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
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
      end
      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
          sig { returns(String) }
          def reference_prefix; end
        end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        def mandate_options; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
      end
      class Bancontact < Stripe::StripeObject
        # Preferred language of the Bancontact authorization page that the customer is redirected to.
        sig { returns(String) }
        def preferred_language; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Billie < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
      end
      class Blik < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Boleto < Stripe::StripeObject
        # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto voucher will expire on Wednesday at 23:59 America/Sao_Paulo time.
        sig { returns(Integer) }
        def expires_after_days; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class AvailablePlan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            def count; end
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            def interval; end
            # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
            sig { returns(String) }
            def type; end
          end
          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            def count; end
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            def interval; end
            # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
            sig { returns(String) }
            def type; end
          end
          # Installment plans that may be selected for this PaymentIntent.
          sig { returns(T.nilable(T::Array[AvailablePlan])) }
          def available_plans; end
          # Whether Installments are enabled for this PaymentIntent.
          sig { returns(T::Boolean) }
          def enabled; end
          # Installment plan selected for this PaymentIntent.
          sig { returns(T.nilable(Plan)) }
          def plan; end
        end
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          sig { returns(Integer) }
          def amount; end
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          sig { returns(String) }
          def amount_type; end
          # A description of the mandate or subscription that is meant to be displayed to the customer.
          sig { returns(T.nilable(String)) }
          def description; end
          # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          sig { returns(T.nilable(Integer)) }
          def end_date; end
          # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
          sig { returns(String) }
          def interval; end
          # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          # Unique identifier for the mandate or subscription.
          sig { returns(String) }
          def reference; end
          # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
          sig { returns(Integer) }
          def start_date; end
          # Specifies the type of mandates supported. Possible values are `india`.
          sig { returns(T.nilable(T::Array[String])) }
          def supported_types; end
        end
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Installment details for this payment.
        #
        # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
        sig { returns(T.nilable(Installments)) }
        def installments; end
        # Configuration options for setting up an eMandate for cards issued in India.
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
        # Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
        sig { returns(T.nilable(String)) }
        def network; end
        # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
        sig { returns(String) }
        def request_extended_authorization; end
        # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
        sig { returns(String) }
        def request_incremental_authorization; end
        # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
        sig { returns(String) }
        def request_multicapture; end
        # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
        sig { returns(String) }
        def request_overcapture; end
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        sig { returns(T.nilable(String)) }
        def request_three_d_secure; end
        # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
        sig { returns(T::Boolean) }
        def require_cvc_recollection; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
        sig { returns(String) }
        def statement_descriptor_suffix_kana; end
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
        sig { returns(String) }
        def statement_descriptor_suffix_kanji; end
      end
      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          # Requested routing priority
          sig { returns(T.nilable(String)) }
          def requested_priority; end
        end
        # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
        sig { returns(T.nilable(T::Boolean)) }
        def request_extended_authorization; end
        # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
        sig { returns(T.nilable(T::Boolean)) }
        def request_incremental_authorization_support; end
        # Attribute for field routing
        sig { returns(Routing) }
        def routing; end
      end
      class Cashapp < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Crypto < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class CustomerBalance < Stripe::StripeObject
        class BankTransfer < Stripe::StripeObject
          class EuBankTransfer < Stripe::StripeObject
            # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
            sig { returns(String) }
            def country; end
          end
          # Attribute for field eu_bank_transfer
          sig { returns(EuBankTransfer) }
          def eu_bank_transfer; end
          # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
          #
          # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
          sig { returns(T::Array[String]) }
          def requested_address_types; end
          # The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
          sig { returns(T.nilable(String)) }
          def type; end
        end
        # Attribute for field bank_transfer
        sig { returns(BankTransfer) }
        def bank_transfer; end
        # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
        sig { returns(T.nilable(String)) }
        def funding_type; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
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
        def setup_future_usage; end
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
        def setup_future_usage; end
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
        def setup_future_usage; end
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
        def setup_future_usage; end
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
        def setup_future_usage; end
      end
      class InteracPresent < Stripe::StripeObject; end
      class KakaoPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Klarna < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Preferred locale of the Klarna checkout page that the customer is redirected to.
        sig { returns(T.nilable(String)) }
        def preferred_locale; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Konbini < Stripe::StripeObject
        # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores.
        sig { returns(T.nilable(String)) }
        def confirmation_number; end
        # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST.
        sig { returns(T.nilable(Integer)) }
        def expires_after_days; end
        # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
        sig { returns(T.nilable(String)) }
        def product_description; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class KrCard < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Link < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(T.nilable(String)) }
        def persistent_token; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Mobilepay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
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
        def setup_future_usage; end
      end
      class NaverPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class NzBankAccount < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
      end
      class Oxxo < Stripe::StripeObject
        # The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
        sig { returns(Integer) }
        def expires_after_days; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
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
        def setup_future_usage; end
      end
      class PayByBank < Stripe::StripeObject; end
      class Payco < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
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
        def setup_future_usage; end
      end
      class Paypal < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Preferred locale of the PayPal checkout page that the customer is redirected to.
        sig { returns(T.nilable(String)) }
        def preferred_locale; end
        # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Pix < Stripe::StripeObject
        # Determines if the amount includes the IOF tax.
        sig { returns(String) }
        def amount_includes_iof; end
        # The number of seconds (between 10 and 1209600) after which Pix payment will expire.
        sig { returns(T.nilable(Integer)) }
        def expires_after_seconds; end
        # The timestamp at which the Pix expires.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Promptpay < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class RevolutPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class SamsungPay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
      end
      class Satispay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        def capture_method; end
      end
      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
          sig { returns(String) }
          def reference_prefix; end
        end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        def mandate_options; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
      end
      class Sofort < Stripe::StripeObject
        # Preferred language of the SOFORT authorization page that the customer is redirected to.
        sig { returns(T.nilable(String)) }
        def preferred_language; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Swish < Stripe::StripeObject
        # A reference for this payment to be displayed in the Swish app.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Twint < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
            sig { returns(T::Array[String]) }
            def account_subcategories; end
          end
          # Attribute for field filters
          sig { returns(Filters) }
          def filters; end
          # The list of permissions to request. The `payment_method` permission must be included.
          sig { returns(T::Array[String]) }
          def permissions; end
          # Data features requested to be retrieved upon account creation.
          sig { returns(T.nilable(T::Array[String])) }
          def prefetch; end
          # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
          sig { returns(String) }
          def return_url; end
        end
        class MandateOptions < Stripe::StripeObject
          # Mandate collection method
          sig { returns(String) }
          def collection_method; end
        end
        # Attribute for field financial_connections
        sig { returns(FinancialConnections) }
        def financial_connections; end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        def mandate_options; end
        # Preferred transaction settlement speed
        sig { returns(String) }
        def preferred_settlement_speed; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        sig { returns(String) }
        def target_date; end
        # Bank account verification method.
        sig { returns(String) }
        def verification_method; end
      end
      class WechatPay < Stripe::StripeObject
        # The app ID registered with WeChat Pay. Only required when client is ios or android.
        sig { returns(T.nilable(String)) }
        def app_id; end
        # The client type that the end customer will pay from
        sig { returns(T.nilable(String)) }
        def client; end
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      class Zip < Stripe::StripeObject
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        sig { returns(String) }
        def setup_future_usage; end
      end
      # Attribute for field acss_debit
      sig { returns(AcssDebit) }
      def acss_debit; end
      # Attribute for field affirm
      sig { returns(Affirm) }
      def affirm; end
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      def afterpay_clearpay; end
      # Attribute for field alipay
      sig { returns(Alipay) }
      def alipay; end
      # Attribute for field alma
      sig { returns(Alma) }
      def alma; end
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      def amazon_pay; end
      # Attribute for field au_becs_debit
      sig { returns(AuBecsDebit) }
      def au_becs_debit; end
      # Attribute for field bacs_debit
      sig { returns(BacsDebit) }
      def bacs_debit; end
      # Attribute for field bancontact
      sig { returns(Bancontact) }
      def bancontact; end
      # Attribute for field billie
      sig { returns(Billie) }
      def billie; end
      # Attribute for field blik
      sig { returns(Blik) }
      def blik; end
      # Attribute for field boleto
      sig { returns(Boleto) }
      def boleto; end
      # Attribute for field card
      sig { returns(Card) }
      def card; end
      # Attribute for field card_present
      sig { returns(CardPresent) }
      def card_present; end
      # Attribute for field cashapp
      sig { returns(Cashapp) }
      def cashapp; end
      # Attribute for field crypto
      sig { returns(Crypto) }
      def crypto; end
      # Attribute for field customer_balance
      sig { returns(CustomerBalance) }
      def customer_balance; end
      # Attribute for field eps
      sig { returns(Eps) }
      def eps; end
      # Attribute for field fpx
      sig { returns(Fpx) }
      def fpx; end
      # Attribute for field giropay
      sig { returns(Giropay) }
      def giropay; end
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      def grabpay; end
      # Attribute for field ideal
      sig { returns(Ideal) }
      def ideal; end
      # Attribute for field interac_present
      sig { returns(InteracPresent) }
      def interac_present; end
      # Attribute for field kakao_pay
      sig { returns(KakaoPay) }
      def kakao_pay; end
      # Attribute for field klarna
      sig { returns(Klarna) }
      def klarna; end
      # Attribute for field konbini
      sig { returns(Konbini) }
      def konbini; end
      # Attribute for field kr_card
      sig { returns(KrCard) }
      def kr_card; end
      # Attribute for field link
      sig { returns(Link) }
      def link; end
      # Attribute for field mobilepay
      sig { returns(Mobilepay) }
      def mobilepay; end
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      def multibanco; end
      # Attribute for field naver_pay
      sig { returns(NaverPay) }
      def naver_pay; end
      # Attribute for field nz_bank_account
      sig { returns(NzBankAccount) }
      def nz_bank_account; end
      # Attribute for field oxxo
      sig { returns(Oxxo) }
      def oxxo; end
      # Attribute for field p24
      sig { returns(P24) }
      def p24; end
      # Attribute for field pay_by_bank
      sig { returns(PayByBank) }
      def pay_by_bank; end
      # Attribute for field payco
      sig { returns(Payco) }
      def payco; end
      # Attribute for field paynow
      sig { returns(Paynow) }
      def paynow; end
      # Attribute for field paypal
      sig { returns(Paypal) }
      def paypal; end
      # Attribute for field pix
      sig { returns(Pix) }
      def pix; end
      # Attribute for field promptpay
      sig { returns(Promptpay) }
      def promptpay; end
      # Attribute for field revolut_pay
      sig { returns(RevolutPay) }
      def revolut_pay; end
      # Attribute for field samsung_pay
      sig { returns(SamsungPay) }
      def samsung_pay; end
      # Attribute for field satispay
      sig { returns(Satispay) }
      def satispay; end
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      def sepa_debit; end
      # Attribute for field sofort
      sig { returns(Sofort) }
      def sofort; end
      # Attribute for field swish
      sig { returns(Swish) }
      def swish; end
      # Attribute for field twint
      sig { returns(Twint) }
      def twint; end
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      def us_bank_account; end
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      def wechat_pay; end
      # Attribute for field zip
      sig { returns(Zip) }
      def zip; end
    end
    class PresentmentDetails < Stripe::StripeObject
      # Amount intended to be collected by this payment, denominated in `presentment_currency`.
      sig { returns(Integer) }
      def presentment_amount; end
      # Currency presented to the customer during payment.
      sig { returns(String) }
      def presentment_currency; end
    end
    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          # Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
          sig { returns(T.nilable(T::Boolean)) }
          def approval_requested; end
          # If customer approval is required, they need to provide approval before this time.
          sig { returns(T.nilable(Integer)) }
          def completes_at; end
        end
        # Attribute for field customer_notification
        sig { returns(CustomerNotification) }
        def customer_notification; end
      end
      # Attribute for field card
      sig { returns(Card) }
      def card; end
      # Type of the payment method for which payment is in `processing` state, one of `card`.
      sig { returns(String) }
      def type; end
    end
    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
      end
      # Attribute for field address
      sig { returns(Address) }
      def address; end
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      sig { returns(T.nilable(String)) }
      def carrier; end
      # Recipient name.
      sig { returns(String) }
      def name; end
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      def phone; end
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      sig { returns(T.nilable(String)) }
      def tracking_number; end
    end
    class TransferData < Stripe::StripeObject
      # The amount transferred to the destination account. This transfer will occur automatically after the payment succeeds. If no amount is specified, by default the entire payment amount is transferred to the destination account.
      #  The amount must be less than or equal to the [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount), and must be a positive integer
      #  representing how much to transfer in the smallest currency unit (e.g., 100 cents to charge $1.00).
      sig { returns(Integer) }
      def amount; end
      # The account (if any) that the payment is attributed to for tax reporting, and where funds from the payment are transferred to after payment success.
      sig { returns(T.any(String, Stripe::Account)) }
      def destination; end
    end
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    sig { returns(Integer) }
    def amount; end
    # Amount that can be captured from this PaymentIntent.
    sig { returns(Integer) }
    def amount_capturable; end
    # Attribute for field amount_details
    sig { returns(AmountDetails) }
    def amount_details; end
    # Amount that this PaymentIntent collects.
    sig { returns(Integer) }
    def amount_received; end
    # ID of the Connect application that created the PaymentIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    def application; end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    # Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    def automatic_payment_methods; end
    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def canceled_at; end
    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, `automatic`, or `expired`).
    sig { returns(T.nilable(String)) }
    def cancellation_reason; end
    # Controls when the funds will be captured from the customer's account.
    sig { returns(String) }
    def capture_method; end
    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    sig { returns(T.nilable(String)) }
    def client_secret; end
    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    sig { returns(String) }
    def confirmation_method; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    def customer; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # The list of payment method types to exclude from use with this payment.
    sig { returns(T.nilable(T::Array[String])) }
    def excluded_payment_method_types; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
    sig { returns(T.nilable(LastPaymentError)) }
    def last_payment_error; end
    # ID of the latest [Charge object](https://stripe.com/docs/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    def latest_charge; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Learn more about [storing information in metadata](https://stripe.com/docs/payments/payment-intents/creating-payment-intents#storing-information-in-metadata).
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
    sig { returns(T.nilable(NextAction)) }
    def next_action; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    def on_behalf_of; end
    # ID of the payment method used in this PaymentIntent.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    def payment_method; end
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this PaymentIntent.
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    def payment_method_configuration_details; end
    # Payment-method-specific configuration for this PaymentIntent.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    def payment_method_options; end
    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. A comprehensive list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
    sig { returns(T::Array[String]) }
    def payment_method_types; end
    # Attribute for field presentment_details
    sig { returns(PresentmentDetails) }
    def presentment_details; end
    # If present, this property tells you about the processing state of the payment.
    sig { returns(T.nilable(Processing)) }
    def processing; end
    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    sig { returns(T.nilable(String)) }
    def receipt_email; end
    # ID of the review associated with this PaymentIntent, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    def review; end
    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    sig { returns(T.nilable(String)) }
    def setup_future_usage; end
    # Shipping information for this PaymentIntent.
    sig { returns(T.nilable(Shipping)) }
    def shipping; end
    # This is a legacy field that will be removed in the future. It is the ID of the Source object that is associated with this PaymentIntent, if one was supplied.
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    def source; end
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    sig { returns(T.nilable(String)) }
    def statement_descriptor_suffix; end
    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    sig { returns(String) }
    def status; end
    # The data that automatically creates a Transfer after the payment finalizes. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(TransferData)) }
    def transfer_data; end
    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    sig { returns(T.nilable(String)) }
    def transfer_group; end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp or a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::PaymentIntent::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::PaymentIntent::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::PaymentIntent::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return PaymentIntents for the customer that this customer ID specifies.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::PaymentIntent::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this PaymentIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
        sig { returns(T.nilable(String)) }
        def allow_redirects; end
        sig { params(_allow_redirects: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redirects=(_allow_redirects); end
        # Whether this feature is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        sig { params(allow_redirects: T.nilable(String), enabled: T::Boolean).void }
        def initialize(allow_redirects: nil, enabled: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams; end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            def ip_address; end
            sig { params(_ip_address: String).returns(String) }
            def ip_address=(_ip_address); end
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            def user_agent; end
            sig { params(_user_agent: String).returns(String) }
            def user_agent=(_user_agent); end
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(T.nilable(Integer)) }
          def accepted_at; end
          sig { params(_accepted_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def accepted_at=(_accepted_at); end
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline=(_offline); end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          def online=(_online); end
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance) }
        def customer_acceptance; end
        sig {
          params(_customer_acceptance: ::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance).returns(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance)
         }
        def customer_acceptance=(_customer_acceptance); end
        sig {
          params(customer_acceptance: ::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Institution number of the customer's bank.
          sig { returns(String) }
          def institution_number; end
          sig { params(_institution_number: String).returns(String) }
          def institution_number=(_institution_number); end
          # Transit number of the customer's bank.
          sig { returns(String) }
          def transit_number; end
          sig { params(_transit_number: String).returns(String) }
          def transit_number=(_transit_number); end
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          def bsb_number; end
          sig { params(_bsb_number: String).returns(String) }
          def bsb_number=(_bsb_number); end
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          def sort_code; end
          sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
          def sort_code=(_sort_code); end
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Billing address.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address=(_address); end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          def tax_id; end
          sig { params(_tax_id: String).returns(String) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # The customer's bank.
          sig { returns(String) }
          def bank; end
          sig { params(_bank: String).returns(String) }
          def bank=(_bank); end
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          def funding; end
          sig { params(_funding: T.nilable(String)).returns(T.nilable(String)) }
          def funding=(_funding); end
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_name=(_account_holder_name); end
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          def bank_code; end
          sig { params(_bank_code: String).returns(String) }
          def bank_code=(_bank_code); end
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          def branch_code; end
          sig { params(_branch_code: String).returns(String) }
          def branch_code=(_branch_code); end
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The suffix of the bank account number.
          sig { returns(String) }
          def suffix; end
          sig { params(_suffix: String).returns(String) }
          def suffix=(_suffix); end
          sig {
            params(account_holder_name: T.nilable(String), account_number: String, bank_code: String, branch_code: String, reference: T.nilable(String), suffix: String).void
           }
          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          ); end
        end
        class Oxxo < Stripe::RequestParams; end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          def iban; end
          sig { params(_iban: String).returns(String) }
          def iban=(_iban); end
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          def account_type; end
          sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_type=(_account_type); end
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          def financial_connections_account; end
          sig {
            params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
           }
          def financial_connections_account=(_financial_connections_account); end
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_routing_number); end
          sig {
            params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams; end
        class Zip < Stripe::RequestParams; end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm)) }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay)) }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Billie)) }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto)) }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Crypto)) }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna)) }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard)) }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow)) }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal)) }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Satispay))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort)) }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip)).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            def custom_mandate_url; end
            sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
            def custom_mandate_url=(_custom_mandate_url); end
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            def interval_description; end
            sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
            def interval_description=(_interval_description); end
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            def transaction_type; end
            sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_type=(_transaction_type); end
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_language; end
          sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              def count; end
              sig { params(_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def count=(_count); end
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              def interval; end
              sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
              def interval=(_interval); end
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            def enabled; end
            sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def enabled=(_enabled); end
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan; end
            sig {
              params(_plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan=(_plan); end
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            def amount_type; end
            sig { params(_amount_type: String).returns(String) }
            def amount_type=(_amount_type); end
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            def end_date; end
            sig { params(_end_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def end_date=(_end_date); end
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            def start_date; end
            sig { params(_start_date: Integer).returns(Integer) }
            def start_date=(_start_date); end
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            def supported_types; end
            sig {
              params(_supported_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def supported_types=(_supported_types); end
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                def cb_avalgo; end
                sig { params(_cb_avalgo: String).returns(String) }
                def cb_avalgo=(_cb_avalgo); end
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                def cb_exemption; end
                sig { params(_cb_exemption: T.nilable(String)).returns(T.nilable(String)) }
                def cb_exemption=(_cb_exemption); end
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                def cb_score; end
                sig { params(_cb_score: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def cb_score=(_cb_score); end
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            def ares_trans_status; end
            sig { params(_ares_trans_status: T.nilable(String)).returns(T.nilable(String)) }
            def ares_trans_status=(_ares_trans_status); end
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            def cryptogram; end
            sig { params(_cryptogram: String).returns(String) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            def exemption_indicator; end
            sig { params(_exemption_indicator: T.nilable(String)).returns(T.nilable(String)) }
            def exemption_indicator=(_exemption_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options=(_network_options); end
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            def requestor_challenge_indicator; end
            sig {
              params(_requestor_challenge_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def requestor_challenge_indicator=(_requestor_challenge_indicator); end
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            def transaction_id; end
            sig { params(_transaction_id: String).returns(String) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            def version; end
            sig { params(_version: String).returns(String) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          def cvc_token; end
          sig { params(_cvc_token: T.nilable(String)).returns(T.nilable(String)) }
          def cvc_token=(_cvc_token); end
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments; end
          sig {
            params(_installments: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments=(_installments); end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_incremental_authorization; end
          sig {
            params(_request_incremental_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_incremental_authorization=(_request_incremental_authorization); end
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_multicapture; end
          sig { params(_request_multicapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_multicapture=(_request_multicapture); end
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_overcapture; end
          sig { params(_request_overcapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_overcapture=(_request_overcapture); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          def require_cvc_recollection; end
          sig {
            params(_require_cvc_recollection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def require_cvc_recollection=(_require_cvc_recollection); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kana; end
          sig {
            params(_statement_descriptor_suffix_kana: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kana=(_statement_descriptor_suffix_kana); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kanji; end
          sig {
            params(_statement_descriptor_suffix_kanji: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kanji=(_statement_descriptor_suffix_kanji); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            def requested_priority; end
            sig { params(_requested_priority: T.nilable(String)).returns(T.nilable(String)) }
            def requested_priority=(_requested_priority); end
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          def request_incremental_authorization_support; end
          sig {
            params(_request_incremental_authorization_support: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_incremental_authorization_support=(
            _request_incremental_authorization_support
          ); end
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing; end
          sig {
            params(_routing: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing=(_routing); end
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer; end
            sig {
              params(_eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer=(_eu_bank_transfer); end
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            def requested_address_types; end
            sig {
              params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested_address_types=(_requested_address_types); end
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer; end
          sig {
            params(_bank_transfer: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer=(_bank_transfer); end
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          def funding_type; end
          sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
          def funding_type=(_funding_type); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def average_amount; end
            sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def average_amount=(_average_amount); end
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def maximum_amount; end
            sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def maximum_amount=(_maximum_amount); end
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def minimum_amount; end
            sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minimum_amount=(_minimum_amount); end
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            def purchase_interval; end
            sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_interval=(_purchase_interval); end
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            def purchase_interval_count; end
            sig { params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def purchase_interval_count=(_purchase_interval_count); end
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              def date; end
              sig { params(_date: String).returns(String) }
              def date=(_date); end
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing; end
            sig {
              params(_next_billing: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          def confirmation_number; end
          sig { params(_confirmation_number: T.nilable(String)).returns(T.nilable(String)) }
          def confirmation_number=(_confirmation_number); end
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_after_days; end
          sig {
            params(_expires_after_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_after_days=(_expires_after_days); end
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_at; end
          sig {
            params(_expires_at: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_at=(_expires_at); end
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          def product_description; end
          sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
          def product_description=(_product_description); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          def tos_shown_and_accepted; end
          sig {
            params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def tos_shown_and_accepted=(_tos_shown_and_accepted); end
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          def risk_correlation_id; end
          sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
          def risk_correlation_id=(_risk_correlation_id); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
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
          def amount_includes_iof; end
          sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
          def amount_includes_iof=(_amount_includes_iof); end
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          def expires_after_seconds; end
          sig { params(_expires_after_seconds: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_seconds=(_expires_after_seconds); end
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          def expires_at; end
          sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_at=(_expires_at); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_language; end
          sig {
            params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              def account_subcategories; end
              sig {
                params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def account_subcategories=(_account_subcategories); end
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            def permissions; end
            sig {
              params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def permissions=(_permissions); end
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            def prefetch; end
            sig {
              params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def prefetch=(_prefetch); end
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            def return_url; end
            sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
            def return_url=(_return_url); end
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            def collection_method; end
            sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
            def collection_method=(_collection_method); end
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T.nilable(T::Array[String])) }
            def requested; end
            sig {
              params(_requested: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested=(_requested); end
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_settlement_speed; end
          sig {
            params(_preferred_settlement_speed: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_settlement_speed=(_preferred_settlement_speed); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          def app_id; end
          sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
          def app_id=(_app_id); end
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          def client; end
          sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
          def client=(_client); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm)))
         }
        def affirm; end
        sig {
          params(_affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm)))
         }
        def affirm=(_affirm); end
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay)))
         }
        def alipay; end
        sig {
          params(_alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay)))
         }
        def alipay=(_alipay); end
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma)))
         }
        def alma; end
        sig {
          params(_alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma)))
         }
        def alma=(_alma); end
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Billie)))
         }
        def billie; end
        sig {
          params(_billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Billie))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Billie)))
         }
        def billie=(_billie); end
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik)))
         }
        def blik; end
        sig {
          params(_blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik)))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto)))
         }
        def boleto; end
        sig {
          params(_boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto)))
         }
        def boleto=(_boleto); end
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card)))
         }
        def card; end
        sig {
          params(_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card)))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present=(_card_present); end
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp=(_cashapp); end
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Crypto)))
         }
        def crypto; end
        sig {
          params(_crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Crypto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Crypto)))
         }
        def crypto=(_crypto); end
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance=(_customer_balance); end
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps)))
         }
        def eps; end
        sig {
          params(_eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps)))
         }
        def eps=(_eps); end
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx)))
         }
        def fpx; end
        sig {
          params(_fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx)))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay)))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay)))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay=(_grabpay); end
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal)))
         }
        def ideal; end
        sig {
          params(_ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal)))
         }
        def ideal=(_ideal); end
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna)))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna)))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini)))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini)))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card=(_kr_card); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link)))
         }
        def link; end
        sig {
          params(_link: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link)))
         }
        def link=(_link); end
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay=(_naver_pay); end
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NzBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24)))
         }
        def p24; end
        sig {
          params(_p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24)))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco)))
         }
        def payco; end
        sig {
          params(_payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco)))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow)))
         }
        def paynow; end
        sig {
          params(_paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow)))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal)))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal)))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix)))
         }
        def pix; end
        sig {
          params(_pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix)))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay=(_promptpay); end
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Satispay)))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Satispay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Satispay)))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort)))
         }
        def sofort; end
        sig {
          params(_sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort)))
         }
        def sofort=(_sofort); end
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish)))
         }
        def swish; end
        sig {
          params(_swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish)))
         }
        def swish=(_swish); end
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint)))
         }
        def twint; end
        sig {
          params(_twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint)))
         }
        def twint=(_twint); end
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip)))
         }
        def zip; end
        sig {
          params(_zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip)))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        def session; end
        sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
        def session=(_session); end
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        sig { returns(::Stripe::PaymentIntent::CreateParams::Shipping::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::PaymentIntent::CreateParams::Shipping::Address).returns(::Stripe::PaymentIntent::CreateParams::Shipping::Address)
         }
        def address=(_address); end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_tracking_number); end
        sig {
          params(address: ::Stripe::PaymentIntent::CreateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        # The amount is capped at the total transaction amount and if no amount is set,
        # the full amount is transferred.
        #
        # If you intend to collect a fee and you need a more robust reporting experience, using
        # [application_fee_amount](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-application_fee_amount)
        # might be a better fit for your integration.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # If specified, successful charges will be attributed to the destination
        # account for tax reporting, and the funds from charges will be transferred
        # to the destination account. The ID of the resulting transfer will be
        # returned on the successful charge's `transfer` field.
        sig { returns(String) }
        def destination; end
        sig { params(_destination: String).returns(String) }
        def destination=(_destination); end
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      def amount; end
      sig { params(_amount: Integer).returns(Integer) }
      def amount=(_amount); end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      def application_fee_amount; end
      sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee_amount=(_application_fee_amount); end
      # When you enable this parameter, this PaymentIntent accepts payment methods that you enable in the Dashboard and that are compatible with this PaymentIntent's other parameters.
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods)) }
      def automatic_payment_methods; end
      sig {
        params(_automatic_payment_methods: T.nilable(::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods))
       }
      def automatic_payment_methods=(_automatic_payment_methods); end
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      def capture_method; end
      sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
      def capture_method=(_capture_method); end
      # Set to `true` to attempt to [confirm this PaymentIntent](https://stripe.com/docs/api/payment_intents/confirm) immediately. This parameter defaults to `false`. When creating and confirming a PaymentIntent at the same time, you can also provide the parameters available in the [Confirm API](https://stripe.com/docs/api/payment_intents/confirm).
      sig { returns(T.nilable(T::Boolean)) }
      def confirm; end
      sig { params(_confirm: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def confirm=(_confirm); end
      # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
      sig { returns(T.nilable(String)) }
      def confirmation_method; end
      sig { params(_confirmation_method: T.nilable(String)).returns(T.nilable(String)) }
      def confirmation_method=(_confirmation_method); end
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      def confirmation_token; end
      sig { params(_confirmation_token: T.nilable(String)).returns(T.nilable(String)) }
      def confirmation_token=(_confirmation_token); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. Use this parameter for simpler integrations that don't handle customer actions, such as [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(T::Boolean)) }
      def error_on_requires_action; end
      sig {
        params(_error_on_requires_action: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
       }
      def error_on_requires_action=(_error_on_requires_action); end
      # The list of payment method types to exclude from use with this payment.
      sig { returns(T.nilable(T::Array[String])) }
      def excluded_payment_method_types; end
      sig {
        params(_excluded_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def excluded_payment_method_types=(_excluded_payment_method_types); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the mandate that's used for this payment. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(String)) }
      def mandate; end
      sig { params(_mandate: T.nilable(String)).returns(T.nilable(String)) }
      def mandate=(_mandate); end
      # This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::MandateData))) }
      def mandate_data; end
      sig {
        params(_mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::MandateData))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::MandateData)))
       }
      def mandate_data=(_mandate_data); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(T.any(T::Boolean, String))) }
      def off_session; end
      sig {
        params(_off_session: T.nilable(T.any(T::Boolean, String))).returns(T.nilable(T.any(T::Boolean, String)))
       }
      def off_session=(_off_session); end
      # The Stripe account ID that these funds are intended for. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods#compatibility) object) to attach to this PaymentIntent.
      #
      # If you don't provide the `payment_method` parameter or the `source` parameter with `confirm=true`, `source` automatically populates with `customer.default_source` to improve migration for users of the Charges API. We recommend that you explicitly provide the `payment_method` moving forward.
      # If the payment method is attached to a Customer, you must also provide the ID of that Customer as the [customer](https://stripe.com/docs/api#create_payment_intent-customer) parameter of this PaymentIntent.
      # end
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(T.nilable(String)) }
      def payment_method_configuration; end
      sig { params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_configuration=(_payment_method_configuration); end
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The list of payment method types (for example, a card) that this PaymentIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      def payment_method_types; end
      sig {
        params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def payment_method_types=(_payment_method_types); end
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::RadarOptions)) }
      def radar_options; end
      sig {
        params(_radar_options: T.nilable(::Stripe::PaymentIntent::CreateParams::RadarOptions)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::RadarOptions))
       }
      def radar_options=(_radar_options); end
      # Email address to send the receipt to. If you specify `receipt_email` for a payment in live mode, you send a receipt regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # Indicates that you intend to make future payments with this PaymentIntent's payment method.
      #
      # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
      #
      # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
      #
      # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
      def setup_future_usage=(_setup_future_usage); end
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::Shipping)) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(::Stripe::PaymentIntent::CreateParams::Shipping)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::Shipping))
       }
      def shipping=(_shipping); end
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      def statement_descriptor_suffix; end
      sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor_suffix=(_statement_descriptor_suffix); end
      # The parameters that you can use to automatically create a Transfer.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::PaymentIntent::CreateParams::TransferData)).returns(T.nilable(::Stripe::PaymentIntent::CreateParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk; end
      sig { params(_use_stripe_sdk: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk=(_use_stripe_sdk); end
      sig {
        params(amount: Integer, application_fee_amount: T.nilable(Integer), automatic_payment_methods: T.nilable(::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods), capture_method: T.nilable(String), confirm: T.nilable(T::Boolean), confirmation_method: T.nilable(String), confirmation_token: T.nilable(String), currency: String, customer: T.nilable(String), description: T.nilable(String), error_on_requires_action: T.nilable(T::Boolean), excluded_payment_method_types: T.nilable(T::Array[String]), expand: T.nilable(T::Array[String]), mandate: T.nilable(String), mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntent::CreateParams::MandateData)), metadata: T.nilable(T::Hash[String, String]), off_session: T.nilable(T.any(T::Boolean, String)), on_behalf_of: T.nilable(String), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), radar_options: T.nilable(::Stripe::PaymentIntent::CreateParams::RadarOptions), receipt_email: T.nilable(String), return_url: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::PaymentIntent::CreateParams::Shipping), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntent::CreateParams::TransferData), transfer_group: T.nilable(String), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        automatic_payment_methods: nil,
        capture_method: nil,
        confirm: nil,
        confirmation_method: nil,
        confirmation_token: nil,
        currency: nil,
        customer: nil,
        description: nil,
        error_on_requires_action: nil,
        excluded_payment_method_types: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        metadata: nil,
        off_session: nil,
        on_behalf_of: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        radar_options: nil,
        receipt_email: nil,
        return_url: nil,
        setup_future_usage: nil,
        shipping: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil,
        use_stripe_sdk: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Institution number of the customer's bank.
          sig { returns(String) }
          def institution_number; end
          sig { params(_institution_number: String).returns(String) }
          def institution_number=(_institution_number); end
          # Transit number of the customer's bank.
          sig { returns(String) }
          def transit_number; end
          sig { params(_transit_number: String).returns(String) }
          def transit_number=(_transit_number); end
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          def bsb_number; end
          sig { params(_bsb_number: String).returns(String) }
          def bsb_number=(_bsb_number); end
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          def sort_code; end
          sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
          def sort_code=(_sort_code); end
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Billing address.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address=(_address); end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          def tax_id; end
          sig { params(_tax_id: String).returns(String) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # The customer's bank.
          sig { returns(String) }
          def bank; end
          sig { params(_bank: String).returns(String) }
          def bank=(_bank); end
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          def funding; end
          sig { params(_funding: T.nilable(String)).returns(T.nilable(String)) }
          def funding=(_funding); end
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_name=(_account_holder_name); end
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          def bank_code; end
          sig { params(_bank_code: String).returns(String) }
          def bank_code=(_bank_code); end
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          def branch_code; end
          sig { params(_branch_code: String).returns(String) }
          def branch_code=(_branch_code); end
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The suffix of the bank account number.
          sig { returns(String) }
          def suffix; end
          sig { params(_suffix: String).returns(String) }
          def suffix=(_suffix); end
          sig {
            params(account_holder_name: T.nilable(String), account_number: String, bank_code: String, branch_code: String, reference: T.nilable(String), suffix: String).void
           }
          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          ); end
        end
        class Oxxo < Stripe::RequestParams; end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          def iban; end
          sig { params(_iban: String).returns(String) }
          def iban=(_iban); end
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          def account_type; end
          sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_type=(_account_type); end
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          def financial_connections_account; end
          sig {
            params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
           }
          def financial_connections_account=(_financial_connections_account); end
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_routing_number); end
          sig {
            params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams; end
        class Zip < Stripe::RequestParams; end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm)) }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay)) }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Billie)) }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto)) }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Crypto)) }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna)) }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard)) }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow)) }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal)) }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Satispay))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort)) }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip)).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            def custom_mandate_url; end
            sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
            def custom_mandate_url=(_custom_mandate_url); end
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            def interval_description; end
            sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
            def interval_description=(_interval_description); end
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            def transaction_type; end
            sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_type=(_transaction_type); end
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_language; end
          sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              def count; end
              sig { params(_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def count=(_count); end
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              def interval; end
              sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
              def interval=(_interval); end
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            def enabled; end
            sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def enabled=(_enabled); end
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan; end
            sig {
              params(_plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan=(_plan); end
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            def amount_type; end
            sig { params(_amount_type: String).returns(String) }
            def amount_type=(_amount_type); end
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            def end_date; end
            sig { params(_end_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def end_date=(_end_date); end
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            def start_date; end
            sig { params(_start_date: Integer).returns(Integer) }
            def start_date=(_start_date); end
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            def supported_types; end
            sig {
              params(_supported_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def supported_types=(_supported_types); end
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                def cb_avalgo; end
                sig { params(_cb_avalgo: String).returns(String) }
                def cb_avalgo=(_cb_avalgo); end
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                def cb_exemption; end
                sig { params(_cb_exemption: T.nilable(String)).returns(T.nilable(String)) }
                def cb_exemption=(_cb_exemption); end
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                def cb_score; end
                sig { params(_cb_score: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def cb_score=(_cb_score); end
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            def ares_trans_status; end
            sig { params(_ares_trans_status: T.nilable(String)).returns(T.nilable(String)) }
            def ares_trans_status=(_ares_trans_status); end
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            def cryptogram; end
            sig { params(_cryptogram: String).returns(String) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            def exemption_indicator; end
            sig { params(_exemption_indicator: T.nilable(String)).returns(T.nilable(String)) }
            def exemption_indicator=(_exemption_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options=(_network_options); end
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            def requestor_challenge_indicator; end
            sig {
              params(_requestor_challenge_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def requestor_challenge_indicator=(_requestor_challenge_indicator); end
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            def transaction_id; end
            sig { params(_transaction_id: String).returns(String) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            def version; end
            sig { params(_version: String).returns(String) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          def cvc_token; end
          sig { params(_cvc_token: T.nilable(String)).returns(T.nilable(String)) }
          def cvc_token=(_cvc_token); end
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments; end
          sig {
            params(_installments: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments=(_installments); end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_incremental_authorization; end
          sig {
            params(_request_incremental_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_incremental_authorization=(_request_incremental_authorization); end
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_multicapture; end
          sig { params(_request_multicapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_multicapture=(_request_multicapture); end
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_overcapture; end
          sig { params(_request_overcapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_overcapture=(_request_overcapture); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          def require_cvc_recollection; end
          sig {
            params(_require_cvc_recollection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def require_cvc_recollection=(_require_cvc_recollection); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kana; end
          sig {
            params(_statement_descriptor_suffix_kana: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kana=(_statement_descriptor_suffix_kana); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kanji; end
          sig {
            params(_statement_descriptor_suffix_kanji: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kanji=(_statement_descriptor_suffix_kanji); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            def requested_priority; end
            sig { params(_requested_priority: T.nilable(String)).returns(T.nilable(String)) }
            def requested_priority=(_requested_priority); end
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          def request_incremental_authorization_support; end
          sig {
            params(_request_incremental_authorization_support: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_incremental_authorization_support=(
            _request_incremental_authorization_support
          ); end
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing; end
          sig {
            params(_routing: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing=(_routing); end
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer; end
            sig {
              params(_eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer=(_eu_bank_transfer); end
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            def requested_address_types; end
            sig {
              params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested_address_types=(_requested_address_types); end
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer; end
          sig {
            params(_bank_transfer: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer=(_bank_transfer); end
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          def funding_type; end
          sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
          def funding_type=(_funding_type); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def average_amount; end
            sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def average_amount=(_average_amount); end
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def maximum_amount; end
            sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def maximum_amount=(_maximum_amount); end
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def minimum_amount; end
            sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minimum_amount=(_minimum_amount); end
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            def purchase_interval; end
            sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_interval=(_purchase_interval); end
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            def purchase_interval_count; end
            sig { params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def purchase_interval_count=(_purchase_interval_count); end
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              def date; end
              sig { params(_date: String).returns(String) }
              def date=(_date); end
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing; end
            sig {
              params(_next_billing: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          def confirmation_number; end
          sig { params(_confirmation_number: T.nilable(String)).returns(T.nilable(String)) }
          def confirmation_number=(_confirmation_number); end
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_after_days; end
          sig {
            params(_expires_after_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_after_days=(_expires_after_days); end
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_at; end
          sig {
            params(_expires_at: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_at=(_expires_at); end
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          def product_description; end
          sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
          def product_description=(_product_description); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          def tos_shown_and_accepted; end
          sig {
            params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def tos_shown_and_accepted=(_tos_shown_and_accepted); end
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          def risk_correlation_id; end
          sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
          def risk_correlation_id=(_risk_correlation_id); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
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
          def amount_includes_iof; end
          sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
          def amount_includes_iof=(_amount_includes_iof); end
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          def expires_after_seconds; end
          sig { params(_expires_after_seconds: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_seconds=(_expires_after_seconds); end
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          def expires_at; end
          sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_at=(_expires_at); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_language; end
          sig {
            params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              def account_subcategories; end
              sig {
                params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def account_subcategories=(_account_subcategories); end
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            def permissions; end
            sig {
              params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def permissions=(_permissions); end
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            def prefetch; end
            sig {
              params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def prefetch=(_prefetch); end
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            def return_url; end
            sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
            def return_url=(_return_url); end
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            def collection_method; end
            sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
            def collection_method=(_collection_method); end
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T.nilable(T::Array[String])) }
            def requested; end
            sig {
              params(_requested: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested=(_requested); end
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_settlement_speed; end
          sig {
            params(_preferred_settlement_speed: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_settlement_speed=(_preferred_settlement_speed); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          def app_id; end
          sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
          def app_id=(_app_id); end
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          def client; end
          sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
          def client=(_client); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm)))
         }
        def affirm; end
        sig {
          params(_affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm)))
         }
        def affirm=(_affirm); end
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay)))
         }
        def alipay; end
        sig {
          params(_alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay)))
         }
        def alipay=(_alipay); end
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma)))
         }
        def alma; end
        sig {
          params(_alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma)))
         }
        def alma=(_alma); end
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Billie)))
         }
        def billie; end
        sig {
          params(_billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Billie))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Billie)))
         }
        def billie=(_billie); end
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik)))
         }
        def blik; end
        sig {
          params(_blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik)))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto)))
         }
        def boleto; end
        sig {
          params(_boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto)))
         }
        def boleto=(_boleto); end
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card)))
         }
        def card; end
        sig {
          params(_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card)))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present=(_card_present); end
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp=(_cashapp); end
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Crypto)))
         }
        def crypto; end
        sig {
          params(_crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Crypto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Crypto)))
         }
        def crypto=(_crypto); end
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance=(_customer_balance); end
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps)))
         }
        def eps; end
        sig {
          params(_eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps)))
         }
        def eps=(_eps); end
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx)))
         }
        def fpx; end
        sig {
          params(_fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx)))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay)))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay)))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay=(_grabpay); end
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal)))
         }
        def ideal; end
        sig {
          params(_ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal)))
         }
        def ideal=(_ideal); end
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna)))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna)))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini)))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini)))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card=(_kr_card); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link)))
         }
        def link; end
        sig {
          params(_link: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link)))
         }
        def link=(_link); end
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay=(_naver_pay); end
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NzBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24)))
         }
        def p24; end
        sig {
          params(_p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24)))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco)))
         }
        def payco; end
        sig {
          params(_payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco)))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow)))
         }
        def paynow; end
        sig {
          params(_paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow)))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal)))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal)))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix)))
         }
        def pix; end
        sig {
          params(_pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix)))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay=(_promptpay); end
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Satispay)))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Satispay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Satispay)))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort)))
         }
        def sofort; end
        sig {
          params(_sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort)))
         }
        def sofort=(_sofort); end
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish)))
         }
        def swish; end
        sig {
          params(_swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish)))
         }
        def swish=(_swish); end
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint)))
         }
        def twint; end
        sig {
          params(_twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint)))
         }
        def twint=(_twint); end
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip)))
         }
        def zip; end
        sig {
          params(_zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip)))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        sig { returns(::Stripe::PaymentIntent::UpdateParams::Shipping::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::PaymentIntent::UpdateParams::Shipping::Address).returns(::Stripe::PaymentIntent::UpdateParams::Shipping::Address)
         }
        def address=(_address); end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_tracking_number); end
        sig {
          params(address: ::Stripe::PaymentIntent::UpdateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(T.any(String, Integer))) }
      def application_fee_amount; end
      sig {
        params(_application_fee_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
       }
      def application_fee_amount=(_application_fee_amount); end
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      def capture_method; end
      sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
      def capture_method=(_capture_method); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent. To unset this field to null, pass in an empty string.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(T.nilable(String)) }
      def payment_method_configuration; end
      sig { params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_configuration=(_payment_method_configuration); end
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment-method-specific configuration for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      def payment_method_types; end
      sig {
        params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def payment_method_types=(_payment_method_types); end
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
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
      def setup_future_usage; end
      sig {
        params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
       }
      def setup_future_usage=(_setup_future_usage); end
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::Shipping))) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::Shipping))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::Shipping)))
       }
      def shipping=(_shipping); end
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      def statement_descriptor_suffix; end
      sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor_suffix=(_statement_descriptor_suffix); end
      # Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::PaymentIntent::UpdateParams::TransferData)).returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      # A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      sig {
        params(amount: T.nilable(Integer), application_fee_amount: T.nilable(T.any(String, Integer)), capture_method: T.nilable(String), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), receipt_email: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), shipping: T.nilable(T.any(String, ::Stripe::PaymentIntent::UpdateParams::Shipping)), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntent::UpdateParams::TransferData), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        capture_method: nil,
        currency: nil,
        customer: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        receipt_email: nil,
        setup_future_usage: nil,
        shipping: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      def page; end
      sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
      def page=(_page); end
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for payment intents](https://stripe.com/docs/search#query-fields-for-payment-intents).
      sig { returns(String) }
      def query; end
      sig { params(_query: String).returns(String) }
      def query=(_query); end
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class ApplyCustomerBalanceParams < Stripe::RequestParams
      # Amount that you intend to apply to this PaymentIntent from the customer’s cash balance. If the PaymentIntent was created by an Invoice, the full amount of the PaymentIntent is applied regardless of this parameter.
      #
      # A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (for example, 100 cents to charge 1 USD or 100 to charge 100 JPY, a zero-decimal currency). The maximum amount is the amount of the PaymentIntent.
      #
      # When you omit the amount, it defaults to the remaining amount requested on the PaymentIntent.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(amount: T.nilable(Integer), currency: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(amount: nil, currency: nil, expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
      sig { returns(T.nilable(String)) }
      def cancellation_reason; end
      sig { params(_cancellation_reason: T.nilable(String)).returns(T.nilable(String)) }
      def cancellation_reason=(_cancellation_reason); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(cancellation_reason: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(cancellation_reason: nil, expand: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
      sig { returns(T.nilable(Integer)) }
      def amount_to_capture; end
      sig { params(_amount_to_capture: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_to_capture=(_amount_to_capture); end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      def application_fee_amount; end
      sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee_amount=(_application_fee_amount); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
      sig { returns(T.nilable(T::Boolean)) }
      def final_capture; end
      sig { params(_final_capture: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def final_capture=(_final_capture); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      def statement_descriptor_suffix; end
      sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor_suffix=(_statement_descriptor_suffix); end
      # The parameters that you can use to automatically create a transfer after the payment
      # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntent::CaptureParams::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::PaymentIntent::CaptureParams::TransferData)).returns(T.nilable(::Stripe::PaymentIntent::CaptureParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      sig {
        params(amount_to_capture: T.nilable(Integer), application_fee_amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), final_capture: T.nilable(T::Boolean), metadata: T.nilable(T.any(String, T::Hash[String, String])), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntent::CaptureParams::TransferData)).void
       }
      def initialize(
        amount_to_capture: nil,
        application_fee_amount: nil,
        expand: nil,
        final_capture: nil,
        metadata: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil
      ); end
    end
    class ConfirmParams < Stripe::RequestParams
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams; end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(T.nilable(String)) }
            def ip_address; end
            sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
            def ip_address=(_ip_address); end
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig { params(ip_address: T.nilable(String), user_agent: T.nilable(String)).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(T.nilable(Integer)) }
          def accepted_at; end
          sig { params(_accepted_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def accepted_at=(_accepted_at); end
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline=(_offline); end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          def online=(_online); end
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance))
         }
        def customer_acceptance; end
        sig {
          params(_customer_acceptance: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance))
         }
        def customer_acceptance=(_customer_acceptance); end
        sig {
          params(customer_acceptance: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance)).void
         }
        def initialize(customer_acceptance: nil); end
      end
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Institution number of the customer's bank.
          sig { returns(String) }
          def institution_number; end
          sig { params(_institution_number: String).returns(String) }
          def institution_number=(_institution_number); end
          # Transit number of the customer's bank.
          sig { returns(String) }
          def transit_number; end
          sig { params(_transit_number: String).returns(String) }
          def transit_number=(_transit_number); end
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          def bsb_number; end
          sig { params(_bsb_number: String).returns(String) }
          def bsb_number=(_bsb_number); end
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          def sort_code; end
          sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
          def sort_code=(_sort_code); end
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Billing address.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address=(_address); end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          def tax_id; end
          sig { params(_tax_id: String).returns(String) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # The customer's bank.
          sig { returns(String) }
          def bank; end
          sig { params(_bank: String).returns(String) }
          def bank=(_bank); end
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          def funding; end
          sig { params(_funding: T.nilable(String)).returns(T.nilable(String)) }
          def funding=(_funding); end
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_name=(_account_holder_name); end
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          def bank_code; end
          sig { params(_bank_code: String).returns(String) }
          def bank_code=(_bank_code); end
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          def branch_code; end
          sig { params(_branch_code: String).returns(String) }
          def branch_code=(_branch_code); end
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The suffix of the bank account number.
          sig { returns(String) }
          def suffix; end
          sig { params(_suffix: String).returns(String) }
          def suffix=(_suffix); end
          sig {
            params(account_holder_name: T.nilable(String), account_number: String, bank_code: String, branch_code: String, reference: T.nilable(String), suffix: String).void
           }
          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          ); end
        end
        class Oxxo < Stripe::RequestParams; end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          def iban; end
          sig { params(_iban: String).returns(String) }
          def iban=(_iban); end
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          def account_type; end
          sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_type=(_account_type); end
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          def financial_connections_account; end
          sig {
            params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
           }
          def financial_connections_account=(_financial_connections_account); end
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_routing_number); end
          sig {
            params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams; end
        class Zip < Stripe::RequestParams; end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm))
         }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay))
         }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Billie))
         }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto))
         }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Crypto))
         }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard))
         }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow))
         }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Satispay))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort))
         }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip)).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            def custom_mandate_url; end
            sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
            def custom_mandate_url=(_custom_mandate_url); end
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            def interval_description; end
            sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
            def interval_description=(_interval_description); end
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            def transaction_type; end
            sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_type=(_transaction_type); end
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_language; end
          sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              def count; end
              sig { params(_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def count=(_count); end
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              def interval; end
              sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
              def interval=(_interval); end
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            def enabled; end
            sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def enabled=(_enabled); end
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan; end
            sig {
              params(_plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            def plan=(_plan); end
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            def amount_type; end
            sig { params(_amount_type: String).returns(String) }
            def amount_type=(_amount_type); end
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            def end_date; end
            sig { params(_end_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def end_date=(_end_date); end
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            def start_date; end
            sig { params(_start_date: Integer).returns(Integer) }
            def start_date=(_start_date); end
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            def supported_types; end
            sig {
              params(_supported_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def supported_types=(_supported_types); end
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                def cb_avalgo; end
                sig { params(_cb_avalgo: String).returns(String) }
                def cb_avalgo=(_cb_avalgo); end
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                def cb_exemption; end
                sig { params(_cb_exemption: T.nilable(String)).returns(T.nilable(String)) }
                def cb_exemption=(_cb_exemption); end
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                def cb_score; end
                sig { params(_cb_score: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def cb_score=(_cb_score); end
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            def ares_trans_status; end
            sig { params(_ares_trans_status: T.nilable(String)).returns(T.nilable(String)) }
            def ares_trans_status=(_ares_trans_status); end
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            def cryptogram; end
            sig { params(_cryptogram: String).returns(String) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            def exemption_indicator; end
            sig { params(_exemption_indicator: T.nilable(String)).returns(T.nilable(String)) }
            def exemption_indicator=(_exemption_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options=(_network_options); end
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            def requestor_challenge_indicator; end
            sig {
              params(_requestor_challenge_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def requestor_challenge_indicator=(_requestor_challenge_indicator); end
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            def transaction_id; end
            sig { params(_transaction_id: String).returns(String) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            def version; end
            sig { params(_version: String).returns(String) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          def cvc_token; end
          sig { params(_cvc_token: T.nilable(String)).returns(T.nilable(String)) }
          def cvc_token=(_cvc_token); end
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments))
           }
          def installments; end
          sig {
            params(_installments: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments))
           }
          def installments=(_installments); end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_incremental_authorization; end
          sig {
            params(_request_incremental_authorization: T.nilable(String)).returns(T.nilable(String))
           }
          def request_incremental_authorization=(_request_incremental_authorization); end
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_multicapture; end
          sig { params(_request_multicapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_multicapture=(_request_multicapture); end
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          def request_overcapture; end
          sig { params(_request_overcapture: T.nilable(String)).returns(T.nilable(String)) }
          def request_overcapture=(_request_overcapture); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          def require_cvc_recollection; end
          sig {
            params(_require_cvc_recollection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def require_cvc_recollection=(_require_cvc_recollection); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kana; end
          sig {
            params(_statement_descriptor_suffix_kana: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kana=(_statement_descriptor_suffix_kana); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix_kanji; end
          sig {
            params(_statement_descriptor_suffix_kanji: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_suffix_kanji=(_statement_descriptor_suffix_kanji); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            def requested_priority; end
            sig { params(_requested_priority: T.nilable(String)).returns(T.nilable(String)) }
            def requested_priority=(_requested_priority); end
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          def request_extended_authorization; end
          sig {
            params(_request_extended_authorization: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_extended_authorization=(_request_extended_authorization); end
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          def request_incremental_authorization_support; end
          sig {
            params(_request_incremental_authorization_support: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def request_incremental_authorization_support=(
            _request_incremental_authorization_support
          ); end
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing; end
          sig {
            params(_routing: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing))
           }
          def routing=(_routing); end
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer; end
            sig {
              params(_eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            def eu_bank_transfer=(_eu_bank_transfer); end
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            def requested_address_types; end
            sig {
              params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested_address_types=(_requested_address_types); end
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer; end
          sig {
            params(_bank_transfer: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          def bank_transfer=(_bank_transfer); end
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          def funding_type; end
          sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
          def funding_type=(_funding_type); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def average_amount; end
            sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def average_amount=(_average_amount); end
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def maximum_amount; end
            sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def maximum_amount=(_maximum_amount); end
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            def minimum_amount; end
            sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minimum_amount=(_minimum_amount); end
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            def purchase_interval; end
            sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_interval=(_purchase_interval); end
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            def purchase_interval_count; end
            sig { params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def purchase_interval_count=(_purchase_interval_count); end
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              def date; end
              sig { params(_date: String).returns(String) }
              def date=(_date); end
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing; end
            sig {
              params(_next_billing: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          def confirmation_number; end
          sig { params(_confirmation_number: T.nilable(String)).returns(T.nilable(String)) }
          def confirmation_number=(_confirmation_number); end
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_after_days; end
          sig {
            params(_expires_after_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_after_days=(_expires_after_days); end
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def expires_at; end
          sig {
            params(_expires_at: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def expires_at=(_expires_at); end
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          def product_description; end
          sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
          def product_description=(_product_description); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          def expires_after_days; end
          sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_days=(_expires_after_days); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          def tos_shown_and_accepted; end
          sig {
            params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def tos_shown_and_accepted=(_tos_shown_and_accepted); end
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          def risk_correlation_id; end
          sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
          def risk_correlation_id=(_risk_correlation_id); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
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
          def amount_includes_iof; end
          sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
          def amount_includes_iof=(_amount_includes_iof); end
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          def expires_after_seconds; end
          sig { params(_expires_after_seconds: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after_seconds=(_expires_after_seconds); end
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          def expires_at; end
          sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_at=(_expires_at); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          def capture_method; end
          sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            def reference_prefix; end
            sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
            def reference_prefix=(_reference_prefix); end
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_language; end
          sig {
            params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_language=(_preferred_language); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              def account_subcategories; end
              sig {
                params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def account_subcategories=(_account_subcategories); end
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            def permissions; end
            sig {
              params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def permissions=(_permissions); end
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            def prefetch; end
            sig {
              params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def prefetch=(_prefetch); end
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            def return_url; end
            sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
            def return_url=(_return_url); end
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            def collection_method; end
            sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
            def collection_method=(_collection_method); end
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T.nilable(T::Array[String])) }
            def requested; end
            sig {
              params(_requested: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def requested=(_requested); end
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          def preferred_settlement_speed; end
          sig {
            params(_preferred_settlement_speed: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def preferred_settlement_speed=(_preferred_settlement_speed); end
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
          def setup_future_usage; end
          sig {
            params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
           }
          def setup_future_usage=(_setup_future_usage); end
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          def target_date; end
          sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
          def target_date=(_target_date); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          def app_id; end
          sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
          def app_id=(_app_id); end
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          def client; end
          sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
          def client=(_client); end
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          def setup_future_usage; end
          sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
          def setup_future_usage=(_setup_future_usage); end
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit)))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm)))
         }
        def affirm; end
        sig {
          params(_affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm)))
         }
        def affirm=(_affirm); end
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay)))
         }
        def alipay; end
        sig {
          params(_alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay)))
         }
        def alipay=(_alipay); end
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma)))
         }
        def alma; end
        sig {
          params(_alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma)))
         }
        def alma=(_alma); end
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay)))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit)))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit)))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact)))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Billie)))
         }
        def billie; end
        sig {
          params(_billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Billie))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Billie)))
         }
        def billie=(_billie); end
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik)))
         }
        def blik; end
        sig {
          params(_blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik)))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto)))
         }
        def boleto; end
        sig {
          params(_boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto)))
         }
        def boleto=(_boleto); end
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card)))
         }
        def card; end
        sig {
          params(_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card)))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent)))
         }
        def card_present=(_card_present); end
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp)))
         }
        def cashapp=(_cashapp); end
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Crypto)))
         }
        def crypto; end
        sig {
          params(_crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Crypto))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Crypto)))
         }
        def crypto=(_crypto); end
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance)))
         }
        def customer_balance=(_customer_balance); end
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps)))
         }
        def eps; end
        sig {
          params(_eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps)))
         }
        def eps=(_eps); end
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx)))
         }
        def fpx; end
        sig {
          params(_fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx)))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay)))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay)))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay)))
         }
        def grabpay=(_grabpay); end
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal)))
         }
        def ideal; end
        sig {
          params(_ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal)))
         }
        def ideal=(_ideal); end
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent)))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay)))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna)))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna)))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini)))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini)))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard)))
         }
        def kr_card=(_kr_card); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link)))
         }
        def link; end
        sig {
          params(_link: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link)))
         }
        def link=(_link); end
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay)))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco)))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay)))
         }
        def naver_pay=(_naver_pay); end
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NzBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NzBankAccount)))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo)))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24)))
         }
        def p24; end
        sig {
          params(_p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24)))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank)))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco)))
         }
        def payco; end
        sig {
          params(_payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco)))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow)))
         }
        def paynow; end
        sig {
          params(_paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow)))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal)))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal)))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix)))
         }
        def pix; end
        sig {
          params(_pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix)))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay)))
         }
        def promptpay=(_promptpay); end
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay)))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay)))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Satispay)))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Satispay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Satispay)))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit)))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort)))
         }
        def sofort; end
        sig {
          params(_sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort)))
         }
        def sofort=(_sofort); end
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish)))
         }
        def swish; end
        sig {
          params(_swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish)))
         }
        def swish=(_swish); end
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint)))
         }
        def twint; end
        sig {
          params(_twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint)))
         }
        def twint=(_twint); end
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay)))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip)))
         }
        def zip; end
        sig {
          params(_zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip)))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        def session; end
        sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
        def session=(_session); end
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::Shipping::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::PaymentIntent::ConfirmParams::Shipping::Address).returns(::Stripe::PaymentIntent::ConfirmParams::Shipping::Address)
         }
        def address=(_address); end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_tracking_number); end
        sig {
          params(address: ::Stripe::PaymentIntent::ConfirmParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      def capture_method; end
      sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
      def capture_method=(_capture_method); end
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      def confirmation_token; end
      sig { params(_confirmation_token: T.nilable(String)).returns(T.nilable(String)) }
      def confirmation_token=(_confirmation_token); end
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication).
      sig { returns(T.nilable(T::Boolean)) }
      def error_on_requires_action; end
      sig {
        params(_error_on_requires_action: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
       }
      def error_on_requires_action=(_error_on_requires_action); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the mandate that's used for this payment.
      sig { returns(T.nilable(String)) }
      def mandate; end
      sig { params(_mandate: T.nilable(String)).returns(T.nilable(String)) }
      def mandate=(_mandate); end
      # Attribute for param field mandate_data
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::MandateData))) }
      def mandate_data; end
      sig {
        params(_mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::MandateData))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::MandateData)))
       }
      def mandate_data=(_mandate_data); end
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards).
      sig { returns(T.nilable(T.any(T::Boolean, String))) }
      def off_session; end
      sig {
        params(_off_session: T.nilable(T.any(T::Boolean, String))).returns(T.nilable(T.any(T::Boolean, String)))
       }
      def off_session=(_off_session); end
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
      # If the payment method is attached to a Customer, it must match the [customer](https://stripe.com/docs/api#create_payment_intent-customer) that is set on this PaymentIntent.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The list of payment method types (for example, a card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      def payment_method_types; end
      sig {
        params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def payment_method_types=(_payment_method_types); end
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::RadarOptions)) }
      def radar_options; end
      sig {
        params(_radar_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::RadarOptions)).returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::RadarOptions))
       }
      def radar_options=(_radar_options); end
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
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
      def setup_future_usage; end
      sig {
        params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
       }
      def setup_future_usage=(_setup_future_usage); end
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::Shipping))) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::Shipping))).returns(T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::Shipping)))
       }
      def shipping=(_shipping); end
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk; end
      sig { params(_use_stripe_sdk: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk=(_use_stripe_sdk); end
      sig {
        params(capture_method: T.nilable(String), confirmation_token: T.nilable(String), error_on_requires_action: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), mandate: T.nilable(String), mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::MandateData)), off_session: T.nilable(T.any(T::Boolean, String)), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), radar_options: T.nilable(::Stripe::PaymentIntent::ConfirmParams::RadarOptions), receipt_email: T.nilable(String), return_url: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), shipping: T.nilable(T.any(String, ::Stripe::PaymentIntent::ConfirmParams::Shipping)), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        capture_method: nil,
        confirmation_token: nil,
        error_on_requires_action: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        off_session: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        radar_options: nil,
        receipt_email: nil,
        return_url: nil,
        setup_future_usage: nil,
        shipping: nil,
        use_stripe_sdk: nil
      ); end
    end
    class IncrementAuthorizationParams < Stripe::RequestParams
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
      sig { returns(Integer) }
      def amount; end
      sig { params(_amount: Integer).returns(Integer) }
      def amount=(_amount); end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      def application_fee_amount; end
      sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee_amount=(_application_fee_amount); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # The parameters used to automatically create a transfer after the payment is captured.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig {
        returns(T.nilable(::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData))
       }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData)).returns(T.nilable(::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      sig {
        params(amount: Integer, application_fee_amount: T.nilable(Integer), description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        statement_descriptor: nil,
        transfer_data: nil
      ); end
    end
    class VerifyMicrodepositsParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T.nilable(T::Array[Integer])) }
      def amounts; end
      sig { params(_amounts: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer])) }
      def amounts=(_amounts); end
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      sig { returns(T.nilable(String)) }
      def descriptor_code; end
      sig { params(_descriptor_code: T.nilable(String)).returns(T.nilable(String)) }
      def descriptor_code=(_descriptor_code); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(amounts: T.nilable(T::Array[Integer]), descriptor_code: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(amounts: nil, descriptor_code: nil, expand: nil); end
    end
    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::ApplyCustomerBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def apply_customer_balance(params = {}, opts = {}); end

    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::ApplyCustomerBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.apply_customer_balance(intent, params = {}, opts = {}); end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://docs.stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://docs.stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def cancel(params = {}, opts = {}); end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://docs.stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://docs.stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.cancel(intent, params = {}, opts = {}); end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://docs.stripe.com/docs/payments/capture-later).
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def capture(params = {}, opts = {}); end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://docs.stripe.com/docs/payments/capture-later).
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.capture(intent, params = {}, opts = {}); end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    #
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    #
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://docs.stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://docs.stripe.com/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    #
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    #
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    #
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def confirm(params = {}, opts = {}); end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    #
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    #
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://docs.stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://docs.stripe.com/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    #
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    #
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    #
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.confirm(intent, params = {}, opts = {}); end

    # Creates a PaymentIntent object.
    #
    # After the PaymentIntent is created, attach a payment method and [confirm](https://docs.stripe.com/docs/api/payment_intents/confirm)
    # to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flows
    # with the Payment Intents API.
    #
    # When you use confirm=true during creation, it's equivalent to creating
    # and confirming the PaymentIntent in the same call. You can use any parameters
    # available in the [confirm API](https://docs.stripe.com/docs/api/payment_intents/confirm) when you supply
    # confirm=true.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.create(params = {}, opts = {}); end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://docs.stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://docs.stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
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
    # [amount](https://docs.stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://docs.stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://docs.stripe.com/docs/terminal/features/incremental-authorizations).
    sig {
      params(params: T.any(::Stripe::PaymentIntent::IncrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def increment_authorization(params = {}, opts = {}); end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://docs.stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://docs.stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
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
    # [amount](https://docs.stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://docs.stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://docs.stripe.com/docs/terminal/features/incremental-authorizations).
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::IncrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.increment_authorization(intent, params = {}, opts = {}); end

    # Returns a list of PaymentIntents.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::PaymentIntent::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::PaymentIntent::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, blk: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search_auto_paging_each(params = {}, opts = {}, &blk); end

    # Updates properties on a PaymentIntent object without confirming.
    #
    # Depending on which properties you update, you might need to confirm the
    # PaymentIntent again. For example, updating the payment_method
    # always requires you to confirm the PaymentIntent again. If you prefer to
    # update and confirm at the same time, we recommend updating properties through
    # the [confirm API](https://docs.stripe.com/docs/api/payment_intents/confirm) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.update(intent, params = {}, opts = {}); end

    # Verifies microdeposits on a PaymentIntent object.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def verify_microdeposits(params = {}, opts = {}); end

    # Verifies microdeposits on a PaymentIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.verify_microdeposits(intent, params = {}, opts = {}); end
  end
end