# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
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
  class SetupIntent < APIResource
    class AutomaticPaymentMethods < Stripe::StripeObject
      # Controls whether this SetupIntent will accept redirect-based payment methods.
      #
      # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
      sig { returns(T.nilable(String)) }
      def allow_redirects; end
      # Automatically calculates compatible payment methods
      sig { returns(T.nilable(T::Boolean)) }
      def enabled; end
    end
    class LastSetupError < Stripe::StripeObject
      # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines) if they provide one.
      sig { returns(T.nilable(String)) }
      def advice_code; end
      # For card errors, the ID of the failed charge.
      sig { returns(T.nilable(String)) }
      def charge; end
      # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(T.nilable(String)) }
      def code; end
      # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
      sig { returns(T.nilable(String)) }
      def decline_code; end
      # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
      sig { returns(T.nilable(String)) }
      def doc_url; end
      # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
      sig { returns(T.nilable(String)) }
      def message; end
      # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
      sig { returns(T.nilable(String)) }
      def network_advice_code; end
      # For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
      sig { returns(T.nilable(String)) }
      def network_decline_code; end
      # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
      sig { returns(T.nilable(String)) }
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
      sig { returns(T.nilable(Stripe::PaymentIntent)) }
      def payment_intent; end
      # PaymentMethod objects represent your customer's payment instruments.
      # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
      # Customer objects to store instrument details for future payments.
      #
      # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
      sig { returns(T.nilable(Stripe::PaymentMethod)) }
      def payment_method; end
      # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
      sig { returns(T.nilable(String)) }
      def payment_method_type; end
      # A URL to the request log entry in your dashboard.
      sig { returns(T.nilable(String)) }
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
      sig { returns(T.nilable(Stripe::SetupIntent)) }
      def setup_intent; end
      # Attribute for field source
      sig {
        returns(T.nilable(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))
       }
      def source; end
      # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
      sig { returns(String) }
      def type; end
    end
    class NextAction < Stripe::StripeObject
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
      class PixDisplayQrCode < Stripe::StripeObject
        # The raw data string used to generate QR code, it should be used together with QR code library.
        sig { returns(T.nilable(String)) }
        def data; end
        # The date (unix timestamp) when the PIX expires.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # The URL to the hosted pix instructions page, which allows customers to view the pix QR code.
        sig { returns(T.nilable(String)) }
        def hosted_instructions_url; end
        # The image_url_png string used to render png QR code
        sig { returns(T.nilable(String)) }
        def image_url_png; end
        # The image_url_svg string used to render svg QR code
        sig { returns(T.nilable(String)) }
        def image_url_svg; end
      end
      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        def return_url; end
        # The URL you must redirect your customer to in order to authenticate.
        sig { returns(T.nilable(String)) }
        def url; end
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
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      sig { returns(T.nilable(CashappHandleRedirectOrDisplayQrCode)) }
      def cashapp_handle_redirect_or_display_qr_code; end
      # Attribute for field pix_display_qr_code
      sig { returns(T.nilable(PixDisplayQrCode)) }
      def pix_display_qr_code; end
      # Attribute for field redirect_to_url
      sig { returns(T.nilable(RedirectToUrl)) }
      def redirect_to_url; end
      # Type of the next action to perform. Refer to the other child attributes under `next_action` for available values. Examples include: `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      sig { returns(String) }
      def type; end
      # When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      sig { returns(T.nilable(T::Hash[String, T.untyped])) }
      def use_stripe_sdk; end
      # Attribute for field verify_with_microdeposits
      sig { returns(T.nilable(VerifyWithMicrodeposits)) }
      def verify_with_microdeposits; end
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
          sig { returns(T.nilable(String)) }
          def custom_mandate_url; end
          # List of Stripe products where this mandate can be selected automatically.
          sig { returns(T.nilable(T::Array[String])) }
          def default_for; end
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
        # Currency supported by the bank account
        sig { returns(T.nilable(String)) }
        def currency; end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
        # Bank account verification method.
        sig { returns(T.nilable(String)) }
        def verification_method; end
      end
      class AmazonPay < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
          sig { returns(T.nilable(String)) }
          def reference_prefix; end
        end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
      end
      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          sig { returns(Integer) }
          def amount; end
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          sig { returns(String) }
          def amount_type; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
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
        # Configuration options for setting up an eMandate for cards issued in India.
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
        # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
        sig { returns(T.nilable(String)) }
        def network; end
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        sig { returns(T.nilable(String)) }
        def request_three_d_secure; end
      end
      class CardPresent < Stripe::StripeObject; end
      class Klarna < Stripe::StripeObject
        # The currency of the setup intent. Three letter ISO currency code.
        sig { returns(T.nilable(String)) }
        def currency; end
        # Preferred locale of the Klarna checkout page that the customer is redirected to.
        sig { returns(T.nilable(String)) }
        def preferred_locale; end
      end
      class Link < Stripe::StripeObject
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(T.nilable(String)) }
        def persistent_token; end
      end
      class Paypal < Stripe::StripeObject
        # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
        sig { returns(T.nilable(String)) }
        def billing_agreement_id; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
        sig { returns(T.nilable(T::Array[String])) }
        def subsellers; end
      end
      class Payto < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount that will be collected. It is required when `amount_type` is `fixed`.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
          sig { returns(T.nilable(String)) }
          def amount_type; end
          # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
          sig { returns(T.nilable(String)) }
          def end_date; end
          # The periodicity at which payments will be collected.
          sig { returns(T.nilable(String)) }
          def payment_schedule; end
          # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
          sig { returns(T.nilable(Integer)) }
          def payments_per_period; end
          # The purpose for which payments are made. Defaults to retail.
          sig { returns(T.nilable(String)) }
          def purpose; end
          # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
          sig { returns(T.nilable(String)) }
          def start_date; end
        end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
      end
      class Pix < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # Determines if the amount includes the IOF tax.
          sig { returns(T.nilable(String)) }
          def amount_includes_iof; end
          # Type of amount.
          sig { returns(T.nilable(String)) }
          def amount_type; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          sig { returns(T.nilable(String)) }
          def currency; end
          # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`.
          sig { returns(T.nilable(String)) }
          def end_date; end
          # Schedule at which the future payments will be charged.
          sig { returns(T.nilable(String)) }
          def payment_schedule; end
          # Subscription name displayed to buyers in their bank app.
          sig { returns(T.nilable(String)) }
          def reference; end
          # Start date of the mandate, in `YYYY-MM-DD`.
          sig { returns(T.nilable(String)) }
          def start_date; end
        end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
      end
      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
          sig { returns(T.nilable(String)) }
          def reference_prefix; end
        end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
      end
      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
            sig { returns(T.nilable(T::Array[String])) }
            def account_subcategories; end
            # The institution to use to filter for possible accounts to link.
            sig { returns(T.nilable(String)) }
            def institution; end
          end
          class ManualEntry < Stripe::StripeObject
            # Settings for configuring manual entry of account details.
            sig { returns(T.nilable(String)) }
            def mode; end
          end
          # Attribute for field filters
          sig { returns(T.nilable(Filters)) }
          def filters; end
          # Attribute for field manual_entry
          sig { returns(T.nilable(ManualEntry)) }
          def manual_entry; end
          # The list of permissions to request. The `payment_method` permission must be included.
          sig { returns(T.nilable(T::Array[String])) }
          def permissions; end
          # Data features requested to be retrieved upon account creation.
          sig { returns(T.nilable(T::Array[String])) }
          def prefetch; end
          # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
          sig { returns(T.nilable(String)) }
          def return_url; end
        end
        class MandateOptions < Stripe::StripeObject
          # Mandate collection method
          sig { returns(T.nilable(String)) }
          def collection_method; end
        end
        # Attribute for field financial_connections
        sig { returns(T.nilable(FinancialConnections)) }
        def financial_connections; end
        # Attribute for field mandate_options
        sig { returns(T.nilable(MandateOptions)) }
        def mandate_options; end
        # Bank account verification method.
        sig { returns(T.nilable(String)) }
        def verification_method; end
      end
      # Attribute for field acss_debit
      sig { returns(T.nilable(AcssDebit)) }
      def acss_debit; end
      # Attribute for field amazon_pay
      sig { returns(T.nilable(AmazonPay)) }
      def amazon_pay; end
      # Attribute for field bacs_debit
      sig { returns(T.nilable(BacsDebit)) }
      def bacs_debit; end
      # Attribute for field card
      sig { returns(T.nilable(Card)) }
      def card; end
      # Attribute for field card_present
      sig { returns(T.nilable(CardPresent)) }
      def card_present; end
      # Attribute for field klarna
      sig { returns(T.nilable(Klarna)) }
      def klarna; end
      # Attribute for field link
      sig { returns(T.nilable(Link)) }
      def link; end
      # Attribute for field paypal
      sig { returns(T.nilable(Paypal)) }
      def paypal; end
      # Attribute for field payto
      sig { returns(T.nilable(Payto)) }
      def payto; end
      # Attribute for field pix
      sig { returns(T.nilable(Pix)) }
      def pix; end
      # Attribute for field sepa_debit
      sig { returns(T.nilable(SepaDebit)) }
      def sepa_debit; end
      # Attribute for field us_bank_account
      sig { returns(T.nilable(UsBankAccount)) }
      def us_bank_account; end
    end
    # ID of the Connect application that created the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    def application; end
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    sig { returns(T.nilable(T::Boolean)) }
    def attach_to_self; end
    # Settings for dynamic payment methods compatible with this Setup Intent
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    def automatic_payment_methods; end
    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    sig { returns(T.nilable(String)) }
    def cancellation_reason; end
    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    sig { returns(T.nilable(String)) }
    def client_secret; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # ID of the Customer this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    def customer; end
    # ID of the Account this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
    sig { returns(T.nilable(String)) }
    def customer_account; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    sig { returns(T.nilable(T::Array[String])) }
    def flow_directions; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The error encountered in the previous SetupIntent confirmation.
    sig { returns(T.nilable(LastSetupError)) }
    def last_setup_error; end
    # The most recent SetupAttempt for this SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
    def latest_attempt; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # ID of the multi use Mandate generated by the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    def mandate; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
    sig { returns(T.nilable(NextAction)) }
    def next_action; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The account (if any) for which the setup is intended.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    def on_behalf_of; end
    # ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    def payment_method; end
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this Setup Intent.
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    def payment_method_configuration_details; end
    # Payment method-specific configuration for this SetupIntent.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    def payment_method_options; end
    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up. A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
    sig { returns(T::Array[String]) }
    def payment_method_types; end
    # ID of the single_use Mandate generated by the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    def single_use_mandate; end
    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    sig { returns(String) }
    def status; end
    # Indicates how the payment method is intended to be used in the future.
    #
    # Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    sig { returns(String) }
    def usage; end
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
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      def attach_to_self; end
      sig { params(_attach_to_self: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def attach_to_self=(_attach_to_self); end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return SetupIntents for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Only return SetupIntents for the account specified by this customer ID.
      sig { returns(T.nilable(String)) }
      def customer_account; end
      sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
      def customer_account=(_customer_account); end
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
      # Only return SetupIntents that associate with the specified payment method.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(attach_to_self: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer)), customer: T.nilable(String), customer_account: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_method: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        attach_to_self: nil,
        created: nil,
        customer: nil,
        customer_account: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_method: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this SetupIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline=(_offline); end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          def online=(_online); end
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance) }
        def customer_acceptance; end
        sig {
          params(_customer_acceptance: ::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance).returns(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance)
         }
        def customer_acceptance=(_customer_acceptance); end
        sig {
          params(customer_acceptance: ::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance).void
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
            returns(T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails::Address)))
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
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
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
        class Gopay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class MbWay < Stripe::RequestParams; end
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
        class Paypay < Stripe::RequestParams; end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(T.nilable(String)) }
          def bsb_number; end
          sig { params(_bsb_number: T.nilable(String)).returns(T.nilable(String)) }
          def bsb_number=(_bsb_number); end
          # The PayID alias for the bank account.
          sig { returns(T.nilable(String)) }
          def pay_id; end
          sig { params(_pay_id: T.nilable(String)).returns(T.nilable(String)) }
          def pay_id=(_pay_id); end
          sig {
            params(account_number: T.nilable(String), bsb_number: T.nilable(String), pay_id: T.nilable(String)).void
           }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class Qris < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
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
          sig { returns(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung::Dob) }
          def dob; end
          sig {
            params(_dob: ::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung::Dob).returns(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung::Dob)
           }
          def dob=(_dob); end
          sig {
            params(dob: ::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
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
        class Shopeepay < Stripe::RequestParams; end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class StripeBalance < Stripe::RequestParams
          # The connected account ID whose Stripe balance to use as the source of payment
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
          sig { returns(T.nilable(String)) }
          def source_type; end
          sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
          def source_type=(_source_type); end
          sig { params(account: T.nilable(String), source_type: T.nilable(String)).void }
          def initialize(account: nil, source_type: nil); end
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
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm)) }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay)) }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie)) }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto)) }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp)) }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto)) }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay)) }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Gopay)) }
        def gopay; end
        sig {
          params(_gopay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Gopay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Gopay))
         }
        def gopay=(_gopay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay)) }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer; end
        sig {
          params(_id_bank_transfer: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::IdBankTransfer)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer=(_id_bank_transfer); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay)) }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna)) }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini)) }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard)) }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::MbWay)) }
        def mb_way; end
        sig {
          params(_mb_way: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::MbWay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::MbWay))
         }
        def mb_way=(_mb_way); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay)) }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow)) }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal)) }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `paypay` PaymentMethod, this hash contains details about the PayPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypay)) }
        def paypay; end
        sig {
          params(_paypay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypay))
         }
        def paypay=(_paypay); end
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payto)) }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payto)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Qris)) }
        def qris; end
        sig {
          params(_qris: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Qris)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Qris))
         }
        def qris=(_qris); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung)) }
        def rechnung; end
        sig {
          params(_rechnung: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung))
         }
        def rechnung=(_rechnung); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay)) }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay; end
        sig {
          params(_shopeepay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Shopeepay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay=(_shopeepay); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort)) }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # This hash contains details about the Stripe balance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance; end
        sig {
          params(_stripe_balance: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::StripeBalance)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance=(_stripe_balance); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay), gopay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Gopay), grabpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay), id_bank_transfer: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::IdBankTransfer), ideal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link), mb_way: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::MbWay), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal), paypay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypay), payto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payto), pix: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay), qris: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Qris), radar_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions), rechnung: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Rechnung), revolut_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit), shopeepay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Shopeepay), sofort: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort), stripe_balance: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::StripeBalance), swish: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip)).void
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
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          paypay: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          shopeepay: nil,
          sofort: nil,
          stripe_balance: nil,
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
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T.nilable(T::Array[String])) }
            def default_for; end
            sig {
              params(_default_for: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def default_for=(_default_for); end
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(currency: T.nilable(String), mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
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
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
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
              params(amount: Integer, amount_type: String, currency: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
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
                returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
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
            sig { returns(T.nilable(String)) }
            def cryptogram; end
            sig { params(_cryptogram: T.nilable(String)).returns(T.nilable(String)) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
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
            sig { returns(T.nilable(String)) }
            def transaction_id; end
            sig { params(_transaction_id: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            def version; end
            sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: T.nilable(String), electronic_commerce_indicator: T.nilable(String), network_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: T.nilable(String), version: T.nilable(String)).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_three_d_secure: T.nilable(String), three_d_secure: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams; end
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
              returns(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing; end
            sig {
              params(_next_billing: ::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling).returns(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: ::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling, reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # The currency of the SetupIntent. Three letter ISO currency code.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(currency: T.nilable(String), on_demand: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            currency: nil,
            on_demand: nil,
            preferred_locale: nil,
            subscriptions: nil
          ); end
        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          def billing_agreement_id; end
          sig { params(_billing_agreement_id: T.nilable(String)).returns(T.nilable(String)) }
          def billing_agreement_id=(_billing_agreement_id); end
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T.nilable(T::Array[String])) }
          def subsellers; end
          sig {
            params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def subsellers=(_subsellers); end
          sig {
            params(billing_agreement_id: T.nilable(String), currency: T.nilable(String), subsellers: T.nilable(T::Array[String])).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # The periodicity at which payments will be collected.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(T.nilable(Integer)) }
            def payments_per_period; end
            sig { params(_payments_per_period: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def payments_per_period=(_payments_per_period); end
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(T.nilable(String)) }
            def purpose; end
            sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
            def purpose=(_purpose); end
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_type: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), payments_per_period: T.nilable(Integer), purpose: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Pix < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments. Required when `amount_type=fixed`. If not provided for `amount_type=maximum`, defaults to 40000.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Determines if the amount includes the IOF tax. Defaults to `never`.
            sig { returns(T.nilable(String)) }
            def amount_includes_iof; end
            sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
            def amount_includes_iof=(_amount_includes_iof); end
            # Type of amount. Defaults to `maximum`.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Only `brl` is supported currently.
            sig { returns(T.nilable(String)) }
            def currency; end
            sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_currency); end
            # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # Schedule at which the future payments will be charged. Defaults to `weekly`.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Subscription name displayed to buyers in their bank app. Defaults to the displayable business name.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # Start date of the mandate, in `YYYY-MM-DD`. Start date should be at least 3 days in the future. Defaults to 3 days after the current date.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_includes_iof: T.nilable(String), amount_type: T.nilable(String), currency: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), reference: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_includes_iof: nil,
              amount_type: nil,
              currency: nil,
              end_date: nil,
              payment_schedule: nil,
              reference: nil,
              start_date: nil
            ); end
          end
          # Additional fields for mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(T.nilable(String)) }
              def institution; end
              sig { params(_institution: T.nilable(String)).returns(T.nilable(String)) }
              def institution=(_institution); end
              sig {
                params(account_subcategories: T.nilable(T::Array[String]), institution: T.nilable(String)).void
               }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              def mode; end
              sig { params(_mode: String).returns(String) }
              def mode=(_mode); end
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # Customize manual entry behavior
            sig {
              returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry; end
            sig {
              params(_manual_entry: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry=(_manual_entry); end
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
              params(filters: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), manual_entry: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card)) }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent))
         }
        def card_present=(_card_present); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link))
         }
        def link=(_link); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto)) }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` SetupIntent, this sub-hash contains details about the Pix payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix))
         }
        def pix=(_pix); end
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Pix), sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount)).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          klarna: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      class SingleUse < Stripe::RequestParams
        # Amount the customer is granting permission to collect later. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        sig { params(amount: Integer, currency: String).void }
        def initialize(amount: nil, currency: nil); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      def attach_to_self; end
      sig { params(_attach_to_self: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def attach_to_self=(_attach_to_self); end
      # When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods)) }
      def automatic_payment_methods; end
      sig {
        params(_automatic_payment_methods: T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods))
       }
      def automatic_payment_methods=(_automatic_payment_methods); end
      # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
      sig { returns(T.nilable(T::Boolean)) }
      def confirm; end
      sig { params(_confirm: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def confirm=(_confirm); end
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      def confirmation_token; end
      sig { params(_confirmation_token: T.nilable(String)).returns(T.nilable(String)) }
      def confirmation_token=(_confirmation_token); end
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # ID of the Account this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def customer_account; end
      sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
      def customer_account=(_customer_account); end
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
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T.nilable(T::Array[String])) }
      def flow_directions; end
      sig {
        params(_flow_directions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def flow_directions=(_flow_directions); end
      # This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData))) }
      def mandate_data; end
      sig {
        params(_mandate_data: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData))).returns(T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData)))
       }
      def mandate_data=(_mandate_data); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The Stripe account ID created for this SetupIntent.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def payment_method_configuration; end
      sig { params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_configuration=(_payment_method_configuration); end
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      def payment_method_types; end
      sig {
        params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def payment_method_types=(_payment_method_types); end
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.
      #
      # Single-use mandates are only valid for the following payment methods: `acss_debit`, `alipay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `boleto`, `ideal`, `link`, `sepa_debit`, and `us_bank_account`.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse)) }
      def single_use; end
      sig {
        params(_single_use: T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse)).returns(T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse))
       }
      def single_use=(_single_use); end
      # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
      sig { returns(T.nilable(String)) }
      def usage; end
      sig { params(_usage: T.nilable(String)).returns(T.nilable(String)) }
      def usage=(_usage); end
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk; end
      sig { params(_use_stripe_sdk: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk=(_use_stripe_sdk); end
      sig {
        params(attach_to_self: T.nilable(T::Boolean), automatic_payment_methods: T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods), confirm: T.nilable(T::Boolean), confirmation_token: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), flow_directions: T.nilable(T::Array[String]), mandate_data: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData)), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), single_use: T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse), usage: T.nilable(String), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        attach_to_self: nil,
        automatic_payment_methods: nil,
        confirm: nil,
        confirmation_token: nil,
        customer: nil,
        customer_account: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        mandate_data: nil,
        metadata: nil,
        on_behalf_of: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        return_url: nil,
        single_use: nil,
        usage: nil,
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
            returns(T.nilable(T.any(String, ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)))
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
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
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
        class Gopay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
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
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class MbWay < Stripe::RequestParams; end
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
        class Paypay < Stripe::RequestParams; end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(T.nilable(String)) }
          def bsb_number; end
          sig { params(_bsb_number: T.nilable(String)).returns(T.nilable(String)) }
          def bsb_number=(_bsb_number); end
          # The PayID alias for the bank account.
          sig { returns(T.nilable(String)) }
          def pay_id; end
          sig { params(_pay_id: T.nilable(String)).returns(T.nilable(String)) }
          def pay_id=(_pay_id); end
          sig {
            params(account_number: T.nilable(String), bsb_number: T.nilable(String), pay_id: T.nilable(String)).void
           }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class Qris < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
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
          sig { returns(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung::Dob) }
          def dob; end
          sig {
            params(_dob: ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung::Dob).returns(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung::Dob)
           }
          def dob=(_dob); end
          sig {
            params(dob: ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
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
        class Shopeepay < Stripe::RequestParams; end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class StripeBalance < Stripe::RequestParams
          # The connected account ID whose Stripe balance to use as the source of payment
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
          sig { returns(T.nilable(String)) }
          def source_type; end
          sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
          def source_type=(_source_type); end
          sig { params(account: T.nilable(String), source_type: T.nilable(String)).void }
          def initialize(account: nil, source_type: nil); end
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
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm)) }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay)) }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie)) }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto)) }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp)) }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto)) }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay)) }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Gopay)) }
        def gopay; end
        sig {
          params(_gopay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Gopay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Gopay))
         }
        def gopay=(_gopay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay)) }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer; end
        sig {
          params(_id_bank_transfer: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::IdBankTransfer)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer=(_id_bank_transfer); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay)) }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna)) }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini)) }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard)) }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::MbWay)) }
        def mb_way; end
        sig {
          params(_mb_way: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::MbWay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::MbWay))
         }
        def mb_way=(_mb_way); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay)) }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow)) }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal)) }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `paypay` PaymentMethod, this hash contains details about the PayPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypay)) }
        def paypay; end
        sig {
          params(_paypay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypay))
         }
        def paypay=(_paypay); end
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payto)) }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payto)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Qris)) }
        def qris; end
        sig {
          params(_qris: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Qris)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Qris))
         }
        def qris=(_qris); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung)) }
        def rechnung; end
        sig {
          params(_rechnung: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung))
         }
        def rechnung=(_rechnung); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay)) }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay; end
        sig {
          params(_shopeepay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Shopeepay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay=(_shopeepay); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort)) }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # This hash contains details about the Stripe balance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance; end
        sig {
          params(_stripe_balance: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::StripeBalance)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance=(_stripe_balance); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay), gopay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Gopay), grabpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay), id_bank_transfer: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::IdBankTransfer), ideal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link), mb_way: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::MbWay), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal), paypay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypay), payto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payto), pix: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay), qris: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Qris), radar_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions), rechnung: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Rechnung), revolut_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit), shopeepay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Shopeepay), sofort: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort), stripe_balance: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::StripeBalance), swish: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip)).void
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
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          paypay: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          shopeepay: nil,
          sofort: nil,
          stripe_balance: nil,
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
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T.nilable(T::Array[String])) }
            def default_for; end
            sig {
              params(_default_for: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def default_for=(_default_for); end
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(currency: T.nilable(String), mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
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
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
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
              params(amount: Integer, amount_type: String, currency: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
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
                returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
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
            sig { returns(T.nilable(String)) }
            def cryptogram; end
            sig { params(_cryptogram: T.nilable(String)).returns(T.nilable(String)) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
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
            sig { returns(T.nilable(String)) }
            def transaction_id; end
            sig { params(_transaction_id: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            def version; end
            sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: T.nilable(String), electronic_commerce_indicator: T.nilable(String), network_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: T.nilable(String), version: T.nilable(String)).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_three_d_secure: T.nilable(String), three_d_secure: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams; end
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
              returns(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing; end
            sig {
              params(_next_billing: ::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling).returns(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: ::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling, reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # The currency of the SetupIntent. Three letter ISO currency code.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(currency: T.nilable(String), on_demand: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            currency: nil,
            on_demand: nil,
            preferred_locale: nil,
            subscriptions: nil
          ); end
        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          def billing_agreement_id; end
          sig { params(_billing_agreement_id: T.nilable(String)).returns(T.nilable(String)) }
          def billing_agreement_id=(_billing_agreement_id); end
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T.nilable(T::Array[String])) }
          def subsellers; end
          sig {
            params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def subsellers=(_subsellers); end
          sig {
            params(billing_agreement_id: T.nilable(String), currency: T.nilable(String), subsellers: T.nilable(T::Array[String])).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # The periodicity at which payments will be collected.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(T.nilable(Integer)) }
            def payments_per_period; end
            sig { params(_payments_per_period: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def payments_per_period=(_payments_per_period); end
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(T.nilable(String)) }
            def purpose; end
            sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
            def purpose=(_purpose); end
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_type: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), payments_per_period: T.nilable(Integer), purpose: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Pix < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments. Required when `amount_type=fixed`. If not provided for `amount_type=maximum`, defaults to 40000.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Determines if the amount includes the IOF tax. Defaults to `never`.
            sig { returns(T.nilable(String)) }
            def amount_includes_iof; end
            sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
            def amount_includes_iof=(_amount_includes_iof); end
            # Type of amount. Defaults to `maximum`.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Only `brl` is supported currently.
            sig { returns(T.nilable(String)) }
            def currency; end
            sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_currency); end
            # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # Schedule at which the future payments will be charged. Defaults to `weekly`.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Subscription name displayed to buyers in their bank app. Defaults to the displayable business name.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # Start date of the mandate, in `YYYY-MM-DD`. Start date should be at least 3 days in the future. Defaults to 3 days after the current date.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_includes_iof: T.nilable(String), amount_type: T.nilable(String), currency: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), reference: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_includes_iof: nil,
              amount_type: nil,
              currency: nil,
              end_date: nil,
              payment_schedule: nil,
              reference: nil,
              start_date: nil
            ); end
          end
          # Additional fields for mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(T.nilable(String)) }
              def institution; end
              sig { params(_institution: T.nilable(String)).returns(T.nilable(String)) }
              def institution=(_institution); end
              sig {
                params(account_subcategories: T.nilable(T::Array[String]), institution: T.nilable(String)).void
               }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              def mode; end
              sig { params(_mode: String).returns(String) }
              def mode=(_mode); end
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # Customize manual entry behavior
            sig {
              returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry; end
            sig {
              params(_manual_entry: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry=(_manual_entry); end
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
              params(filters: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), manual_entry: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card)) }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent))
         }
        def card_present=(_card_present); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link))
         }
        def link=(_link); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto)) }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` SetupIntent, this sub-hash contains details about the Pix payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix))
         }
        def pix=(_pix); end
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Pix), sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          klarna: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      def attach_to_self; end
      sig { params(_attach_to_self: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def attach_to_self=(_attach_to_self); end
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # ID of the Account this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def customer_account; end
      sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
      def customer_account=(_customer_account); end
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
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T.nilable(T::Array[String])) }
      def flow_directions; end
      sig {
        params(_flow_directions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def flow_directions=(_flow_directions); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(T.nilable(String)) }
      def payment_method_configuration; end
      sig { params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method_configuration=(_payment_method_configuration); end
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      def payment_method_types; end
      sig {
        params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def payment_method_types=(_payment_method_types); end
      sig {
        params(attach_to_self: T.nilable(T::Boolean), customer: T.nilable(String), customer_account: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), flow_directions: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String])).void
       }
      def initialize(
        attach_to_self: nil,
        customer: nil,
        customer_account: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil
      ); end
    end
    class CancelParams < Stripe::RequestParams
      # Reason for canceling this SetupIntent. Possible values are: `abandoned`, `requested_by_customer`, or `duplicate`
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          def offline=(_offline); end
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          def online=(_online); end
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance))
         }
        def customer_acceptance; end
        sig {
          params(_customer_acceptance: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance))
         }
        def customer_acceptance=(_customer_acceptance); end
        sig {
          params(customer_acceptance: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance)).void
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
            returns(T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)))
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
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
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
        class Gopay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class IdBankTransfer < Stripe::RequestParams
          # Bank where the account is held.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class MbWay < Stripe::RequestParams; end
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
        class Paypay < Stripe::RequestParams; end
        class Payto < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(T.nilable(String)) }
          def bsb_number; end
          sig { params(_bsb_number: T.nilable(String)).returns(T.nilable(String)) }
          def bsb_number=(_bsb_number); end
          # The PayID alias for the bank account.
          sig { returns(T.nilable(String)) }
          def pay_id; end
          sig { params(_pay_id: T.nilable(String)).returns(T.nilable(String)) }
          def pay_id=(_pay_id); end
          sig {
            params(account_number: T.nilable(String), bsb_number: T.nilable(String), pay_id: T.nilable(String)).void
           }
          def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
        end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class Qris < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class Rechnung < Stripe::RequestParams
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
          sig { returns(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob) }
          def dob; end
          sig {
            params(_dob: ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob).returns(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob)
           }
          def dob=(_dob); end
          sig {
            params(dob: ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung::Dob).void
           }
          def initialize(dob: nil); end
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
        class Shopeepay < Stripe::RequestParams; end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class StripeBalance < Stripe::RequestParams
          # The connected account ID whose Stripe balance to use as the source of payment
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
          sig { returns(T.nilable(String)) }
          def source_type; end
          sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
          def source_type=(_source_type); end
          sig { params(account: T.nilable(String), source_type: T.nilable(String)).void }
          def initialize(account: nil, source_type: nil); end
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
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm)) }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay)) }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma)) }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie)) }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik)) }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto)) }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp)) }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto)) }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps)) }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx)) }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay)) }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Gopay)) }
        def gopay; end
        sig {
          params(_gopay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Gopay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Gopay))
         }
        def gopay=(_gopay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay)) }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer; end
        sig {
          params(_id_bank_transfer: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::IdBankTransfer)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::IdBankTransfer))
         }
        def id_bank_transfer=(_id_bank_transfer); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal)) }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna)) }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini)) }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard)) }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::MbWay)) }
        def mb_way; end
        sig {
          params(_mb_way: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::MbWay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::MbWay))
         }
        def mb_way=(_mb_way); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo)) }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24)) }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco)) }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow)) }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal)) }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `paypay` PaymentMethod, this hash contains details about the PayPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypay)) }
        def paypay; end
        sig {
          params(_paypay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypay))
         }
        def paypay=(_paypay); end
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payto)) }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payto)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Qris)) }
        def qris; end
        sig {
          params(_qris: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Qris)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Qris))
         }
        def qris=(_qris); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung))
         }
        def rechnung; end
        sig {
          params(_rechnung: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung))
         }
        def rechnung=(_rechnung); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay; end
        sig {
          params(_shopeepay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Shopeepay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Shopeepay))
         }
        def shopeepay=(_shopeepay); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort)) }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # This hash contains details about the Stripe balance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance; end
        sig {
          params(_stripe_balance: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::StripeBalance)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::StripeBalance))
         }
        def stripe_balance=(_stripe_balance); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish)) }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint)) }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip)) }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay), gopay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Gopay), grabpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay), id_bank_transfer: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::IdBankTransfer), ideal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link), mb_way: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::MbWay), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal), paypay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypay), payto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payto), pix: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay), qris: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Qris), radar_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions), rechnung: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Rechnung), revolut_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit), shopeepay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Shopeepay), sofort: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort), stripe_balance: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::StripeBalance), swish: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip)).void
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
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          paypay: nil,
          payto: nil,
          pix: nil,
          promptpay: nil,
          qris: nil,
          radar_options: nil,
          rechnung: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          shopeepay: nil,
          sofort: nil,
          stripe_balance: nil,
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
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T.nilable(T::Array[String])) }
            def default_for; end
            sig {
              params(_default_for: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def default_for=(_default_for); end
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(currency: T.nilable(String), mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
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
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
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
              params(amount: Integer, amount_type: String, currency: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
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
                returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires; end
              sig {
                params(_cartes_bancaires: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              def cartes_bancaires=(_cartes_bancaires); end
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
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
            sig { returns(T.nilable(String)) }
            def cryptogram; end
            sig { params(_cryptogram: T.nilable(String)).returns(T.nilable(String)) }
            def cryptogram=(_cryptogram); end
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            def electronic_commerce_indicator; end
            sig {
              params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
             }
            def electronic_commerce_indicator=(_electronic_commerce_indicator); end
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            def network_options; end
            sig {
              params(_network_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
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
            sig { returns(T.nilable(String)) }
            def transaction_id; end
            sig { params(_transaction_id: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_transaction_id); end
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            def version; end
            sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
            def version=(_version); end
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: T.nilable(String), electronic_commerce_indicator: T.nilable(String), network_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: T.nilable(String), version: T.nilable(String)).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          def moto; end
          sig { params(_moto: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def moto=(_moto); end
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          def network; end
          sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
          def network=(_network); end
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_three_d_secure: T.nilable(String), three_d_secure: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams; end
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
              returns(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing; end
            sig {
              params(_next_billing: ::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling).returns(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            def next_billing=(_next_billing); end
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            def reference; end
            sig { params(_reference: String).returns(String) }
            def reference=(_reference); end
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: ::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling, reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # The currency of the SetupIntent. Three letter ISO currency code.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand; end
          sig {
            params(_on_demand: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          def on_demand=(_on_demand); end
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          def preferred_locale; end
          sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_locale=(_preferred_locale); end
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions; end
          sig {
            params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          def subscriptions=(_subscriptions); end
          sig {
            params(currency: T.nilable(String), on_demand: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            currency: nil,
            on_demand: nil,
            preferred_locale: nil,
            subscriptions: nil
          ); end
        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
          def persistent_token=(_persistent_token); end
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          def billing_agreement_id; end
          sig { params(_billing_agreement_id: T.nilable(String)).returns(T.nilable(String)) }
          def billing_agreement_id=(_billing_agreement_id); end
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T.nilable(T::Array[String])) }
          def subsellers; end
          sig {
            params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def subsellers=(_subsellers); end
          sig {
            params(billing_agreement_id: T.nilable(String), currency: T.nilable(String), subsellers: T.nilable(T::Array[String])).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # The periodicity at which payments will be collected.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(T.nilable(Integer)) }
            def payments_per_period; end
            sig { params(_payments_per_period: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def payments_per_period=(_payments_per_period); end
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(T.nilable(String)) }
            def purpose; end
            sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
            def purpose=(_purpose); end
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_type: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), payments_per_period: T.nilable(Integer), purpose: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Pix < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments. Required when `amount_type=fixed`. If not provided for `amount_type=maximum`, defaults to 40000.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Determines if the amount includes the IOF tax. Defaults to `never`.
            sig { returns(T.nilable(String)) }
            def amount_includes_iof; end
            sig { params(_amount_includes_iof: T.nilable(String)).returns(T.nilable(String)) }
            def amount_includes_iof=(_amount_includes_iof); end
            # Type of amount. Defaults to `maximum`.
            sig { returns(T.nilable(String)) }
            def amount_type; end
            sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
            def amount_type=(_amount_type); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Only `brl` is supported currently.
            sig { returns(T.nilable(String)) }
            def currency; end
            sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_currency); end
            # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(String)) }
            def end_date; end
            sig { params(_end_date: T.nilable(String)).returns(T.nilable(String)) }
            def end_date=(_end_date); end
            # Schedule at which the future payments will be charged. Defaults to `weekly`.
            sig { returns(T.nilable(String)) }
            def payment_schedule; end
            sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
            def payment_schedule=(_payment_schedule); end
            # Subscription name displayed to buyers in their bank app. Defaults to the displayable business name.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # Start date of the mandate, in `YYYY-MM-DD`. Start date should be at least 3 days in the future. Defaults to 3 days after the current date.
            sig { returns(T.nilable(String)) }
            def start_date; end
            sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
            def start_date=(_start_date); end
            sig {
              params(amount: T.nilable(Integer), amount_includes_iof: T.nilable(String), amount_type: T.nilable(String), currency: T.nilable(String), end_date: T.nilable(String), payment_schedule: T.nilable(String), reference: T.nilable(String), start_date: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              amount_includes_iof: nil,
              amount_type: nil,
              currency: nil,
              end_date: nil,
              payment_schedule: nil,
              reference: nil,
              start_date: nil
            ); end
          end
          # Additional fields for mandate creation.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
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
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(T.nilable(String)) }
              def institution; end
              sig { params(_institution: T.nilable(String)).returns(T.nilable(String)) }
              def institution=(_institution); end
              sig {
                params(account_subcategories: T.nilable(T::Array[String]), institution: T.nilable(String)).void
               }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              def mode; end
              sig { params(_mode: String).returns(String) }
              def mode=(_mode); end
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters; end
            sig {
              params(_filters: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            def filters=(_filters); end
            # Customize manual entry behavior
            sig {
              returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry; end
            sig {
              params(_manual_entry: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry))
             }
            def manual_entry=(_manual_entry); end
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
              params(filters: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), manual_entry: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections; end
          sig {
            params(_financial_connections: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          def financial_connections=(_financial_connections); end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options; end
          sig {
            params(_mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          def mandate_options=(_mandate_options); end
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks; end
          sig {
            params(_networks: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          def networks=(_networks); end
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          def verification_method; end
          sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
          def verification_method=(_verification_method); end
          sig {
            params(financial_connections: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card)) }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent))
         }
        def card_present=(_card_present); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link)) }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link))
         }
        def link=(_link); end
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto))
         }
        def payto; end
        sig {
          params(_payto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto))
         }
        def payto=(_payto); end
        # If this is a `pix` SetupIntent, this sub-hash contains details about the Pix payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix)) }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix))
         }
        def pix=(_pix); end
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal), payto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Payto), pix: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Pix), sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          klarna: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          pix: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      def confirmation_token; end
      sig { params(_confirmation_token: T.nilable(String)).returns(T.nilable(String)) }
      def confirmation_token=(_confirmation_token); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Attribute for param field mandate_data
      sig { returns(T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::MandateData))) }
      def mandate_data; end
      sig {
        params(_mandate_data: T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::MandateData))).returns(T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::MandateData)))
       }
      def mandate_data=(_mandate_data); end
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The URL to redirect your customer back to after they authenticate on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk; end
      sig { params(_use_stripe_sdk: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk=(_use_stripe_sdk); end
      sig {
        params(confirmation_token: T.nilable(String), expand: T.nilable(T::Array[String]), mandate_data: T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::MandateData)), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions), return_url: T.nilable(String), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        confirmation_token: nil,
        expand: nil,
        mandate_data: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        return_url: nil,
        use_stripe_sdk: nil
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
    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://docs.stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(params: T.any(::Stripe::SetupIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def cancel(params = {}, opts = {}); end

    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://docs.stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntent::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def self.cancel(intent, params = {}, opts = {}); end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    sig {
      params(params: T.any(::Stripe::SetupIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def confirm(params = {}, opts = {}); end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntent::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def self.confirm(intent, params = {}, opts = {}); end

    # Creates a SetupIntent object.
    #
    # After you create the SetupIntent, attach a payment method and [confirm](https://docs.stripe.com/docs/api/setup_intents/confirm)
    # it to collect any required permissions to charge the payment method later.
    sig {
      params(params: T.any(::Stripe::SetupIntent::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of SetupIntents.
    sig {
      params(params: T.any(::Stripe::SetupIntent::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates a SetupIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntent::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def self.update(intent, params = {}, opts = {}); end

    # Verifies microdeposits on a SetupIntent object.
    sig {
      params(params: T.any(::Stripe::SetupIntent::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def verify_microdeposits(params = {}, opts = {}); end

    # Verifies microdeposits on a SetupIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntent::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def self.verify_microdeposits(intent, params = {}, opts = {}); end
  end
end