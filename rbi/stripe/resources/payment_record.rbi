# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  # For example, you can create a Payment Record to model a payment made on a different payment processor,
  # in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  # more Payment Attempt Records, which represent individual attempts made on a payment network.
  class PaymentRecord < APIResource
    class AmountCanceled < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountFailed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountGuaranteed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountRequested < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      sig { returns(Integer) }
      attr_reader :value
    end
    class CustomerDetails < Stripe::StripeObject
      # ID of the Stripe Customer associated with this payment.
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      # The customer's email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # The customer's name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # The customer's phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class PaymentMethodDetails < Stripe::StripeObject
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
        # A representation of a physical address.
        sig { returns(Address) }
        attr_reader :address
        # The billing email associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # The billing name associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :name
        # The billing phone number associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end
      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # Attribute for field address_line1_check
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check
          # Attribute for field address_postal_code_check
          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check
          # Attribute for field cvc_check
          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end
        class NetworkToken < Stripe::StripeObject
          # Attribute for field used
          sig { returns(T::Boolean) }
          attr_reader :used
        end
        class ThreeDSecure < Stripe::StripeObject
          # Attribute for field authentication_flow
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow
          # Attribute for field result
          sig { returns(T.nilable(String)) }
          attr_reader :result
          # Attribute for field result_reason
          sig { returns(T.nilable(String)) }
          attr_reader :result_reason
          # Attribute for field version
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(String) }
        attr_reader :brand
        # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
        sig { returns(Integer) }
        attr_reader :capture_before
        # Check results by Card networks on Card address and CVC at time of payment.
        sig { returns(T.nilable(Checks)) }
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(String) }
        attr_reader :funding
        # The last four digits of the card.
        sig { returns(String) }
        attr_reader :last4
        # True if this payment was marked as MOTO and out of scope for SCA.
        sig { returns(T::Boolean) }
        attr_reader :moto
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        sig { returns(T.nilable(NetworkToken)) }
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        # Populated if this transaction used 3D Secure authentication.
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
      end
      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        sig { returns(String) }
        attr_reader :display_name
        # The custom payment method type associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      # The billing details associated with the method of payment.
      sig { returns(T.nilable(BillingDetails)) }
      attr_reader :billing_details
      # Details of the card used for this payment attempt.
      sig { returns(Card) }
      attr_reader :card
      # Custom Payment Methods represent Payment Method types not modeled directly in
      # the Stripe API. This resource consists of details about the custom payment method
      # used for this payment attempt.
      sig { returns(Custom) }
      attr_reader :custom
      # ID of the Stripe PaymentMethod used to make this payment.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_method
      # The type of Payment Method used for this payment attempt.
      sig { returns(String) }
      attr_reader :type
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
      # A representation of a physical address.
      sig { returns(Address) }
      attr_reader :address
      # The shipping recipient's name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # The shipping recipient's phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountCanceled) }
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountFailed) }
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountGuaranteed) }
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountRequested) }
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Customer information for this payment.
    sig { returns(T.nilable(CustomerDetails)) }
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    sig { returns(T.nilable(String)) }
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # ID of the latest Payment Attempt Record attached to this Payment Record.
    sig { returns(String) }
    attr_reader :latest_payment_attempt_record
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    sig { returns(T.nilable(PaymentMethodDetails)) }
    attr_reader :payment_method_details
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    sig { returns(T.nilable(String)) }
    attr_reader :payment_reference
    # Shipping information for this payment.
    sig { returns(T.nilable(ShippingDetails)) }
    attr_reader :shipping_details
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class ReportPaymentAttemptParams < Stripe::RequestParams
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :failed_at
        sig { params(failed_at: Integer).void }
        def initialize(failed_at: nil); end
      end
      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :guaranteed_at
        sig { params(guaranteed_at: Integer).void }
        def initialize(guaranteed_at: nil); end
      end
      class PaymentMethodDetails < Stripe::RequestParams
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
          # The billing address associated with the method of payment.
          sig {
            returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails::Address)
           }
          attr_accessor :address
          # The billing email associated with the method of payment.
          sig { returns(String) }
          attr_accessor :email
          # The billing name associated with the method of payment.
          sig { returns(String) }
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          sig { returns(String) }
          attr_accessor :phone
          sig {
            params(address: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails::Address, email: String, name: String, phone: String).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          sig { returns(String) }
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          sig { returns(String) }
          attr_accessor :type
          sig { params(display_name: String, type: String).void }
          def initialize(display_name: nil, type: nil); end
        end
        # The billing details associated with the method of payment.
        sig {
          returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails)
         }
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        sig {
          returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::Custom)
         }
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        sig { returns(String) }
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(billing_details: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails, custom: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails::Custom, payment_method: String, type: String).void
         }
        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
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
        # The physical shipping address.
        sig {
          returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::ShippingDetails::Address)
         }
        attr_accessor :address
        # The shipping recipient's name.
        sig { returns(String) }
        attr_accessor :name
        # The shipping recipient's phone number.
        sig { returns(String) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::ShippingDetails::Address, name: String, phone: String).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Information about the payment attempt failure.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::Failed) }
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::Guaranteed) }
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The outcome of the reported payment.
      sig { returns(String) }
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails) }
      attr_accessor :payment_method_details
      # Shipping information for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentAttemptParams::ShippingDetails) }
      attr_accessor :shipping_details
      sig {
        params(description: String, expand: T::Array[String], failed: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::Failed, guaranteed: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::Guaranteed, initiated_at: Integer, metadata: T::Hash[String, String], outcome: String, payment_method_details: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::PaymentMethodDetails, shipping_details: ::Stripe::PaymentRecord::ReportPaymentAttemptParams::ShippingDetails).void
       }
      def initialize(
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        shipping_details: nil
      ); end
    end
    class ReportPaymentAttemptCanceledParams < Stripe::RequestParams
      # When the reported payment was canceled. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :canceled_at
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      sig {
        params(canceled_at: Integer, expand: T::Array[String], metadata: T::Hash[String, String]).void
       }
      def initialize(canceled_at: nil, expand: nil, metadata: nil); end
    end
    class ReportPaymentAttemptFailedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # When the reported payment failed. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :failed_at
      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      sig {
        params(expand: T::Array[String], failed_at: Integer, metadata: T::Hash[String, String]).void
       }
      def initialize(expand: nil, failed_at: nil, metadata: nil); end
    end
    class ReportPaymentAttemptGuaranteedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :guaranteed_at
      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      sig {
        params(expand: T::Array[String], guaranteed_at: Integer, metadata: T::Hash[String, String]).void
       }
      def initialize(expand: nil, guaranteed_at: nil, metadata: nil); end
    end
    class ReportPaymentParams < Stripe::RequestParams
      class AmountRequested < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
        sig { returns(Integer) }
        attr_accessor :value
        sig { params(currency: String, value: Integer).void }
        def initialize(currency: nil, value: nil); end
      end
      class CustomerDetails < Stripe::RequestParams
        # The customer who made the payment.
        sig { returns(String) }
        attr_accessor :customer
        # The customer's phone number.
        sig { returns(String) }
        attr_accessor :email
        # The customer's name.
        sig { returns(String) }
        attr_accessor :name
        # The customer's phone number.
        sig { returns(String) }
        attr_accessor :phone
        sig { params(customer: String, email: String, name: String, phone: String).void }
        def initialize(customer: nil, email: nil, name: nil, phone: nil); end
      end
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :failed_at
        sig { params(failed_at: Integer).void }
        def initialize(failed_at: nil); end
      end
      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :guaranteed_at
        sig { params(guaranteed_at: Integer).void }
        def initialize(guaranteed_at: nil); end
      end
      class PaymentMethodDetails < Stripe::RequestParams
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
          # The billing address associated with the method of payment.
          sig {
            returns(::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::BillingDetails::Address)
           }
          attr_accessor :address
          # The billing email associated with the method of payment.
          sig { returns(String) }
          attr_accessor :email
          # The billing name associated with the method of payment.
          sig { returns(String) }
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          sig { returns(String) }
          attr_accessor :phone
          sig {
            params(address: ::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::BillingDetails::Address, email: String, name: String, phone: String).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          sig { returns(String) }
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          sig { returns(String) }
          attr_accessor :type
          sig { params(display_name: String, type: String).void }
          def initialize(display_name: nil, type: nil); end
        end
        # The billing details associated with the method of payment.
        sig {
          returns(::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::BillingDetails)
         }
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::Custom) }
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        sig { returns(String) }
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(billing_details: ::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::BillingDetails, custom: ::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails::Custom, payment_method: String, type: String).void
         }
        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
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
        # The physical shipping address.
        sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::ShippingDetails::Address) }
        attr_accessor :address
        # The shipping recipient's name.
        sig { returns(String) }
        attr_accessor :name
        # The shipping recipient's phone number.
        sig { returns(String) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::PaymentRecord::ReportPaymentParams::ShippingDetails::Address, name: String, phone: String).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # The amount you intend to collect for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::AmountRequested) }
      attr_accessor :amount_requested
      # Customer information for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::CustomerDetails) }
      attr_accessor :customer_details
      # Indicates whether the customer was present in your checkout flow during this payment.
      sig { returns(String) }
      attr_accessor :customer_presence
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Information about the payment attempt failure.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::Failed) }
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::Guaranteed) }
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The outcome of the reported payment.
      sig { returns(String) }
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails) }
      attr_accessor :payment_method_details
      # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
      sig { returns(String) }
      attr_accessor :payment_reference
      # Shipping information for this payment.
      sig { returns(::Stripe::PaymentRecord::ReportPaymentParams::ShippingDetails) }
      attr_accessor :shipping_details
      sig {
        params(amount_requested: ::Stripe::PaymentRecord::ReportPaymentParams::AmountRequested, customer_details: ::Stripe::PaymentRecord::ReportPaymentParams::CustomerDetails, customer_presence: String, description: String, expand: T::Array[String], failed: ::Stripe::PaymentRecord::ReportPaymentParams::Failed, guaranteed: ::Stripe::PaymentRecord::ReportPaymentParams::Guaranteed, initiated_at: Integer, metadata: T::Hash[String, String], outcome: String, payment_method_details: ::Stripe::PaymentRecord::ReportPaymentParams::PaymentMethodDetails, payment_reference: String, shipping_details: ::Stripe::PaymentRecord::ReportPaymentParams::ShippingDetails).void
       }
      def initialize(
        amount_requested: nil,
        customer_details: nil,
        customer_presence: nil,
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        payment_reference: nil,
        shipping_details: nil
      ); end
    end
    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    sig {
      params(params: T.any(::Stripe::PaymentRecord::ReportPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def self.report_payment(params = {}, opts = {}); end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    sig {
      params(params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt(params = {}, opts = {}); end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def self.report_payment_attempt(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    sig {
      params(params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptCanceledParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_canceled(params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptCanceledParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def self.report_payment_attempt_canceled(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    sig {
      params(params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptFailedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_failed(params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptFailedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def self.report_payment_attempt_failed(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    sig {
      params(params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptGuaranteedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_guaranteed(params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecord::ReportPaymentAttemptGuaranteedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def self.report_payment_attempt_guaranteed(id, params = {}, opts = {}); end
  end
end