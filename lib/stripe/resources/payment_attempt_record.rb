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
      attr_reader :currency, :value
    end

    class AmountFailed < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountGuaranteed < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountRequested < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class CustomerDetails < Stripe::StripeObject
      attr_reader :customer, :email, :name, :phone
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address, :email, :name, :phone
      end

      class Custom < Stripe::StripeObject
        attr_reader :display_name, :type
      end
      attr_reader :billing_details, :custom, :payment_method, :type
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :name, :phone
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
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_attempt_records",
        params: filters,
        opts: opts
      )
    end
  end
end
