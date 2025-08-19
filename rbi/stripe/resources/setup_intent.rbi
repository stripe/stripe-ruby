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
      # For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
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
      # Type of the next action to perform. Refer to the other child attributes under `next_action` for available values. Examples include: `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
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
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
          sig { returns(String) }
          attr_reader :reference_prefix
        end
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
      class Klarna < Stripe::StripeObject
        # The currency of the setup intent. Three letter ISO currency code.
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        # Preferred locale of the Klarna checkout page that the customer is redirected to.
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
      end
      class Link < Stripe::StripeObject
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token
      end
      class Paypal < Stripe::StripeObject
        # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id
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
      # Attribute for field klarna
      sig { returns(Klarna) }
      attr_reader :klarna
      # Attribute for field link
      sig { returns(Link) }
      attr_reader :link
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
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
    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up. A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
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
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :attach_to_self
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return SetupIntents for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Only return SetupIntents that associate with the specified payment method.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(attach_to_self: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::SetupIntent::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_method: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        attach_to_self: nil,
        created: nil,
        customer: nil,
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
        attr_accessor :allow_redirects
        # Whether this feature is enabled.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(allow_redirects: T.nilable(String), enabled: T::Boolean).void }
        def initialize(allow_redirects: nil, enabled: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams; end
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
          sig { returns(T.nilable(Integer)) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance) }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::SetupIntent::CreateParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna::Dob)).void
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
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
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
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm)) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay)) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma)) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie)) }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik)) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto)) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp)) }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto)) }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps)) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx)) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay)) }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay)) }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal)) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay)) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna)) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini)) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard)) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link)) }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay)) }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo)) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24)) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco)) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow)) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal)) }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix)) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay)) }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort)) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish)) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint)) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip)) }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData::Zip)).void
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
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
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
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(T.nilable(String)) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :version
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
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
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
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
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
              returns(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
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
          attr_accessor :currency
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
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
          attr_accessor :persistent_token
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_agreement_id
          sig { params(billing_agreement_id: T.nilable(String)).void }
          def initialize(billing_agreement_id: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
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
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card)) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link)) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions::UsBankAccount)).void
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
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      class SingleUse < Stripe::RequestParams
        # Amount the customer is granting permission to collect later. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        sig { params(amount: Integer, currency: String).void }
        def initialize(amount: nil, currency: nil); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :attach_to_self
      # When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods)) }
      attr_accessor :automatic_payment_methods
      # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :confirm
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :flow_directions
      # This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData))) }
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The Stripe account ID created for this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url
      # If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.
      #
      # Single-use mandates are only valid for the following payment methods: `acss_debit`, `alipay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `boleto`, `ideal`, `link`, `sepa_debit`, and `us_bank_account`.
      sig { returns(T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse)) }
      attr_accessor :single_use
      # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
      sig { returns(T.nilable(String)) }
      attr_accessor :usage
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :use_stripe_sdk
      sig {
        params(attach_to_self: T.nilable(T::Boolean), automatic_payment_methods: T.nilable(::Stripe::SetupIntent::CreateParams::AutomaticPaymentMethods), confirm: T.nilable(T::Boolean), confirmation_token: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), flow_directions: T.nilable(T::Array[String]), mandate_data: T.nilable(T.any(String, ::Stripe::SetupIntent::CreateParams::MandateData)), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::SetupIntent::CreateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), single_use: T.nilable(::Stripe::SetupIntent::CreateParams::SingleUse), usage: T.nilable(String), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        attach_to_self: nil,
        automatic_payment_methods: nil,
        confirm: nil,
        confirmation_token: nil,
        customer: nil,
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna::Dob)).void
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
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
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
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm)) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay)) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma)) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie)) }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik)) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto)) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp)) }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto)) }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps)) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx)) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay)) }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay)) }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal)) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay)) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna)) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini)) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard)) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link)) }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay)) }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo)) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24)) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco)) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow)) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal)) }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix)) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay)) }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort)) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish)) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint)) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip)) }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData::Zip)).void
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
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
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
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(T.nilable(String)) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :version
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
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
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
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
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
              returns(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
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
          attr_accessor :currency
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
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
          attr_accessor :persistent_token
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_agreement_id
          sig { params(billing_agreement_id: T.nilable(String)).void }
          def initialize(billing_agreement_id: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
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
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card)) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link)) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions::UsBankAccount)).void
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
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :attach_to_self
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :flow_directions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      sig {
        params(attach_to_self: T.nilable(T::Boolean), customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), flow_directions: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::SetupIntent::UpdateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String])).void
       }
      def initialize(
        attach_to_self: nil,
        customer: nil,
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
      attr_accessor :cancellation_reason
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
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
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(ip_address: T.nilable(String), user_agent: T.nilable(String)).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance))
         }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: T.nilable(::Stripe::SetupIntent::ConfirmParams::MandateData::CustomerAcceptance)).void
         }
        def initialize(customer_acceptance: nil); end
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna::Dob)).void
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
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
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
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm)) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay)) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma)) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie)) }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik)) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto)) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp)) }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto)) }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps)) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx)) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay)) }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay)) }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal)) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna)) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini)) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard)) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link)) }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo)) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24)) }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco)) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow)) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal)) }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix)) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort)) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish)) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint)) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip)) }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData::Zip)).void
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
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
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
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
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
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(T.nilable(String)) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :version
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
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
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
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
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
              returns(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling)
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
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
          attr_accessor :currency
          # On-demand details if setting up a payment method for on-demand payments.
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Subscription details if setting up or charging a subscription
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
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
          attr_accessor :persistent_token
          sig { params(persistent_token: T.nilable(String)).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_agreement_id
          sig { params(billing_agreement_id: T.nilable(String)).void }
          def initialize(billing_agreement_id: nil); end
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
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
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
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
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
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit))
         }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card)) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent))
         }
        attr_accessor :card_present
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna))
         }
        attr_accessor :klarna
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link)) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal))
         }
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount))
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AcssDebit), amazon_pay: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::AmazonPay), bacs_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::BacsDebit), card: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Card), card_present: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::CardPresent), klarna: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Link), paypal: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions::UsBankAccount)).void
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
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Attribute for param field mandate_data
      sig { returns(T.nilable(T.any(String, ::Stripe::SetupIntent::ConfirmParams::MandateData))) }
      attr_accessor :mandate_data
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(T.nilable(::Stripe::SetupIntent::ConfirmParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # The URL to redirect your customer back to after they authenticate on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :use_stripe_sdk
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
      attr_accessor :amounts
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :descriptor_code
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
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