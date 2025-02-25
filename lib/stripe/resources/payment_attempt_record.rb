# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.
  # Each payment attempt tries to collect a fixed amount of money from a fixed customer and payment
  # method. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Record
  # can have guaranteed funds.
  class PaymentAttemptRecord < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "payment_attempt_record"
    def self.object_name
      "payment_attempt_record"
    end

    class AmountCanceled < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountFailed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountGuaranteed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountRequested < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class CustomerDetails < Stripe::StripeObject
      # ID of the Stripe Customer associated with this payment.
      attr_reader :customer
      # The customer's email address.
      attr_reader :email
      # The customer's name.
      attr_reader :name
      # The customer's phone number.
      attr_reader :phone
    end

    class PaymentMethodDetails < Stripe::StripeObject
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
        # A representation of a physical address.
        attr_reader :address
        # The billing email associated with the method of payment.
        attr_reader :email
        # The billing name associated with the method of payment.
        attr_reader :name
        # The billing phone number associated with the method of payment.
        attr_reader :phone
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # Attribute for field address_line1_check
          attr_reader :address_line1_check
          # Attribute for field address_postal_code_check
          attr_reader :address_postal_code_check
          # Attribute for field cvc_check
          attr_reader :cvc_check
        end

        class NetworkToken < Stripe::StripeObject
          # Attribute for field used
          attr_reader :used
        end

        class ThreeDSecure < Stripe::StripeObject
          # Attribute for field authentication_flow
          attr_reader :authentication_flow
          # Attribute for field result
          attr_reader :result
          # Attribute for field result_reason
          attr_reader :result_reason
          # Attribute for field version
          attr_reader :version
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
        attr_reader :capture_before
        # Check results by Card networks on Card address and CVC at time of payment.
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
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
        # The last four digits of the card.
        attr_reader :last4
        # True if this payment was marked as MOTO and out of scope for SCA.
        attr_reader :moto
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        attr_reader :network_transaction_id
        # Populated if this transaction used 3D Secure authentication.
        attr_reader :three_d_secure
      end

      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        attr_reader :display_name
        # The custom payment method type associated with this payment.
        attr_reader :type
      end
      # The billing details associated with the method of payment.
      attr_reader :billing_details
      # Details of the card used for this payment attempt.
      attr_reader :card
      # Custom Payment Methods represent Payment Method types not modeled directly in
      # the Stripe API. This resource consists of details about the custom payment method
      # used for this payment attempt.
      attr_reader :custom
      # ID of the Stripe PaymentMethod used to make this payment.
      attr_reader :payment_method
      # The type of Payment Method used for this payment attempt.
      attr_reader :type
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
      # A representation of a physical address.
      attr_reader :address
      # The shipping recipient's name.
      attr_reader :name
      # The shipping recipient's phone number.
      attr_reader :phone
    end

    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The ID of the Payment Record.
      attr_accessor :payment_record

      def initialize(expand: nil, payment_record: nil)
        @expand = expand
        @payment_record = payment_record
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Customer information for this payment.
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    attr_reader :payment_method_details
    # ID of the Payment Record this Payment Attempt Record belongs to.
    attr_reader :payment_record
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    attr_reader :payment_reference
    # Shipping information for this payment.
    attr_reader :shipping_details

    # List all the Payment Attempt Records attached to the specified Payment Record.
    def self.list(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_attempt_records",
        params: params,
        opts: opts
      )
    end
  end
end
