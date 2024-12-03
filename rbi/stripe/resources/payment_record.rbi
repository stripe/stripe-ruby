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
    class AmountRefunded < Stripe::StripeObject
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
      # Information about the custom (user-defined) payment method used to make this payment.
      sig { returns(T.nilable(Custom)) }
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
    sig { returns(AmountRefunded) }
    attr_reader :amount_refunded

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
  end
end