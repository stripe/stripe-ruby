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

      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        attr_reader :display_name

        # The custom payment method type associated with this payment.
        attr_reader :type
      end
      # The billing details associated with the method of payment.
      attr_reader :billing_details

      # Information about the custom (user-defined) payment method used to make this payment.
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
