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
        attr_reader :amount
      end
      # Attribute for field tip
      sig { returns(Tip) }
      attr_reader :tip
    end
    class AsyncWorkflows < Stripe::StripeObject
      class Inputs < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          sig { returns(String) }
          attr_reader :calculation
        end
        # Attribute for field tax
        sig { returns(Tax) }
        attr_reader :tax
      end
      # Attribute for field inputs
      sig { returns(Inputs) }
      attr_reader :inputs
    end
    class AutomaticPaymentMethods < Stripe::StripeObject
      # Controls whether this PaymentIntent will accept redirect-based payment methods.
      #
      # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
      sig { returns(String) }
      attr_reader :allow_redirects
      # Automatically calculates compatible payment methods
      sig { returns(T::Boolean) }
      attr_reader :enabled
    end
    class LastPaymentError < Stripe::StripeObject
      # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines) if they provide one.
      sig { returns(String) }
      attr_reader :advice_code
      # For card errors, the ID of the failed charge.
      sig { returns(String) }
      attr_reader :charge
      # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(String) }
      attr_reader :code
      # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
      sig { returns(String) }
      attr_reader :decline_code
      # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(String) }
      attr_reader :doc_url
      # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
      sig { returns(String) }
      attr_reader :message
      # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
      sig { returns(String) }
      attr_reader :network_advice_code
      # For card errors resulting from a card issuer decline, a brand specific 2, 3, or 4 digit code which indicates the reason the authorization failed.
      sig { returns(String) }
      attr_reader :network_decline_code
      # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
      sig { returns(String) }
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
      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent
      # PaymentMethod objects represent your customer's payment instruments.
      # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
      # Customer objects to store instrument details for future payments.
      #
      # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method
      # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
      sig { returns(String) }
      attr_reader :payment_method_type
      # A URL to the request log entry in your dashboard.
      sig { returns(String) }
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
      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent
      # Attribute for field source
      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source
      # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
      sig { returns(String) }
      attr_reader :type
    end
    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        # The native data to be used with Alipay SDK you must redirect your customer to in order to authenticate the payment in an Android App.
        sig { returns(T.nilable(String)) }
        attr_reader :native_data
        # The native URL you must redirect your customer to in order to authenticate the payment in an iOS App.
        sig { returns(T.nilable(String)) }
        attr_reader :native_url
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate the payment.
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class BoletoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the boleto expires.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        # The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        # The boleto number.
        sig { returns(T.nilable(String)) }
        attr_reader :number
        # The URL to the downloadable boleto voucher PDF.
        sig { returns(T.nilable(String)) }
        attr_reader :pdf
      end
      class CardAwaitNotification < Stripe::StripeObject
        # The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :charge_attempt_at
        # For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :customer_approval_required
      end
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The date (unix timestamp) when the QR code expires.
          sig { returns(Integer) }
          attr_reader :expires_at
          # The image_url_png string used to render QR code
          sig { returns(String) }
          attr_reader :image_url_png
          # The image_url_svg string used to render QR code
          sig { returns(String) }
          attr_reader :image_url_svg
        end
        # The URL to the hosted Cash App Pay instructions page, which allows customers to view the QR code, and supports QR code refreshing on expiration.
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        # The url for mobile redirect based auth
        sig { returns(String) }
        attr_reader :mobile_auth_url
        # Attribute for field qr_code
        sig { returns(QrCode) }
        attr_reader :qr_code
      end
      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The account holder name
            sig { returns(String) }
            attr_reader :account_holder_name
            # The ABA account number
            sig { returns(String) }
            attr_reader :account_number
            # The account type
            sig { returns(String) }
            attr_reader :account_type
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The bank name
            sig { returns(String) }
            attr_reader :bank_name
            # The ABA routing number
            sig { returns(String) }
            attr_reader :routing_number
          end
          class Iban < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The name of the person or business that owns the bank account
            sig { returns(String) }
            attr_reader :account_holder_name
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The BIC/SWIFT code of the account.
            sig { returns(String) }
            attr_reader :bic
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_reader :country
            # The IBAN of the account.
            sig { returns(String) }
            attr_reader :iban
          end
          class SortCode < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The name of the person or business that owns the bank account
            sig { returns(String) }
            attr_reader :account_holder_name
            # The account number
            sig { returns(String) }
            attr_reader :account_number
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The six-digit sort code
            sig { returns(String) }
            attr_reader :sort_code
          end
          class Spei < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The account holder name
            sig { returns(String) }
            attr_reader :account_holder_name
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The three-digit bank code
            sig { returns(String) }
            attr_reader :bank_code
            # The short banking institution name
            sig { returns(String) }
            attr_reader :bank_name
            # The CLABE number
            sig { returns(String) }
            attr_reader :clabe
          end
          class Swift < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The account holder name
            sig { returns(String) }
            attr_reader :account_holder_name
            # The account number
            sig { returns(String) }
            attr_reader :account_number
            # The account type
            sig { returns(String) }
            attr_reader :account_type
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The bank name
            sig { returns(String) }
            attr_reader :bank_name
            # The SWIFT code
            sig { returns(String) }
            attr_reader :swift_code
          end
          class Zengin < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            # Attribute for field account_holder_address
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            # The account holder name
            sig { returns(T.nilable(String)) }
            attr_reader :account_holder_name
            # The account number
            sig { returns(T.nilable(String)) }
            attr_reader :account_number
            # The bank account type. In Japan, this can only be `futsu` or `toza`.
            sig { returns(T.nilable(String)) }
            attr_reader :account_type
            # Attribute for field bank_address
            sig { returns(BankAddress) }
            attr_reader :bank_address
            # The bank code of the account
            sig { returns(T.nilable(String)) }
            attr_reader :bank_code
            # The bank name of the account
            sig { returns(T.nilable(String)) }
            attr_reader :bank_name
            # The branch code of the account
            sig { returns(T.nilable(String)) }
            attr_reader :branch_code
            # The branch name of the account
            sig { returns(T.nilable(String)) }
            attr_reader :branch_name
          end
          # ABA Records contain U.S. bank account details per the ABA format.
          sig { returns(Aba) }
          attr_reader :aba
          # Iban Records contain E.U. bank account details per the SEPA format.
          sig { returns(Iban) }
          attr_reader :iban
          # Sort Code Records contain U.K. bank account details per the sort code format.
          sig { returns(SortCode) }
          attr_reader :sort_code
          # SPEI Records contain Mexico bank account details per the SPEI format.
          sig { returns(Spei) }
          attr_reader :spei
          # The payment networks supported by this FinancialAddress
          sig { returns(T::Array[String]) }
          attr_reader :supported_networks
          # SWIFT Records contain U.S. bank account details per the SWIFT format.
          sig { returns(Swift) }
          attr_reader :swift
          # The type of financial address
          sig { returns(String) }
          attr_reader :type
          # Zengin Records contain Japan bank account details per the Zengin format.
          sig { returns(Zengin) }
          attr_reader :zengin
        end
        # The remaining amount that needs to be transferred to complete the payment.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_remaining
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        # A list of financial addresses that can be used to fund the customer balance
        sig { returns(T::Array[FinancialAddress]) }
        attr_reader :financial_addresses
        # A link to a hosted page that guides your customer through completing the transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url
        # A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Type of bank transfer
        sig { returns(String) }
        attr_reader :type
      end
      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            attr_reader :confirmation_number
            # The payment code.
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Lawson < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            attr_reader :confirmation_number
            # The payment code.
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Ministop < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            attr_reader :confirmation_number
            # The payment code.
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Seicomart < Stripe::StripeObject
            # The confirmation number.
            sig { returns(String) }
            attr_reader :confirmation_number
            # The payment code.
            sig { returns(String) }
            attr_reader :payment_code
          end
          # FamilyMart instruction details.
          sig { returns(T.nilable(Familymart)) }
          attr_reader :familymart
          # Lawson instruction details.
          sig { returns(T.nilable(Lawson)) }
          attr_reader :lawson
          # Ministop instruction details.
          sig { returns(T.nilable(Ministop)) }
          attr_reader :ministop
          # Seicomart instruction details.
          sig { returns(T.nilable(Seicomart)) }
          attr_reader :seicomart
        end
        # The timestamp at which the pending Konbini payment expires.
        sig { returns(Integer) }
        attr_reader :expires_at
        # The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        # Attribute for field stores
        sig { returns(Stores) }
        attr_reader :stores
      end
      class MultibancoDisplayDetails < Stripe::StripeObject
        # Entity number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        attr_reader :entity
        # The timestamp at which the Multibanco voucher expires.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        # The URL for the hosted Multibanco voucher page, which allows customers to view a Multibanco voucher.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        # Reference number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class OxxoDisplayDetails < Stripe::StripeObject
        # The timestamp after which the OXXO voucher expires.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after
        # The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        # OXXO reference number.
        sig { returns(T.nilable(String)) }
        attr_reader :number
      end
      class PaynowDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        attr_reader :data
        # The URL to the hosted PayNow instructions page, which allows customers to view the PayNow QR code.
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url
        # The image_url_png string used to render QR code
        sig { returns(String) }
        attr_reader :image_url_png
        # The image_url_svg string used to render QR code
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class PixDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        attr_reader :data
        # The date (unix timestamp) when the PIX expires.
        sig { returns(Integer) }
        attr_reader :expires_at
        # The URL to the hosted pix instructions page, which allows customers to view the pix QR code.
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        # The image_url_png string used to render png QR code
        sig { returns(String) }
        attr_reader :image_url_png
        # The image_url_svg string used to render svg QR code
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class PromptpayDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(String) }
        attr_reader :data
        # The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        # The PNG path used to render the QR code, can be used as the source in an HTML img tag
        sig { returns(String) }
        attr_reader :image_url_png
        # The SVG path used to render the QR code, can be used as the source in an HTML img tag
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate the payment.
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The raw data string used to generate QR code, it should be used together with QR code library.
          sig { returns(String) }
          attr_reader :data
          # The image_url_png string used to render QR code
          sig { returns(String) }
          attr_reader :image_url_png
          # The image_url_svg string used to render QR code
          sig { returns(String) }
          attr_reader :image_url_svg
        end
        # The URL to the hosted Swish instructions page, which allows customers to view the QR code.
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        # The url for mobile redirect based auth (for internal use only and not typically available in standard API requests).
        sig { returns(String) }
        attr_reader :mobile_auth_url
        # Attribute for field qr_code
        sig { returns(QrCode) }
        attr_reader :qr_code
      end
      class VerifyWithMicrodeposits < Stripe::StripeObject
        # The timestamp when the microdeposits are expected to land.
        sig { returns(Integer) }
        attr_reader :arrival_date
        # The URL for the hosted verification page, which allows customers to verify their bank account.
        sig { returns(String) }
        attr_reader :hosted_verification_url
        # The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
        sig { returns(T.nilable(String)) }
        attr_reader :microdeposit_type
      end
      class WechatPayDisplayQrCode < Stripe::StripeObject
        # The data being used to generate QR code
        sig { returns(String) }
        attr_reader :data
        # The URL to the hosted WeChat Pay instructions page, which allows customers to view the WeChat Pay QR code.
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        # The base64 image data for a pre-generated QR code
        sig { returns(String) }
        attr_reader :image_data_url
        # The image_url_png string used to render QR code
        sig { returns(String) }
        attr_reader :image_url_png
        # The image_url_svg string used to render QR code
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        # app_id is the APP ID registered on WeChat open platform
        sig { returns(String) }
        attr_reader :app_id
        # nonce_str is a random string
        sig { returns(String) }
        attr_reader :nonce_str
        # package is static value
        sig { returns(String) }
        attr_reader :package
        # an unique merchant ID assigned by WeChat Pay
        sig { returns(String) }
        attr_reader :partner_id
        # an unique trading ID assigned by WeChat Pay
        sig { returns(String) }
        attr_reader :prepay_id
        # A signature
        sig { returns(String) }
        attr_reader :sign
        # Specifies the current time in epoch format
        sig { returns(String) }
        attr_reader :timestamp
      end
      class WechatPayRedirectToIosApp < Stripe::StripeObject
        # An universal link that redirect to WeChat Pay app
        sig { returns(String) }
        attr_reader :native_url
      end
      # Attribute for field alipay_handle_redirect
      sig { returns(AlipayHandleRedirect) }
      attr_reader :alipay_handle_redirect
      # Attribute for field boleto_display_details
      sig { returns(BoletoDisplayDetails) }
      attr_reader :boleto_display_details
      # Attribute for field card_await_notification
      sig { returns(CardAwaitNotification) }
      attr_reader :card_await_notification
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      # Attribute for field display_bank_transfer_instructions
      sig { returns(DisplayBankTransferInstructions) }
      attr_reader :display_bank_transfer_instructions
      # Attribute for field konbini_display_details
      sig { returns(KonbiniDisplayDetails) }
      attr_reader :konbini_display_details
      # Attribute for field multibanco_display_details
      sig { returns(MultibancoDisplayDetails) }
      attr_reader :multibanco_display_details
      # Attribute for field oxxo_display_details
      sig { returns(OxxoDisplayDetails) }
      attr_reader :oxxo_display_details
      # Attribute for field paynow_display_qr_code
      sig { returns(PaynowDisplayQrCode) }
      attr_reader :paynow_display_qr_code
      # Attribute for field pix_display_qr_code
      sig { returns(PixDisplayQrCode) }
      attr_reader :pix_display_qr_code
      # Attribute for field promptpay_display_qr_code
      sig { returns(PromptpayDisplayQrCode) }
      attr_reader :promptpay_display_qr_code
      # Attribute for field redirect_to_url
      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url
      # Attribute for field swish_handle_redirect_or_display_qr_code
      sig { returns(SwishHandleRedirectOrDisplayQrCode) }
      attr_reader :swish_handle_redirect_or_display_qr_code
      # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      sig { returns(String) }
      attr_reader :type
      # When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :use_stripe_sdk
      # Attribute for field verify_with_microdeposits
      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits
      # Attribute for field wechat_pay_display_qr_code
      sig { returns(WechatPayDisplayQrCode) }
      attr_reader :wechat_pay_display_qr_code
      # Attribute for field wechat_pay_redirect_to_android_app
      sig { returns(WechatPayRedirectToAndroidApp) }
      attr_reader :wechat_pay_redirect_to_android_app
      # Attribute for field wechat_pay_redirect_to_ios_app
      sig { returns(WechatPayRedirectToIosApp) }
      attr_reader :wechat_pay_redirect_to_ios_app
    end
    class PaymentDetails < Stripe::StripeObject
      class CarRental < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          attr_reader :name
        end
        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            # The email of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :email
            # The name of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :name
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :phone
          end
          # The delivery method for the payment
          sig { returns(String) }
          attr_reader :mode
          # Attribute for field recipient
          sig { returns(Recipient) }
          attr_reader :recipient
        end
        class Driver < Stripe::StripeObject
          # Full name of the driver on the reservation.
          sig { returns(String) }
          attr_reader :name
        end
        class PickupAddress < Stripe::StripeObject
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
        class ReturnAddress < Stripe::StripeObject
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
        # Attribute for field affiliate
        sig { returns(Affiliate) }
        attr_reader :affiliate
        # The booking number associated with the car rental.
        sig { returns(String) }
        attr_reader :booking_number
        # Class code of the car.
        sig { returns(String) }
        attr_reader :car_class_code
        # Make of the car.
        sig { returns(String) }
        attr_reader :car_make
        # Model of the car.
        sig { returns(String) }
        attr_reader :car_model
        # The name of the rental car company.
        sig { returns(String) }
        attr_reader :company
        # The customer service phone number of the car rental company.
        sig { returns(String) }
        attr_reader :customer_service_phone_number
        # Number of days the car is being rented.
        sig { returns(Integer) }
        attr_reader :days_rented
        # Attribute for field delivery
        sig { returns(Delivery) }
        attr_reader :delivery
        # The details of the drivers associated with the trip.
        sig { returns(T::Array[Driver]) }
        attr_reader :drivers
        # List of additional charges being billed.
        sig { returns(T::Array[String]) }
        attr_reader :extra_charges
        # Indicates if the customer did not keep nor cancel their booking.
        sig { returns(T::Boolean) }
        attr_reader :no_show
        # Attribute for field pickup_address
        sig { returns(PickupAddress) }
        attr_reader :pickup_address
        # Car pick-up time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :pickup_at
        # Rental rate.
        sig { returns(Integer) }
        attr_reader :rate_amount
        # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
        sig { returns(String) }
        attr_reader :rate_interval
        # The full name of the person or entity renting the car.
        sig { returns(String) }
        attr_reader :renter_name
        # Attribute for field return_address
        sig { returns(ReturnAddress) }
        attr_reader :return_address
        # Car return time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :return_at
        # Indicates whether the goods or services are tax-exempt or tax is not collected.
        sig { returns(T::Boolean) }
        attr_reader :tax_exempt
      end
      class EventDetails < Stripe::StripeObject
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
        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          attr_reader :name
        end
        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            # The email of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :email
            # The name of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :name
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(String) }
            attr_reader :phone
          end
          # The delivery method for the payment
          sig { returns(String) }
          attr_reader :mode
          # Attribute for field recipient
          sig { returns(Recipient) }
          attr_reader :recipient
        end
        # Indicates if the tickets are digitally checked when entering the venue.
        sig { returns(T::Boolean) }
        attr_reader :access_controlled_venue
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
        # Attribute for field affiliate
        sig { returns(Affiliate) }
        attr_reader :affiliate
        # The name of the company
        sig { returns(String) }
        attr_reader :company
        # Attribute for field delivery
        sig { returns(Delivery) }
        attr_reader :delivery
        # Event end time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :ends_at
        # Type of the event entertainment (concert, sports event etc)
        sig { returns(String) }
        attr_reader :genre
        # The name of the event.
        sig { returns(String) }
        attr_reader :name
        # Event start time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :starts_at
      end
      class Subscription < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          attr_reader :name
        end
        class BillingInterval < Stripe::StripeObject
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          sig { returns(Integer) }
          attr_reader :count
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_reader :interval
        end
        # Attribute for field affiliate
        sig { returns(Affiliate) }
        attr_reader :affiliate
        # Info whether the subscription will be auto renewed upon expiry.
        sig { returns(T::Boolean) }
        attr_reader :auto_renewal
        # Attribute for field billing_interval
        sig { returns(BillingInterval) }
        attr_reader :billing_interval
        # Subscription end time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :ends_at
        # Name of the product on subscription. e.g. Apple Music Subscription.
        sig { returns(String) }
        attr_reader :name
        # Subscription start time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :starts_at
      end
      # Attribute for field car_rental
      sig { returns(CarRental) }
      attr_reader :car_rental
      # Attribute for field event_details
      sig { returns(EventDetails) }
      attr_reader :event_details
      # Attribute for field subscription
      sig { returns(Subscription) }
      attr_reader :subscription
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
      class Affirm < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        attr_reader :capture_method
        # Preferred language of the Affirm authorization page that the customer is redirected to.
        sig { returns(String) }
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
      class AfterpayClearpay < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        attr_reader :capture_method
        # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
        # This field differs from the statement descriptor and item name.
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
      class Alma < Stripe::StripeObject
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        attr_reader :capture_method
      end
      class AmazonPay < Stripe::StripeObject
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
      class Blik < Stripe::StripeObject
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
          class AvailablePlan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`.
            sig { returns(String) }
            attr_reader :type
          end
          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`.
            sig { returns(String) }
            attr_reader :type
          end
          # Installment plans that may be selected for this PaymentIntent.
          sig { returns(T.nilable(T::Array[AvailablePlan])) }
          attr_reader :available_plans
          # Whether Installments are enabled for this PaymentIntent.
          sig { returns(T::Boolean) }
          attr_reader :enabled
          # Installment plan selected for this PaymentIntent.
          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          sig { returns(Integer) }
          attr_reader :amount
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          sig { returns(String) }
          attr_reader :amount_type
          # A description of the mandate or subscription that is meant to be displayed to the customer.
          sig { returns(T.nilable(String)) }
          attr_reader :description
          # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_date
          # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
          sig { returns(String) }
          attr_reader :interval
          # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
          sig { returns(T.nilable(Integer)) }
          attr_reader :interval_count
          # Unique identifier for the mandate or subscription.
          sig { returns(String) }
          attr_reader :reference
          # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
          sig { returns(Integer) }
          attr_reader :start_date
          # Specifies the type of mandates supported. Possible values are `india`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :supported_types
        end
        class StatementDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_reader :state
          end
          # Attribute for field address
          sig { returns(Address) }
          attr_reader :address
          # Phone number
          sig { returns(String) }
          attr_reader :phone
        end
        # Controls when the funds will be captured from the customer's account.
        sig { returns(String) }
        attr_reader :capture_method
        # Installment details for this payment (Mexico only).
        #
        # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
        sig { returns(T.nilable(Installments)) }
        attr_reader :installments
        # Configuration options for setting up an eMandate for cards issued in India.
        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options
        # Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_decremental_authorization
        # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_extended_authorization
        # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_incremental_authorization
        # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_multicapture
        # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_overcapture
        # Request partial authorization on this PaymentIntent.
        sig { returns(String) }
        attr_reader :request_partial_authorization
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure
        # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
        sig { returns(T::Boolean) }
        attr_reader :require_cvc_recollection
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
        # Attribute for field statement_details
        sig { returns(StatementDetails) }
        attr_reader :statement_details
      end
      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          # Requested routing priority
          sig { returns(T.nilable(String)) }
          attr_reader :requested_priority
        end
        # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_extended_authorization
        # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_incremental_authorization_support
        # Attribute for field routing
        sig { returns(Routing) }
        attr_reader :routing
      end
      class Cashapp < Stripe::StripeObject
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
      class Gopay < Stripe::StripeObject
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
      class IdBankTransfer < Stripe::StripeObject
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now till 2678400 seconds (31 days) from now.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
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
      class InteracPresent < Stripe::StripeObject; end
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
      class Konbini < Stripe::StripeObject
        # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores.
        sig { returns(T.nilable(String)) }
        attr_reader :confirmation_number
        # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_days
        # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
        sig { returns(T.nilable(String)) }
        attr_reader :product_description
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
      class MbWay < Stripe::StripeObject
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
      class PayByBank < Stripe::StripeObject; end
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
        # The number of seconds (between 10 and 1209600) after which Pix payment will expire.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_seconds
        # The timestamp at which the Pix expires.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
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
      class Promptpay < Stripe::StripeObject
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
      class Qris < Stripe::StripeObject
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
      class Rechnung < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject
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
      end
      class Shopeepay < Stripe::StripeObject
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
      class Swish < Stripe::StripeObject
        # A reference for this payment to be displayed in the Swish app.
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
      class Twint < Stripe::StripeObject
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
        class MandateOptions < Stripe::StripeObject
          # Mandate collection method
          sig { returns(String) }
          attr_reader :collection_method
        end
        # Attribute for field financial_connections
        sig { returns(FinancialConnections) }
        attr_reader :financial_connections
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        # Preferred transaction settlement speed
        sig { returns(String) }
        attr_reader :preferred_settlement_speed
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
      class Zip < Stripe::StripeObject
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
      # Attribute for field affirm
      sig { returns(Affirm) }
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      sig { returns(Alipay) }
      attr_reader :alipay
      # Attribute for field alma
      sig { returns(Alma) }
      attr_reader :alma
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
      # Attribute for field blik
      sig { returns(Blik) }
      attr_reader :blik
      # Attribute for field boleto
      sig { returns(Boleto) }
      attr_reader :boleto
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field card_present
      sig { returns(CardPresent) }
      attr_reader :card_present
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
      # Attribute for field gopay
      sig { returns(Gopay) }
      attr_reader :gopay
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      # Attribute for field id_bank_transfer
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      # Attribute for field ideal
      sig { returns(Ideal) }
      attr_reader :ideal
      # Attribute for field interac_present
      sig { returns(InteracPresent) }
      attr_reader :interac_present
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
      # Attribute for field mb_way
      sig { returns(MbWay) }
      attr_reader :mb_way
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
      # Attribute for field pay_by_bank
      sig { returns(PayByBank) }
      attr_reader :pay_by_bank
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
      # Attribute for field promptpay
      sig { returns(Promptpay) }
      attr_reader :promptpay
      # Attribute for field qris
      sig { returns(Qris) }
      attr_reader :qris
      # Attribute for field rechnung
      sig { returns(Rechnung) }
      attr_reader :rechnung
      # Attribute for field revolut_pay
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      # Attribute for field samsung_pay
      sig { returns(SamsungPay) }
      attr_reader :samsung_pay
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      # Attribute for field shopeepay
      sig { returns(Shopeepay) }
      attr_reader :shopeepay
      # Attribute for field sofort
      sig { returns(Sofort) }
      attr_reader :sofort
      # Attribute for field swish
      sig { returns(Swish) }
      attr_reader :swish
      # Attribute for field twint
      sig { returns(Twint) }
      attr_reader :twint
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      # Attribute for field zip
      sig { returns(Zip) }
      attr_reader :zip
    end
    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          # Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :approval_requested
          # If customer approval is required, they need to provide approval before this time.
          sig { returns(T.nilable(Integer)) }
          attr_reader :completes_at
        end
        # Attribute for field customer_notification
        sig { returns(CustomerNotification) }
        attr_reader :customer_notification
      end
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Type of the payment method for which payment is in `processing` state, one of `card`.
      sig { returns(String) }
      attr_reader :type
    end
    class Shipping < Stripe::StripeObject
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
    class TransferData < Stripe::StripeObject
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_reader :amount
      # The account (if any) that the payment is attributed to for tax
      # reporting, and where funds from the payment are transferred to after
      # payment success.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    sig { returns(Integer) }
    attr_reader :amount
    # Amount that can be captured from this PaymentIntent.
    sig { returns(Integer) }
    attr_reader :amount_capturable
    # Attribute for field amount_details
    sig { returns(AmountDetails) }
    attr_reader :amount_details
    # Amount that this PaymentIntent collects.
    sig { returns(Integer) }
    attr_reader :amount_received
    # ID of the Connect application that created the PaymentIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount
    # Attribute for field async_workflows
    sig { returns(AsyncWorkflows) }
    attr_reader :async_workflows
    # Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    attr_reader :automatic_payment_methods
    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    attr_reader :canceled_at
    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
    sig { returns(T.nilable(String)) }
    attr_reader :cancellation_reason
    # Controls when the funds will be captured from the customer's account.
    sig { returns(String) }
    attr_reader :capture_method
    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    sig { returns(T.nilable(String)) }
    attr_reader :client_secret
    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    sig { returns(String) }
    attr_reader :confirmation_method
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # ID of the invoice that created this PaymentIntent, if it exists.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice
    # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
    sig { returns(T.nilable(LastPaymentError)) }
    attr_reader :last_payment_error
    # ID of the latest [Charge object](https://stripe.com/docs/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :latest_charge
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Learn more about [storing information in metadata](https://stripe.com/docs/payments/payment-intents/creating-payment-intents#storing-information-in-metadata).
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
    sig { returns(T.nilable(NextAction)) }
    attr_reader :next_action
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of
    # Attribute for field payment_details
    sig { returns(PaymentDetails) }
    attr_reader :payment_details
    # ID of the payment method used in this PaymentIntent.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :payment_method
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this PaymentIntent.
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    attr_reader :payment_method_configuration_details
    # Payment-method-specific configuration for this PaymentIntent.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options
    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
    sig { returns(T::Array[String]) }
    attr_reader :payment_method_types
    # If present, this property tells you about the processing state of the payment.
    sig { returns(T.nilable(Processing)) }
    attr_reader :processing
    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    sig { returns(T.nilable(String)) }
    attr_reader :receipt_email
    # ID of the review associated with this PaymentIntent, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    attr_reader :review
    # Indicates whether confirmation for this PaymentIntent using a secret key is `required` or `optional`.
    sig { returns(String) }
    attr_reader :secret_key_confirmation
    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    sig { returns(T.nilable(String)) }
    attr_reader :setup_future_usage
    # Shipping information for this PaymentIntent.
    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping
    # This is a legacy field that will be removed in the future. It is the ID of the Source object that is associated with this PaymentIntent, if one was supplied.
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    attr_reader :source
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor_suffix
    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    sig { returns(String) }
    attr_reader :status
    # The data that automatically creates a Transfer after the payment finalizes. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data
    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp or a dictionary with a number of different query options.
      sig { returns(T.any(::Stripe::PaymentIntent::ListParams::Created, Integer)) }
      attr_accessor :created
      # Only return PaymentIntents for the customer that this customer ID specifies.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(created: T.any(::Stripe::PaymentIntent::ListParams::Created, Integer), customer: String, ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig { returns(::Stripe::PaymentIntent::CreateParams::AsyncWorkflows::Inputs::Tax) }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::CreateParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig { returns(::Stripe::PaymentIntent::CreateParams::AsyncWorkflows::Inputs) }
        attr_accessor :inputs
        sig { params(inputs: ::Stripe::PaymentIntent::CreateParams::AsyncWorkflows::Inputs).void }
        def initialize(inputs: nil); end
      end
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this PaymentIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
        sig { returns(String) }
        attr_accessor :allow_redirects
        # Whether this feature is enabled.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(allow_redirects: String, enabled: T::Boolean).void }
        def initialize(allow_redirects: nil, enabled: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams

          end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :user_agent
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(Integer) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline)
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online)
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: Integer, offline: ::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Offline, online: ::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance::Online, type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance) }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::PaymentIntent::CreateParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Delivery)
           }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::PickupAddress)
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::ReturnAddress)
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Address)
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Affiliate)
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Delivery)
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription::Affiliate)
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::CarRental, event_details: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::EventDetails, flight: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Flight, lodging: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Lodging, subscription: ::Stripe::PaymentIntent::CreateParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          attr_accessor :account_number
          # Institution number of the customer's bank.
          sig { returns(String) }
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          sig { returns(String) }
          attr_accessor :transit_number
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams

        end
        class AfterpayClearpay < Stripe::RequestParams

        end
        class Alipay < Stripe::RequestParams

        end
        class Alma < Stripe::RequestParams

        end
        class AmazonPay < Stripe::RequestParams

        end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(String) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(String) }
          attr_accessor :sort_code
          sig { params(account_number: String, sort_code: String).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams

        end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address))
           }
          attr_accessor :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig {
            params(address: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Blik < Stripe::RequestParams

        end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams

        end
        class CustomerBalance < Stripe::RequestParams

        end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(String) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: String, bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams

        end
        class Gopay < Stripe::RequestParams

        end
        class Grabpay < Stripe::RequestParams

        end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams

        end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna::Dob).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams

        end
        class KrCard < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams

        end
        class MbWay < Stripe::RequestParams

        end
        class Mobilepay < Stripe::RequestParams

        end
        class Multibanco < Stripe::RequestParams

        end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(String) }
          attr_accessor :funding
          sig { params(funding: String).void }
          def initialize(funding: nil); end
        end
        class Oxxo < Stripe::RequestParams

        end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams

        end
        class Paynow < Stripe::RequestParams

        end
        class Paypal < Stripe::RequestParams

        end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          # The PayID alias for the bank account.
          sig { returns(String) }
          attr_accessor :pay_id
          sig { params(account_number: String, bsb_number: String, pay_id: String).void }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams

        end
        class Promptpay < Stripe::RequestParams

        end
        class Qris < Stripe::RequestParams

        end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(String) }
          attr_accessor :session
          sig { params(session: String).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Rechnung::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
        end
        class RevolutPay < Stripe::RequestParams

        end
        class SamsungPay < Stripe::RequestParams

        end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Shopeepay < Stripe::RequestParams

        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams

        end
        class Twint < Stripe::RequestParams

        end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(String) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(String) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(String) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(String) }
          attr_accessor :routing_number
          sig {
            params(account_holder_type: String, account_number: String, account_type: String, financial_connections_account: String, routing_number: String).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams

        end
        class Zip < Stripe::RequestParams

        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay) }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails) }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance) }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::IdBankTransfer) }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent) }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank) }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions) }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount) }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::BillingDetails, blik: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Blik, boleto: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Boleto, cashapp: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Eps, fpx: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Fpx, giropay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Giropay, gopay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Gopay, grabpay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Ideal, interac_present: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Klarna, konbini: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Konbini, kr_card: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::KrCard, link: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Link, mb_way: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Oxxo, p24: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::P24, pay_by_bank: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::PayByBank, payco: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payco, paynow: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paynow, paypal: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Paypal, payto: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Payto, pix: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Pix, promptpay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Promptpay, qris: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Qris, radar_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Sofort, swish: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Swish, twint: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::WechatPay, zip: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData::Zip).void
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
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
            attr_accessor :custom_mandate_url
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: String, payment_schedule: String, transaction_type: String).void
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
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions, setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
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
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
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
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(String) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: String, setup_future_usage: String).void
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
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
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(preferred_language: String, setup_future_usage: T.nilable(String)).void }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(String) }
          attr_accessor :code
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
          attr_accessor :setup_future_usage
          sig { params(code: String, setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(Integer) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: T.nilable(String)).void }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(Integer) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(String) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`.
              sig { returns(String) }
              attr_accessor :type
              sig { params(count: Integer, interval: String, type: String).void }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan))
             }
            attr_accessor :plan
            sig {
              params(enabled: T::Boolean, plan: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments::Plan)).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
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
          class StatementDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(String) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(String) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(String) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(String) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(String) }
              attr_accessor :state
              sig {
                params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            # Please pass in an address that is within your Stripe user account country
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::StatementDetails::Address)
             }
            attr_accessor :address
            # Phone number (e.g., a toll-free number that customers can call)
            sig { returns(String) }
            attr_accessor :phone
            sig {
              params(address: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::StatementDetails::Address, phone: String).void
             }
            def initialize(address: nil, phone: nil); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(String) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, exemption_indicator: String, network_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
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
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(String) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent (Mexico Only).
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments)
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_decremental_authorization
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_overcapture
          # Request partial authorization on this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_partial_authorization
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T::Boolean) }
          attr_accessor :require_cvc_recollection
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
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # Statement details for this payment intent. You can use this to override the merchant details shown on your customers' statements.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::StatementDetails))
           }
          attr_accessor :statement_details
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: String, installments: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::Installments, mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_decremental_authorization: String, request_extended_authorization: String, request_incremental_authorization: String, request_multicapture: String, request_overcapture: String, request_partial_authorization: String, request_three_d_secure: String, require_cvc_recollection: T::Boolean, setup_future_usage: T.nilable(String), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), statement_details: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::StatementDetails), three_d_secure: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_decremental_authorization: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_partial_authorization: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            statement_details: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(String) }
            attr_accessor :requested_priority
            sig { params(requested_priority: String).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T::Boolean) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T::Boolean) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing)
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T::Boolean, request_incremental_authorization_support: T::Boolean, routing: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent::Routing).void
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
          attr_accessor :capture_method
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
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
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
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T::Array[String]) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer, requested_address_types: T::Array[String], type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer)
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer, funding_type: String, setup_future_usage: String).void
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Gopay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class IdBankTransfer < Stripe::RequestParams
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from 5 minutes from now until 31 days from now. If unset, it defaults to 3 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_after
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(Integer), expires_at: T.nilable(Integer), product_description: T.nilable(String), setup_future_usage: String).void
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: String, setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class MbWay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(capture_method: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(Integer) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T::Boolean) }
          attr_accessor :tos_shown_and_accepted
          sig { params(setup_future_usage: String, tos_shown_and_accepted: T::Boolean).void }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # The tax for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              attr_accessor :amount
              # The tax behavior for the line item.
              sig { returns(String) }
              attr_accessor :behavior
              sig { params(amount: Integer, behavior: String).void }
              def initialize(amount: nil, behavior: nil); end
            end
            # Type of the line item.
            sig { returns(String) }
            attr_accessor :category
            # Description of the line item.
            sig { returns(String) }
            attr_accessor :description
            # Descriptive name of the line item.
            sig { returns(String) }
            attr_accessor :name
            # Quantity of the line item. Must be a positive number.
            sig { returns(Integer) }
            attr_accessor :quantity
            # Client facing stock keeping unit, article number or similar.
            sig { returns(String) }
            attr_accessor :sku
            # The Stripe account ID of the connected account that sells the item.
            sig { returns(String) }
            attr_accessor :sold_by
            # The tax information for the line item.
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal::LineItem::Tax)
             }
            attr_accessor :tax
            # Price for a single unit of the line item in minor units. Cannot be a negative number.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            sig {
              params(category: String, description: String, name: String, quantity: Integer, sku: String, sold_by: String, tax: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal::LineItem::Tax, unit_amount: Integer).void
             }
            def initialize(
              category: nil,
              description: nil,
              name: nil,
              quantity: nil,
              sku: nil,
              sold_by: nil,
              tax: nil,
              unit_amount: nil
            ); end
          end
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # The line items purchased by the customer.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal::LineItem])
           }
          attr_accessor :line_items
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(String) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference_id
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(capture_method: T.nilable(String), line_items: T::Array[::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal::LineItem], preferred_locale: String, reference: String, reference_id: String, risk_correlation_id: String, setup_future_usage: T.nilable(String), subsellers: T::Array[String]).void
           }
          def initialize(
            capture_method: nil,
            line_items: nil,
            preferred_locale: nil,
            reference: nil,
            reference_id: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil,
            subsellers: nil
          ); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil
            ); end
          end
          # Additional fields for Mandate creation. Only `purpose` field is configurable for PayTo PaymentIntent with `setup_future_usage=none`. Other fields are only applicable to PayTo PaymentIntent with `setup_future_usage=off_session`
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Pix < Stripe::RequestParams
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(Integer) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_seconds: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after_seconds: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Qris < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Rechnung < Stripe::RequestParams

        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Shopeepay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(String)) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_settlement_speed
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
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks, preferred_settlement_speed: T.nilable(String), setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(String) }
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(app_id: String, client: String, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps)) }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx)) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay))
         }
        attr_accessor :giropay
        # If this is a `gopay` PaymentMethod, this sub-hash contains details about the GoPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Gopay))
         }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay))
         }
        attr_accessor :grabpay
        # If this is a `id_bank_transfer` PaymentMethod, this sub-hash contains details about the Indonesia Bank Transfer payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::IdBankTransfer))
         }
        attr_accessor :id_bank_transfer
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link))
         }
        attr_accessor :link
        # If this is a `mb_way` PaymentMethod, this sub-hash contains details about the MB WAY payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::MbWay))
         }
        attr_accessor :mb_way
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24)) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this sub-hash contains details about the PayTo payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payto))
         }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix)) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay))
         }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this sub-hash contains details about the QRIS payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Qris))
         }
        attr_accessor :qris
        # If this is a `rechnung` PaymentMethod, this sub-hash contains details about the Rechnung payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Rechnung))
         }
        attr_accessor :rechnung
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `shopeepay` PaymentMethod, this sub-hash contains details about the ShopeePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Shopeepay))
         }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip)) }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alipay), alma: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Bancontact), blik: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Blik), boleto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Boleto), card: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CardPresent), cashapp: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Cashapp), customer_balance: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Eps), fpx: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Giropay), gopay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Gopay), grabpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Grabpay), id_bank_transfer: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::IdBankTransfer), ideal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::KrCard), link: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Link), mb_way: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::MbWay), mobilepay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::NaverPay), oxxo: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payco), paynow: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Promptpay), qris: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Qris), rechnung: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Rechnung), revolut_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SamsungPay), sepa_debit: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::SepaDebit), shopeepay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Shopeepay), sofort: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Sofort), swish: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Swish), twint: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Twint), us_bank_account: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions::Zip)).void
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
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
        sig { returns(String) }
        attr_accessor :session
        sig { params(session: String).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(String) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(String) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(String) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntent::CreateParams::Shipping::Address, carrier: String, name: String, phone: String, tracking_number: String).void
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
        sig { returns(Integer) }
        attr_accessor :amount
        # If specified, successful charges will be attributed to the destination
        # account for tax reporting, and the funds from charges will be transferred
        # to the destination account. The ID of the resulting transfer will be
        # returned on the successful charge's `transfer` field.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: Integer, destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::CreateParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # When you enable this parameter, this PaymentIntent accepts payment methods that you enable in the Dashboard and that are compatible with this PaymentIntent's other parameters.
      sig { returns(::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods) }
      attr_accessor :automatic_payment_methods
      # Controls when the funds will be captured from the customer's account.
      sig { returns(String) }
      attr_accessor :capture_method
      # Set to `true` to attempt to [confirm this PaymentIntent](https://stripe.com/docs/api/payment_intents/confirm) immediately. This parameter defaults to `false`. When creating and confirming a PaymentIntent at the same time, you can also provide the parameters available in the [Confirm API](https://stripe.com/docs/api/payment_intents/confirm).
      sig { returns(T::Boolean) }
      attr_accessor :confirm
      # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
      sig { returns(String) }
      attr_accessor :confirmation_method
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(String) }
      attr_accessor :confirmation_token
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. Use this parameter for simpler integrations that don't handle customer actions, such as [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T::Boolean) }
      attr_accessor :error_on_requires_action
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # ID of the mandate that's used for this payment. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(String) }
      attr_accessor :mandate
      # This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData)) }
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.any(T::Boolean, String)) }
      attr_accessor :off_session
      # The Stripe account ID that these funds are intended for. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(String) }
      attr_accessor :on_behalf_of
      # Provides industry-specific information about the charge.
      sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentDetails) }
      attr_accessor :payment_details
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods#compatibility) object) to attach to this PaymentIntent.
      #
      # If you don't provide the `payment_method` parameter or the `source` parameter with `confirm=true`, `source` automatically populates with `customer.default_source` to improve migration for users of the Charges API. We recommend that you explicitly provide the `payment_method` moving forward.
      sig { returns(String) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(String) }
      attr_accessor :payment_method_configuration
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, a card) that this PaymentIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T::Array[String]) }
      attr_accessor :payment_method_types
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(::Stripe::PaymentIntent::CreateParams::RadarOptions) }
      attr_accessor :radar_options
      # Email address to send the receipt to. If you specify `receipt_email` for a payment in live mode, you send a receipt regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(String) }
      attr_accessor :receipt_email
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(String) }
      attr_accessor :return_url
      # Indicates whether confirmation for this PaymentIntent using a secret key is `required` or `optional`.
      sig { returns(String) }
      attr_accessor :secret_key_confirmation
      # Indicates that you intend to make future payments with this PaymentIntent's payment method.
      #
      # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
      #
      # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
      #
      # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
      sig { returns(String) }
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::CreateParams::Shipping) }
      attr_accessor :shipping
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(String) }
      attr_accessor :statement_descriptor_suffix
      # The parameters that you can use to automatically create a Transfer.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(::Stripe::PaymentIntent::CreateParams::TransferData) }
      attr_accessor :transfer_data
      # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
      sig { returns(String) }
      attr_accessor :transfer_group
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T::Boolean) }
      attr_accessor :use_stripe_sdk
      sig {
        params(amount: Integer, application_fee_amount: Integer, async_workflows: ::Stripe::PaymentIntent::CreateParams::AsyncWorkflows, automatic_payment_methods: ::Stripe::PaymentIntent::CreateParams::AutomaticPaymentMethods, capture_method: String, confirm: T::Boolean, confirmation_method: String, confirmation_token: String, currency: String, customer: String, description: String, error_on_requires_action: T::Boolean, expand: T::Array[String], mandate: String, mandate_data: T.nilable(::Stripe::PaymentIntent::CreateParams::MandateData), metadata: T::Hash[String, String], off_session: T.any(T::Boolean, String), on_behalf_of: String, payment_details: ::Stripe::PaymentIntent::CreateParams::PaymentDetails, payment_method: String, payment_method_configuration: String, payment_method_data: ::Stripe::PaymentIntent::CreateParams::PaymentMethodData, payment_method_options: ::Stripe::PaymentIntent::CreateParams::PaymentMethodOptions, payment_method_types: T::Array[String], radar_options: ::Stripe::PaymentIntent::CreateParams::RadarOptions, receipt_email: String, return_url: String, secret_key_confirmation: String, setup_future_usage: String, shipping: ::Stripe::PaymentIntent::CreateParams::Shipping, statement_descriptor: String, statement_descriptor_suffix: String, transfer_data: ::Stripe::PaymentIntent::CreateParams::TransferData, transfer_group: String, use_stripe_sdk: T::Boolean).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        async_workflows: nil,
        automatic_payment_methods: nil,
        capture_method: nil,
        confirm: nil,
        confirmation_method: nil,
        confirmation_token: nil,
        currency: nil,
        customer: nil,
        description: nil,
        error_on_requires_action: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        metadata: nil,
        off_session: nil,
        on_behalf_of: nil,
        payment_details: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        radar_options: nil,
        receipt_email: nil,
        return_url: nil,
        secret_key_confirmation: nil,
        setup_future_usage: nil,
        shipping: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil,
        use_stripe_sdk: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # The client secret of the PaymentIntent. We require it if you use a publishable key to retrieve the source.
      sig { returns(String) }
      attr_accessor :client_secret
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(client_secret: String, expand: T::Array[String]).void }
      def initialize(client_secret: nil, expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig { returns(::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows::Inputs::Tax) }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig { returns(::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows::Inputs) }
        attr_accessor :inputs
        sig { params(inputs: ::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows::Inputs).void }
        def initialize(inputs: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :user_agent
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::MandateData::CustomerAcceptance::Online)
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(online: ::Stripe::PaymentIntent::UpdateParams::MandateData::CustomerAcceptance::Online, type: String).void
           }
          def initialize(online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::MandateData::CustomerAcceptance) }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::PaymentIntent::UpdateParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Delivery)
           }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::PickupAddress)
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::ReturnAddress)
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Address)
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Affiliate)
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Delivery)
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription::Affiliate)
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::CarRental, event_details: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::EventDetails, flight: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Flight, lodging: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Lodging, subscription: ::Stripe::PaymentIntent::UpdateParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          attr_accessor :account_number
          # Institution number of the customer's bank.
          sig { returns(String) }
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          sig { returns(String) }
          attr_accessor :transit_number
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams

        end
        class AfterpayClearpay < Stripe::RequestParams

        end
        class Alipay < Stripe::RequestParams

        end
        class Alma < Stripe::RequestParams

        end
        class AmazonPay < Stripe::RequestParams

        end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(String) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(String) }
          attr_accessor :sort_code
          sig { params(account_number: String, sort_code: String).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams

        end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address))
           }
          attr_accessor :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig {
            params(address: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Blik < Stripe::RequestParams

        end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams

        end
        class CustomerBalance < Stripe::RequestParams

        end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(String) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: String, bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams

        end
        class Gopay < Stripe::RequestParams

        end
        class Grabpay < Stripe::RequestParams

        end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams

        end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna::Dob).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams

        end
        class KrCard < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams

        end
        class MbWay < Stripe::RequestParams

        end
        class Mobilepay < Stripe::RequestParams

        end
        class Multibanco < Stripe::RequestParams

        end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(String) }
          attr_accessor :funding
          sig { params(funding: String).void }
          def initialize(funding: nil); end
        end
        class Oxxo < Stripe::RequestParams

        end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams

        end
        class Paynow < Stripe::RequestParams

        end
        class Paypal < Stripe::RequestParams

        end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          # The PayID alias for the bank account.
          sig { returns(String) }
          attr_accessor :pay_id
          sig { params(account_number: String, bsb_number: String, pay_id: String).void }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams

        end
        class Promptpay < Stripe::RequestParams

        end
        class Qris < Stripe::RequestParams

        end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(String) }
          attr_accessor :session
          sig { params(session: String).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Rechnung::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
        end
        class RevolutPay < Stripe::RequestParams

        end
        class SamsungPay < Stripe::RequestParams

        end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Shopeepay < Stripe::RequestParams

        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams

        end
        class Twint < Stripe::RequestParams

        end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(String) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(String) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(String) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(String) }
          attr_accessor :routing_number
          sig {
            params(account_holder_type: String, account_number: String, account_type: String, financial_connections_account: String, routing_number: String).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams

        end
        class Zip < Stripe::RequestParams

        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay) }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails) }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance) }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::IdBankTransfer) }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent) }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank) }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions) }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount) }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::BillingDetails, blik: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Blik, boleto: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Boleto, cashapp: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Eps, fpx: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Fpx, giropay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Giropay, gopay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Gopay, grabpay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Ideal, interac_present: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Klarna, konbini: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Konbini, kr_card: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::KrCard, link: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Link, mb_way: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Oxxo, p24: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::P24, pay_by_bank: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::PayByBank, payco: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payco, paynow: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paynow, paypal: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Paypal, payto: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Payto, pix: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Pix, promptpay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Promptpay, qris: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Qris, radar_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Sofort, swish: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Swish, twint: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::WechatPay, zip: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData::Zip).void
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
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
            attr_accessor :custom_mandate_url
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: String, payment_schedule: String, transaction_type: String).void
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
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions, setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
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
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
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
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(String) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: String, setup_future_usage: String).void
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
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
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(preferred_language: String, setup_future_usage: T.nilable(String)).void }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(String) }
          attr_accessor :code
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
          attr_accessor :setup_future_usage
          sig { params(code: String, setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(Integer) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: T.nilable(String)).void }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(Integer) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(String) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`.
              sig { returns(String) }
              attr_accessor :type
              sig { params(count: Integer, interval: String, type: String).void }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan))
             }
            attr_accessor :plan
            sig {
              params(enabled: T::Boolean, plan: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments::Plan)).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
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
          class StatementDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(String) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(String) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(String) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(String) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(String) }
              attr_accessor :state
              sig {
                params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            # Please pass in an address that is within your Stripe user account country
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::StatementDetails::Address)
             }
            attr_accessor :address
            # Phone number (e.g., a toll-free number that customers can call)
            sig { returns(String) }
            attr_accessor :phone
            sig {
              params(address: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::StatementDetails::Address, phone: String).void
             }
            def initialize(address: nil, phone: nil); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(String) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, exemption_indicator: String, network_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
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
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(String) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent (Mexico Only).
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments)
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_decremental_authorization
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_overcapture
          # Request partial authorization on this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_partial_authorization
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T::Boolean) }
          attr_accessor :require_cvc_recollection
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
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # Statement details for this payment intent. You can use this to override the merchant details shown on your customers' statements.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::StatementDetails))
           }
          attr_accessor :statement_details
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: String, installments: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::Installments, mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_decremental_authorization: String, request_extended_authorization: String, request_incremental_authorization: String, request_multicapture: String, request_overcapture: String, request_partial_authorization: String, request_three_d_secure: String, require_cvc_recollection: T::Boolean, setup_future_usage: T.nilable(String), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), statement_details: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::StatementDetails), three_d_secure: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_decremental_authorization: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_partial_authorization: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            statement_details: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(String) }
            attr_accessor :requested_priority
            sig { params(requested_priority: String).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T::Boolean) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T::Boolean) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing)
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T::Boolean, request_incremental_authorization_support: T::Boolean, routing: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent::Routing).void
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
          attr_accessor :capture_method
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
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
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
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T::Array[String]) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer, requested_address_types: T::Array[String], type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer)
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer, funding_type: String, setup_future_usage: String).void
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Gopay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class IdBankTransfer < Stripe::RequestParams
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from 5 minutes from now until 31 days from now. If unset, it defaults to 3 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_after
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(Integer), expires_at: T.nilable(Integer), product_description: T.nilable(String), setup_future_usage: String).void
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: String, setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class MbWay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(capture_method: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(Integer) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T::Boolean) }
          attr_accessor :tos_shown_and_accepted
          sig { params(setup_future_usage: String, tos_shown_and_accepted: T::Boolean).void }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # The tax for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              attr_accessor :amount
              # The tax behavior for the line item.
              sig { returns(String) }
              attr_accessor :behavior
              sig { params(amount: Integer, behavior: String).void }
              def initialize(amount: nil, behavior: nil); end
            end
            # Type of the line item.
            sig { returns(String) }
            attr_accessor :category
            # Description of the line item.
            sig { returns(String) }
            attr_accessor :description
            # Descriptive name of the line item.
            sig { returns(String) }
            attr_accessor :name
            # Quantity of the line item. Must be a positive number.
            sig { returns(Integer) }
            attr_accessor :quantity
            # Client facing stock keeping unit, article number or similar.
            sig { returns(String) }
            attr_accessor :sku
            # The Stripe account ID of the connected account that sells the item.
            sig { returns(String) }
            attr_accessor :sold_by
            # The tax information for the line item.
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal::LineItem::Tax)
             }
            attr_accessor :tax
            # Price for a single unit of the line item in minor units. Cannot be a negative number.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            sig {
              params(category: String, description: String, name: String, quantity: Integer, sku: String, sold_by: String, tax: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal::LineItem::Tax, unit_amount: Integer).void
             }
            def initialize(
              category: nil,
              description: nil,
              name: nil,
              quantity: nil,
              sku: nil,
              sold_by: nil,
              tax: nil,
              unit_amount: nil
            ); end
          end
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # The line items purchased by the customer.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal::LineItem])
           }
          attr_accessor :line_items
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(String) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference_id
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(capture_method: T.nilable(String), line_items: T::Array[::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal::LineItem], preferred_locale: String, reference: String, reference_id: String, risk_correlation_id: String, setup_future_usage: T.nilable(String), subsellers: T::Array[String]).void
           }
          def initialize(
            capture_method: nil,
            line_items: nil,
            preferred_locale: nil,
            reference: nil,
            reference_id: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil,
            subsellers: nil
          ); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil
            ); end
          end
          # Additional fields for Mandate creation. Only `purpose` field is configurable for PayTo PaymentIntent with `setup_future_usage=none`. Other fields are only applicable to PayTo PaymentIntent with `setup_future_usage=off_session`
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Pix < Stripe::RequestParams
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(Integer) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_seconds: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after_seconds: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Qris < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Rechnung < Stripe::RequestParams

        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Shopeepay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(String)) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_settlement_speed
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
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks, preferred_settlement_speed: T.nilable(String), setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(String) }
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(app_id: String, client: String, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps)) }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx)) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay))
         }
        attr_accessor :giropay
        # If this is a `gopay` PaymentMethod, this sub-hash contains details about the GoPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Gopay))
         }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay))
         }
        attr_accessor :grabpay
        # If this is a `id_bank_transfer` PaymentMethod, this sub-hash contains details about the Indonesia Bank Transfer payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::IdBankTransfer))
         }
        attr_accessor :id_bank_transfer
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link))
         }
        attr_accessor :link
        # If this is a `mb_way` PaymentMethod, this sub-hash contains details about the MB WAY payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::MbWay))
         }
        attr_accessor :mb_way
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24)) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this sub-hash contains details about the PayTo payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payto))
         }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix)) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay))
         }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this sub-hash contains details about the QRIS payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Qris))
         }
        attr_accessor :qris
        # If this is a `rechnung` PaymentMethod, this sub-hash contains details about the Rechnung payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Rechnung))
         }
        attr_accessor :rechnung
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `shopeepay` PaymentMethod, this sub-hash contains details about the ShopeePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Shopeepay))
         }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip)) }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alipay), alma: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Bancontact), blik: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Blik), boleto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Boleto), card: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CardPresent), cashapp: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Cashapp), customer_balance: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Eps), fpx: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Giropay), gopay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Gopay), grabpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Grabpay), id_bank_transfer: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::IdBankTransfer), ideal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::KrCard), link: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Link), mb_way: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::MbWay), mobilepay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::NaverPay), oxxo: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payco), paynow: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Promptpay), qris: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Qris), rechnung: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Rechnung), revolut_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SamsungPay), sepa_debit: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::SepaDebit), shopeepay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Shopeepay), sofort: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Sofort), swish: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Swish), twint: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Twint), us_bank_account: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions::Zip)).void
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
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(String) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(String) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(String) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntent::UpdateParams::Shipping::Address, carrier: String, name: String, phone: String, tracking_number: String).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(amount: Integer).void }
        def initialize(amount: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # Controls when the funds will be captured from the customer's account.
      sig { returns(String) }
      attr_accessor :capture_method
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # This hash contains details about the Mandate to create.
      sig { returns(::Stripe::PaymentIntent::UpdateParams::MandateData) }
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentDetails)) }
      attr_accessor :payment_details
      # Attribute for param field payment_method
      sig { returns(String) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(String) }
      attr_accessor :payment_method_configuration
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment-method-specific configuration for this PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T::Array[String]) }
      attr_accessor :payment_method_types
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
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
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::UpdateParams::Shipping)) }
      attr_accessor :shipping
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(String) }
      attr_accessor :statement_descriptor_suffix
      # Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(::Stripe::PaymentIntent::UpdateParams::TransferData) }
      attr_accessor :transfer_data
      # A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(String) }
      attr_accessor :transfer_group
      sig {
        params(amount: Integer, application_fee_amount: T.nilable(Integer), async_workflows: ::Stripe::PaymentIntent::UpdateParams::AsyncWorkflows, capture_method: String, currency: String, customer: String, description: String, expand: T::Array[String], mandate_data: ::Stripe::PaymentIntent::UpdateParams::MandateData, metadata: T.nilable(T::Hash[String, String]), payment_details: T.nilable(::Stripe::PaymentIntent::UpdateParams::PaymentDetails), payment_method: String, payment_method_configuration: String, payment_method_data: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodData, payment_method_options: ::Stripe::PaymentIntent::UpdateParams::PaymentMethodOptions, payment_method_types: T::Array[String], receipt_email: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::PaymentIntent::UpdateParams::Shipping), statement_descriptor: String, statement_descriptor_suffix: String, transfer_data: ::Stripe::PaymentIntent::UpdateParams::TransferData, transfer_group: String).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        async_workflows: nil,
        capture_method: nil,
        currency: nil,
        customer: nil,
        description: nil,
        expand: nil,
        mandate_data: nil,
        metadata: nil,
        payment_details: nil,
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
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(String) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for payment intents](https://stripe.com/docs/search#query-fields-for-payment-intents).
      sig { returns(String) }
      attr_accessor :query
      sig { params(expand: T::Array[String], limit: Integer, page: String, query: String).void }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class ApplyCustomerBalanceParams < Stripe::RequestParams
      # Amount that you intend to apply to this PaymentIntent from the customer’s cash balance. If the PaymentIntent was created by an Invoice, the full amount of the PaymentIntent is applied regardless of this parameter.
      #
      # A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (for example, 100 cents to charge 1 USD or 100 to charge 100 JPY, a zero-decimal currency). The maximum amount is the amount of the PaymentIntent.
      #
      # When you omit the amount, it defaults to the remaining amount requested on the PaymentIntent.
      sig { returns(Integer) }
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(amount: Integer, currency: String, expand: T::Array[String]).void }
      def initialize(amount: nil, currency: nil, expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
      sig { returns(String) }
      attr_accessor :cancellation_reason
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(cancellation_reason: String, expand: T::Array[String]).void }
      def initialize(cancellation_reason: nil, expand: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig { returns(::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows::Inputs::Tax) }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig { returns(::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows::Inputs) }
        attr_accessor :inputs
        sig { params(inputs: ::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows::Inputs).void }
        def initialize(inputs: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Delivery)
           }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::PickupAddress)
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::ReturnAddress)
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Address)
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Affiliate)
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Delivery)
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription::Affiliate)
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::CarRental, event_details: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::EventDetails, flight: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Flight, lodging: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Lodging, subscription: ::Stripe::PaymentIntent::CaptureParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(amount: Integer).void }
        def initialize(amount: nil); end
      end
      # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Any additional amount is automatically refunded. Defaults to the full `amount_capturable` if it's not provided.
      sig { returns(Integer) }
      attr_accessor :amount_to_capture
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
      sig { returns(T::Boolean) }
      attr_accessor :final_capture
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::PaymentIntent::CaptureParams::PaymentDetails)) }
      attr_accessor :payment_details
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(String) }
      attr_accessor :statement_descriptor_suffix
      # The parameters that you can use to automatically create a transfer after the payment
      # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(::Stripe::PaymentIntent::CaptureParams::TransferData) }
      attr_accessor :transfer_data
      sig {
        params(amount_to_capture: Integer, application_fee_amount: Integer, async_workflows: ::Stripe::PaymentIntent::CaptureParams::AsyncWorkflows, expand: T::Array[String], final_capture: T::Boolean, metadata: T.nilable(T::Hash[String, String]), payment_details: T.nilable(::Stripe::PaymentIntent::CaptureParams::PaymentDetails), statement_descriptor: String, statement_descriptor_suffix: String, transfer_data: ::Stripe::PaymentIntent::CaptureParams::TransferData).void
       }
      def initialize(
        amount_to_capture: nil,
        application_fee_amount: nil,
        async_workflows: nil,
        expand: nil,
        final_capture: nil,
        metadata: nil,
        payment_details: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil
      ); end
    end
    class ConfirmParams < Stripe::RequestParams
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows::Inputs::Tax) }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows::Inputs) }
        attr_accessor :inputs
        sig { params(inputs: ::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows::Inputs).void }
        def initialize(inputs: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams

          end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :user_agent
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(Integer) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline)
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online)
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: Integer, offline: ::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline, online: ::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance::Online, type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance) }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::PaymentIntent::ConfirmParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Delivery)
           }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::PickupAddress)
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::ReturnAddress)
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Address)
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Affiliate)
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Delivery)
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Affiliate)
           }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription::Affiliate)
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::CarRental, event_details: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::EventDetails, flight: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Flight, lodging: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Lodging, subscription: ::Stripe::PaymentIntent::ConfirmParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          attr_accessor :account_number
          # Institution number of the customer's bank.
          sig { returns(String) }
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          sig { returns(String) }
          attr_accessor :transit_number
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams

        end
        class AfterpayClearpay < Stripe::RequestParams

        end
        class Alipay < Stripe::RequestParams

        end
        class Alma < Stripe::RequestParams

        end
        class AmazonPay < Stripe::RequestParams

        end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(String) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(String) }
          attr_accessor :sort_code
          sig { params(account_number: String, sort_code: String).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams

        end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address))
           }
          attr_accessor :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig {
            params(address: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Blik < Stripe::RequestParams

        end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams

        end
        class CustomerBalance < Stripe::RequestParams

        end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(String) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: String, bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams

        end
        class Gopay < Stripe::RequestParams

        end
        class Grabpay < Stripe::RequestParams

        end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams

        end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna::Dob).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams

        end
        class KrCard < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams

        end
        class MbWay < Stripe::RequestParams

        end
        class Mobilepay < Stripe::RequestParams

        end
        class Multibanco < Stripe::RequestParams

        end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(String) }
          attr_accessor :funding
          sig { params(funding: String).void }
          def initialize(funding: nil); end
        end
        class Oxxo < Stripe::RequestParams

        end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(bank: String).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams

        end
        class Paynow < Stripe::RequestParams

        end
        class Paypal < Stripe::RequestParams

        end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          # The PayID alias for the bank account.
          sig { returns(String) }
          attr_accessor :pay_id
          sig { params(account_number: String, bsb_number: String, pay_id: String).void }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams

        end
        class Promptpay < Stripe::RequestParams

        end
        class Qris < Stripe::RequestParams

        end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(String) }
          attr_accessor :session
          sig { params(session: String).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob) }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
        end
        class RevolutPay < Stripe::RequestParams

        end
        class SamsungPay < Stripe::RequestParams

        end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Shopeepay < Stripe::RequestParams

        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams

        end
        class Twint < Stripe::RequestParams

        end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(String) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(String) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(String) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(String) }
          attr_accessor :routing_number
          sig {
            params(account_holder_type: String, account_number: String, account_type: String, financial_connections_account: String, routing_number: String).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams

        end
        class Zip < Stripe::RequestParams

        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay) }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails) }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance) }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::IdBankTransfer) }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent) }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank) }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions) }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount) }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::BillingDetails, blik: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Blik, boleto: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Boleto, cashapp: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Eps, fpx: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Fpx, giropay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Giropay, gopay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Gopay, grabpay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Ideal, interac_present: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Klarna, konbini: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Konbini, kr_card: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::KrCard, link: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Link, mb_way: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Oxxo, p24: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::P24, pay_by_bank: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::PayByBank, payco: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payco, paynow: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paynow, paypal: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Paypal, payto: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Payto, pix: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Pix, promptpay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Promptpay, qris: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Qris, radar_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Sofort, swish: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Swish, twint: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::WechatPay, zip: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData::Zip).void
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
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
            attr_accessor :custom_mandate_url
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: String, payment_schedule: String, transaction_type: String).void
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
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions, setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
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
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
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
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(String) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: String, setup_future_usage: String).void
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
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
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(preferred_language: String, setup_future_usage: T.nilable(String)).void }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(String) }
          attr_accessor :code
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
          attr_accessor :setup_future_usage
          sig { params(code: String, setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(Integer) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: T.nilable(String)).void }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(Integer) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(String) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`.
              sig { returns(String) }
              attr_accessor :type
              sig { params(count: Integer, interval: String, type: String).void }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan))
             }
            attr_accessor :plan
            sig {
              params(enabled: T::Boolean, plan: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan)).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
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
          class StatementDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(String) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(String) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(String) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(String) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(String) }
              attr_accessor :state
              sig {
                params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
            # Please pass in an address that is within your Stripe user account country
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::StatementDetails::Address)
             }
            attr_accessor :address
            # Phone number (e.g., a toll-free number that customers can call)
            sig { returns(String) }
            attr_accessor :phone
            sig {
              params(address: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::StatementDetails::Address, phone: String).void
             }
            def initialize(address: nil, phone: nil); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(String) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, exemption_indicator: String, network_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
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
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(String) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent (Mexico Only).
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments)
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_decremental_authorization
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_overcapture
          # Request partial authorization on this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_partial_authorization
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T::Boolean) }
          attr_accessor :require_cvc_recollection
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
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # Statement details for this payment intent. You can use this to override the merchant details shown on your customers' statements.
          sig {
            returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::StatementDetails))
           }
          attr_accessor :statement_details
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: String, installments: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::Installments, mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_decremental_authorization: String, request_extended_authorization: String, request_incremental_authorization: String, request_multicapture: String, request_overcapture: String, request_partial_authorization: String, request_three_d_secure: String, require_cvc_recollection: T::Boolean, setup_future_usage: T.nilable(String), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), statement_details: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::StatementDetails), three_d_secure: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_decremental_authorization: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_partial_authorization: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            statement_details: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(String) }
            attr_accessor :requested_priority
            sig { params(requested_priority: String).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T::Boolean) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T::Boolean) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing)
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T::Boolean, request_incremental_authorization_support: T::Boolean, routing: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent::Routing).void
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
          attr_accessor :capture_method
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
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
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
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T::Array[String]) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer, requested_address_types: T::Array[String], type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer)
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer, funding_type: String, setup_future_usage: String).void
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Gopay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class IdBankTransfer < Stripe::RequestParams
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from 5 minutes from now until 31 days from now. If unset, it defaults to 3 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_after
          # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams

        end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(String) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: String, setup_future_usage: String).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(Integer), expires_at: T.nilable(Integer), product_description: T.nilable(String), setup_future_usage: String).void
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
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: String, setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class MbWay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(capture_method: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(Integer) }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(expires_after_days: Integer, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T::Boolean) }
          attr_accessor :tos_shown_and_accepted
          sig { params(setup_future_usage: String, tos_shown_and_accepted: T::Boolean).void }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams

        end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # The tax for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              attr_accessor :amount
              # The tax behavior for the line item.
              sig { returns(String) }
              attr_accessor :behavior
              sig { params(amount: Integer, behavior: String).void }
              def initialize(amount: nil, behavior: nil); end
            end
            # Type of the line item.
            sig { returns(String) }
            attr_accessor :category
            # Description of the line item.
            sig { returns(String) }
            attr_accessor :description
            # Descriptive name of the line item.
            sig { returns(String) }
            attr_accessor :name
            # Quantity of the line item. Must be a positive number.
            sig { returns(Integer) }
            attr_accessor :quantity
            # Client facing stock keeping unit, article number or similar.
            sig { returns(String) }
            attr_accessor :sku
            # The Stripe account ID of the connected account that sells the item.
            sig { returns(String) }
            attr_accessor :sold_by
            # The tax information for the line item.
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal::LineItem::Tax)
             }
            attr_accessor :tax
            # Price for a single unit of the line item in minor units. Cannot be a negative number.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            sig {
              params(category: String, description: String, name: String, quantity: Integer, sku: String, sold_by: String, tax: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal::LineItem::Tax, unit_amount: Integer).void
             }
            def initialize(
              category: nil,
              description: nil,
              name: nil,
              quantity: nil,
              sku: nil,
              sold_by: nil,
              tax: nil,
              unit_amount: nil
            ); end
          end
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # The line items purchased by the customer.
          sig {
            returns(T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal::LineItem])
           }
          attr_accessor :line_items
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(String) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(String) }
          attr_accessor :reference_id
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(String) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(capture_method: T.nilable(String), line_items: T::Array[::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal::LineItem], preferred_locale: String, reference: String, reference_id: String, risk_correlation_id: String, setup_future_usage: T.nilable(String), subsellers: T::Array[String]).void
           }
          def initialize(
            capture_method: nil,
            line_items: nil,
            preferred_locale: nil,
            reference: nil,
            reference_id: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil,
            subsellers: nil
          ); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil
            ); end
          end
          # Additional fields for Mandate creation. Only `purpose` field is configurable for PayTo PaymentIntent with `setup_future_usage=none`. Other fields are only applicable to PayTo PaymentIntent with `setup_future_usage=off_session`
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Pix < Stripe::RequestParams
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(Integer) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(Integer) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_seconds: Integer, expires_at: Integer, setup_future_usage: String).void
           }
          def initialize(expires_after_seconds: nil, expires_at: nil, setup_future_usage: nil); end
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Qris < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Rechnung < Stripe::RequestParams

        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
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
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions, setup_future_usage: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil); end
        end
        class Shopeepay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(String)) }
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
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_settlement_speed
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
          attr_accessor :setup_future_usage
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks, preferred_settlement_speed: T.nilable(String), setup_future_usage: T.nilable(String), verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(String) }
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
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(app_id: String, client: String, setup_future_usage: String).void }
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
          sig { returns(String) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: String).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps))
         }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay))
         }
        attr_accessor :giropay
        # If this is a `gopay` PaymentMethod, this sub-hash contains details about the GoPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Gopay))
         }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay))
         }
        attr_accessor :grabpay
        # If this is a `id_bank_transfer` PaymentMethod, this sub-hash contains details about the Indonesia Bank Transfer payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::IdBankTransfer))
         }
        attr_accessor :id_bank_transfer
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link))
         }
        attr_accessor :link
        # If this is a `mb_way` PaymentMethod, this sub-hash contains details about the MB WAY payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::MbWay))
         }
        attr_accessor :mb_way
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this sub-hash contains details about the PayTo payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payto))
         }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay))
         }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this sub-hash contains details about the QRIS payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Qris))
         }
        attr_accessor :qris
        # If this is a `rechnung` PaymentMethod, this sub-hash contains details about the Rechnung payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Rechnung))
         }
        attr_accessor :rechnung
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `shopeepay` PaymentMethod, this sub-hash contains details about the ShopeePay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Shopeepay))
         }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alipay), alma: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Bancontact), blik: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Blik), boleto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Boleto), card: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CardPresent), cashapp: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Cashapp), customer_balance: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Eps), fpx: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Fpx), giropay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Giropay), gopay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Gopay), grabpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Grabpay), id_bank_transfer: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::IdBankTransfer), ideal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Ideal), interac_present: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Klarna), konbini: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Konbini), kr_card: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::KrCard), link: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Link), mb_way: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::MbWay), mobilepay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::NaverPay), oxxo: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::PayByBank), payco: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payco), paynow: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paynow), paypal: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Pix), promptpay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Promptpay), qris: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Qris), rechnung: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Rechnung), revolut_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SamsungPay), sepa_debit: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::SepaDebit), shopeepay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Shopeepay), sofort: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Sofort), swish: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Swish), twint: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Twint), us_bank_account: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::WechatPay), zip: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions::Zip)).void
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
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          gopay: nil,
          grabpay: nil,
          id_bank_transfer: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          mb_way: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          sepa_debit: nil,
          shopeepay: nil,
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
        sig { returns(String) }
        attr_accessor :session
        sig { params(session: String).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(String) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(String) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(String) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntent::ConfirmParams::Shipping::Address, carrier: String, name: String, phone: String, tracking_number: String).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # Controls when the funds will be captured from the customer's account.
      sig { returns(String) }
      attr_accessor :capture_method
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(String) }
      attr_accessor :confirmation_token
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication).
      sig { returns(T::Boolean) }
      attr_accessor :error_on_requires_action
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # ID of the mandate that's used for this payment.
      sig { returns(String) }
      attr_accessor :mandate
      # Attribute for param field mandate_data
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData)) }
      attr_accessor :mandate_data
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards).
      sig { returns(T.any(T::Boolean, String)) }
      attr_accessor :off_session
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails)) }
      attr_accessor :payment_details
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
      sig { returns(String) }
      attr_accessor :payment_method
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, a card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T::Array[String]) }
      attr_accessor :payment_method_types
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(::Stripe::PaymentIntent::ConfirmParams::RadarOptions) }
      attr_accessor :radar_options
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(String) }
      attr_accessor :return_url
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
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntent::ConfirmParams::Shipping)) }
      attr_accessor :shipping
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T::Boolean) }
      attr_accessor :use_stripe_sdk
      sig {
        params(application_fee_amount: T.nilable(Integer), async_workflows: ::Stripe::PaymentIntent::ConfirmParams::AsyncWorkflows, capture_method: String, confirmation_token: String, error_on_requires_action: T::Boolean, expand: T::Array[String], mandate: String, mandate_data: T.nilable(::Stripe::PaymentIntent::ConfirmParams::MandateData), off_session: T.any(T::Boolean, String), payment_details: T.nilable(::Stripe::PaymentIntent::ConfirmParams::PaymentDetails), payment_method: String, payment_method_data: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodData, payment_method_options: ::Stripe::PaymentIntent::ConfirmParams::PaymentMethodOptions, payment_method_types: T::Array[String], radar_options: ::Stripe::PaymentIntent::ConfirmParams::RadarOptions, receipt_email: T.nilable(String), return_url: String, setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::PaymentIntent::ConfirmParams::Shipping), use_stripe_sdk: T::Boolean).void
       }
      def initialize(
        application_fee_amount: nil,
        async_workflows: nil,
        capture_method: nil,
        confirmation_token: nil,
        error_on_requires_action: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        off_session: nil,
        payment_details: nil,
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
    class DecrementAuthorizationParams < Stripe::RequestParams
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig {
            returns(::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows::Inputs::Tax)
           }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig {
          returns(::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows::Inputs)
         }
        attr_accessor :inputs
        sig {
          params(inputs: ::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows::Inputs).void
         }
        def initialize(inputs: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(amount: Integer).void }
        def initialize(amount: nil); end
      end
      # The updated total amount that you intend to collect from the cardholder. This amount must be smaller than the currently authorized amount and greater than the already captured amount.
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The parameters used to automatically create a transfer after the payment is captured.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(::Stripe::PaymentIntent::DecrementAuthorizationParams::TransferData) }
      attr_accessor :transfer_data
      sig {
        params(amount: Integer, application_fee_amount: Integer, async_workflows: ::Stripe::PaymentIntent::DecrementAuthorizationParams::AsyncWorkflows, description: String, expand: T::Array[String], metadata: T::Hash[String, String], transfer_data: ::Stripe::PaymentIntent::DecrementAuthorizationParams::TransferData).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        async_workflows: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        transfer_data: nil
      ); end
    end
    class IncrementAuthorizationParams < Stripe::RequestParams
      class AsyncWorkflows < Stripe::RequestParams
        class Inputs < Stripe::RequestParams
          class Tax < Stripe::RequestParams
            # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
            sig { returns(T.nilable(String)) }
            attr_accessor :calculation
            sig { params(calculation: T.nilable(String)).void }
            def initialize(calculation: nil); end
          end
          # Tax arguments for automations
          sig {
            returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows::Inputs::Tax)
           }
          attr_accessor :tax
          sig {
            params(tax: ::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows::Inputs::Tax).void
           }
          def initialize(tax: nil); end
        end
        # Arguments passed in automations
        sig {
          returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows::Inputs)
         }
        attr_accessor :inputs
        sig {
          params(inputs: ::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows::Inputs).void
         }
        def initialize(inputs: nil); end
      end
      class PaymentMethodOptions < Stripe::RequestParams
        class Card < Stripe::RequestParams
          # Request partial authorization on this PaymentIntent.
          sig { returns(String) }
          attr_accessor :request_partial_authorization
          sig { params(request_partial_authorization: String).void }
          def initialize(request_partial_authorization: nil); end
        end
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::PaymentMethodOptions::Card)
         }
        attr_accessor :card
        sig {
          params(card: ::Stripe::PaymentIntent::IncrementAuthorizationParams::PaymentMethodOptions::Card).void
         }
        def initialize(card: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(amount: Integer).void }
        def initialize(amount: nil); end
      end
      # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Automations to be run during the PaymentIntent lifecycle
      sig { returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows) }
      attr_accessor :async_workflows
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # The parameters used to automatically create a transfer after the payment is captured.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData) }
      attr_accessor :transfer_data
      sig {
        params(amount: Integer, application_fee_amount: Integer, async_workflows: ::Stripe::PaymentIntent::IncrementAuthorizationParams::AsyncWorkflows, description: String, expand: T::Array[String], metadata: T::Hash[String, String], payment_method_options: ::Stripe::PaymentIntent::IncrementAuthorizationParams::PaymentMethodOptions, statement_descriptor: String, transfer_data: ::Stripe::PaymentIntent::IncrementAuthorizationParams::TransferData).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        async_workflows: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        payment_method_options: nil,
        statement_descriptor: nil,
        transfer_data: nil
      ); end
    end
    class VerifyMicrodepositsParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T::Array[Integer]) }
      attr_accessor :amounts
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      sig { returns(String) }
      attr_accessor :descriptor_code
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig {
        params(amounts: T::Array[Integer], descriptor_code: String, expand: T::Array[String]).void
       }
      def initialize(amounts: nil, descriptor_code: nil, expand: nil); end
    end
    class TriggerActionParams < Stripe::RequestParams
      class ScanQrCode < Stripe::RequestParams
        # Whether the QR Code scan's payment should succeed or fail.
        sig { returns(String) }
        attr_accessor :result
        sig { params(result: String).void }
        def initialize(result: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # True to simulate success, false to simulate failure.
      sig { returns(::Stripe::PaymentIntent::TriggerActionParams::ScanQrCode) }
      attr_accessor :scan_qr_code
      # The type of action to be simulated.
      sig { returns(String) }
      attr_accessor :type
      sig {
        params(expand: T::Array[String], scan_qr_code: ::Stripe::PaymentIntent::TriggerActionParams::ScanQrCode, type: String).void
       }
      def initialize(expand: nil, scan_qr_code: nil, type: nil); end
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

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def cancel(params = {}, opts = {}); end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.cancel(intent, params = {}, opts = {}); end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def capture(params = {}, opts = {}); end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.capture(intent, params = {}, opts = {}); end

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
    sig {
      params(params: T.any(::Stripe::PaymentIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def confirm(params = {}, opts = {}); end

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
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.confirm(intent, params = {}, opts = {}); end

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
    sig {
      params(params: T.any(::Stripe::PaymentIntent::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.create(params = {}, opts = {}); end

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
    sig {
      params(params: T.any(::Stripe::PaymentIntent::DecrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def decrement_authorization(params = {}, opts = {}); end

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
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::DecrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.decrement_authorization(intent, params = {}, opts = {}); end

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
    sig {
      params(params: T.any(::Stripe::PaymentIntent::IncrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def increment_authorization(params = {}, opts = {}); end

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

    # Trigger an external action on a PaymentIntent.
    sig {
      params(params: T.any(::Stripe::PaymentIntent::TriggerActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def trigger_action(params = {}, opts = {}); end

    # Trigger an external action on a PaymentIntent.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntent::TriggerActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.trigger_action(intent, params = {}, opts = {}); end

    # Updates properties on a PaymentIntent object without confirming.
    #
    # Depending on which properties you update, you might need to confirm the
    # PaymentIntent again. For example, updating the payment_method
    # always requires you to confirm the PaymentIntent again. If you prefer to
    # update and confirm at the same time, we recommend updating properties through
    # the [confirm API](https://stripe.com/docs/api/payment_intents/confirm) instead.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentIntent::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def self.update(id, params = {}, opts = {}); end

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