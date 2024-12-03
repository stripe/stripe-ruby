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
      sig { returns(String) }
      attr_reader :allow_redirects
      # Automatically calculates compatible payment methods
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled
    end
    class LastSetupError < Stripe::StripeObject
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
      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate.
        sig { returns(T.nilable(String)) }
        attr_reader :url
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
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      # Attribute for field redirect_to_url
      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url
      # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      sig { returns(String) }
      attr_reader :type
      # When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :use_stripe_sdk
      # Attribute for field verify_with_microdeposits
      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits
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
          # List of Stripe products where this mandate can be selected automatically.
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
        # Currency supported by the bank account
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        # Bank account verification method.
        sig { returns(String) }
        attr_reader :verification_method
      end
      class AmazonPay < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
      end
      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          sig { returns(Integer) }
          attr_reader :amount
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          sig { returns(String) }
          attr_reader :amount_type
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_reader :currency
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
        # Configuration options for setting up an eMandate for cards issued in India.
        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options
        # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure
      end
      class CardPresent < Stripe::StripeObject; end
      class Link < Stripe::StripeObject
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token
      end
      class Paypal < Stripe::StripeObject
        # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_reader :currency
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
      end
      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        # Attribute for field mandate_options
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
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
        # Bank account verification method.
        sig { returns(String) }
        attr_reader :verification_method
      end
      # Attribute for field acss_debit
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      # Attribute for field bacs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field card_present
      sig { returns(CardPresent) }
      attr_reader :card_present
      # Attribute for field link
      sig { returns(Link) }
      attr_reader :link
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
      # Attribute for field payto
      sig { returns(Payto) }
      attr_reader :payto
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end
    # ID of the Connect application that created the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    sig { returns(T::Boolean) }
    attr_reader :attach_to_self

    # Settings for dynamic payment methods compatible with this Setup Intent
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    attr_reader :automatic_payment_methods

    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    sig { returns(T.nilable(String)) }
    attr_reader :cancellation_reason

    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # ID of the Customer this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :flow_directions

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The error encountered in the previous SetupIntent confirmation.
    sig { returns(T.nilable(LastSetupError)) }
    attr_reader :last_setup_error

    # The most recent SetupAttempt for this SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
    attr_reader :latest_attempt

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # ID of the multi use Mandate generated by the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    attr_reader :mandate

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
    sig { returns(T.nilable(NextAction)) }
    attr_reader :next_action

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The account (if any) for which the setup is intended.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    # ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :payment_method

    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this Setup Intent.
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    attr_reader :payment_method_configuration_details

    # Payment method-specific configuration for this SetupIntent.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    sig { returns(T::Array[String]) }
    attr_reader :payment_method_types

    # ID of the single_use Mandate generated by the SetupIntent.
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    attr_reader :single_use_mandate

    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    sig { returns(String) }
    attr_reader :status

    # Indicates how the payment method is intended to be used in the future.
    #
    # Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    sig { returns(String) }
    attr_reader :usage
  end
end