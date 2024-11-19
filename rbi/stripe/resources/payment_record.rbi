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
      sig { returns(String) }
      attr_reader :currency
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountFailed < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :currency
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountGuaranteed < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :currency
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountRefunded < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :currency
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountRequested < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :currency
      sig { returns(Integer) }
      attr_reader :value
    end
    class CustomerDetails < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      sig { returns(T.nilable(String)) }
      attr_reader :email
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(T.nilable(String)) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        sig { returns(Address) }
        attr_reader :address
        sig { returns(T.nilable(String)) }
        attr_reader :email
        sig { returns(T.nilable(String)) }
        attr_reader :name
        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end
      class Custom < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :display_name
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      sig { returns(T.nilable(BillingDetails)) }
      attr_reader :billing_details
      sig { returns(T.nilable(Custom)) }
      attr_reader :custom
      sig { returns(T.nilable(String)) }
      attr_reader :payment_method
      sig { returns(String) }
      attr_reader :type
    end
    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(Address) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    sig { returns(AmountCanceled) }
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_canceled
    sig { returns(AmountFailed) }
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_failed
    sig { returns(AmountGuaranteed) }
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_guaranteed
    sig { returns(AmountRefunded) }
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_refunded
    sig { returns(AmountRequested) }
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_requested
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(CustomerDetails)) }
    # Customer information for this payment.
    attr_reader :customer_details
    sig { returns(T.nilable(String)) }
    # Indicates whether the customer was present in your checkout flow during this payment.
    attr_reader :customer_presence
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # ID of the latest Payment Attempt Record attached to this Payment Record.
    attr_reader :latest_payment_attempt_record
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(PaymentMethodDetails)) }
    # Information about the Payment Method debited for this payment.
    attr_reader :payment_method_details
    sig { returns(T.nilable(String)) }
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    attr_reader :payment_reference
    sig { returns(T.nilable(ShippingDetails)) }
    # Shipping information for this payment.
    attr_reader :shipping_details
  end
end