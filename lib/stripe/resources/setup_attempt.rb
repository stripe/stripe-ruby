# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A SetupAttempt describes one attempted confirmation of a SetupIntent,
  # whether that confirmation is successful or unsuccessful. You can use
  # SetupAttempts to inspect details of a specific attempt at setting up a
  # payment method using a SetupIntent.
  class SetupAttempt < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "setup_attempt"
    def self.object_name
      "setup_attempt"
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject; end

      class Bancontact < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Preferred language of the Bancontact authorization page that the customer is redirected to.
        # Can be one of `en`, `de`, `fr`, or `nl`
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by Bancontact directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class Boleto < Stripe::StripeObject; end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :address_line1_check
          # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :address_postal_code_check
          # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :cvc_check
        end

        class ThreeDSecure < Stripe::StripeObject
          # For authenticated transactions: how the customer was authenticated by
          # the issuing bank.
          attr_reader :authentication_flow
          # The Electronic Commerce Indicator (ECI). A protocol-level field
          # indicating what degree of authentication was performed.
          attr_reader :electronic_commerce_indicator
          # Indicates the outcome of 3D Secure authentication.
          attr_reader :result
          # Additional information about why 3D Secure succeeded or failed based
          # on the `result`.
          attr_reader :result_reason
          # The 3D Secure 1 XID or 3D Secure 2 Directory Server Transaction ID
          # (dsTransId) for this payment.
          attr_reader :transaction_id
          # The version of 3D Secure that was used.
          attr_reader :version
        end

        class Wallet < Stripe::StripeObject
          class ApplePay < Stripe::StripeObject; end
          class GooglePay < Stripe::StripeObject; end
          # Attribute for field apple_pay
          attr_reader :apple_pay
          # Attribute for field google_pay
          attr_reader :google_pay
          # The type of the card wallet, one of `apple_pay`, `google_pay`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
          attr_reader :type
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # Check results by Card networks on Card address and CVC at the time of authorization
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
        # Two-digit number representing the card's expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # Populated if this authorization used 3D Secure authentication.
        attr_reader :three_d_secure
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        attr_reader :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          attr_reader :stored_at
          # The method used to process this payment method offline. Only deferred is allowed.
          attr_reader :type
        end
        # The ID of the Card PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_card
        # Details about payments collected offline.
        attr_reader :offline
      end

      class Cashapp < Stripe::StripeObject; end

      class IdBankTransfer < Stripe::StripeObject
        # Bank where the account is located.
        attr_reader :bank
        # Local bank code of the bank.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Merchant name and billing details name, for the customer to check for the correct merchant when performing the bank transfer.
        attr_reader :display_name
      end

      class Ideal < Stripe::StripeObject
        # The customer's bank. Can be one of `abn_amro`, `asn_bank`, `bunq`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        attr_reader :bank
        # The Bank Identifier Code of the customer's bank.
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Owner's verified full name. Values are verified or provided by iDEAL directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class KakaoPay < Stripe::StripeObject; end
      class Klarna < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject; end
      class Link < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject; end
      class Payto < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject; end
      class SepaDebit < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Preferred language of the Sofort authorization page that the customer is redirected to.
        # Can be one of `en`, `de`, `fr`, or `nl`
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by Sofort directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class UsBankAccount < Stripe::StripeObject; end
      # Attribute for field acss_debit
      attr_reader :acss_debit
      # Attribute for field amazon_pay
      attr_reader :amazon_pay
      # Attribute for field au_becs_debit
      attr_reader :au_becs_debit
      # Attribute for field bacs_debit
      attr_reader :bacs_debit
      # Attribute for field bancontact
      attr_reader :bancontact
      # Attribute for field boleto
      attr_reader :boleto
      # Attribute for field card
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field cashapp
      attr_reader :cashapp
      # Attribute for field id_bank_transfer
      attr_reader :id_bank_transfer
      # Attribute for field ideal
      attr_reader :ideal
      # Attribute for field kakao_pay
      attr_reader :kakao_pay
      # Attribute for field klarna
      attr_reader :klarna
      # Attribute for field kr_card
      attr_reader :kr_card
      # Attribute for field link
      attr_reader :link
      # Attribute for field paypal
      attr_reader :paypal
      # Attribute for field payto
      attr_reader :payto
      # Attribute for field revolut_pay
      attr_reader :revolut_pay
      # Attribute for field sepa_debit
      attr_reader :sepa_debit
      # Attribute for field sofort
      attr_reader :sofort
      # The type of the payment method used in the SetupIntent (e.g., `card`). An additional hash is included on `payment_method_details` with a name matching this value. It contains confirmation-specific information for the payment method.
      attr_reader :type
      # Attribute for field us_bank_account
      attr_reader :us_bank_account
    end

    class SetupError < Stripe::StripeObject
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

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # A filter on the list, based on the object `created` field. The value
      # can be a string with an integer Unix timestamp or a
      # dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return SetupAttempts created by the SetupIntent specified by
      # this ID.
      attr_accessor :setup_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        setup_intent: nil,
        starting_after: nil
      )
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @setup_intent = setup_intent
        @starting_after = starting_after
      end
    end
    # The value of [application](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation.
    attr_reader :application
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The value of [customer](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation.
    attr_reader :customer
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The value of [on_behalf_of](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation.
    attr_reader :on_behalf_of
    # ID of the payment method used with this SetupAttempt.
    attr_reader :payment_method
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    # The error encountered during this attempt to confirm the SetupIntent, if any.
    attr_reader :setup_error
    # ID of the SetupIntent that this attempt belongs to.
    attr_reader :setup_intent
    # Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
    attr_reader :status
    # The value of [usage](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
    attr_reader :usage

    # Returns a list of SetupAttempts that associate with a provided SetupIntent.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/setup_attempts", params: params, opts: opts)
    end
  end
end
