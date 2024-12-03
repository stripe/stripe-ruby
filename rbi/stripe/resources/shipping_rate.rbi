# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Shipping rates describe the price of shipping presented to your customers and
  # applied to a purchase. For more information, see [Charge for shipping](https://stripe.com/docs/payments/during-payment/charge-shipping).
  class ShippingRate < APIResource
    class DeliveryEstimate < Stripe::StripeObject
      class Maximum < Stripe::StripeObject
        # A unit of time.
        sig { returns(String) }
        attr_reader :unit
        # Must be greater than 0.
        sig { returns(Integer) }
        attr_reader :value
      end
      class Minimum < Stripe::StripeObject
        # A unit of time.
        sig { returns(String) }
        attr_reader :unit
        # Must be greater than 0.
        sig { returns(Integer) }
        attr_reader :value
      end
      # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
      sig { returns(T.nilable(Maximum)) }
      attr_reader :maximum
      # The lower bound of the estimated range. If empty, represents no lower bound.
      sig { returns(T.nilable(Minimum)) }
      attr_reader :minimum
    end
    class FixedAmount < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        # A non-negative integer in cents representing how much to charge.
        sig { returns(Integer) }
        attr_reader :amount
        # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
        sig { returns(String) }
        attr_reader :tax_behavior
      end
      # A non-negative integer in cents representing how much to charge.
      sig { returns(Integer) }
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
    end
    # Whether the shipping rate can be used for new purchases. Defaults to `true`.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
    sig { returns(T.nilable(DeliveryEstimate)) }
    attr_reader :delivery_estimate

    # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
    sig { returns(T.nilable(String)) }
    attr_reader :display_name

    # Attribute for field fixed_amount
    sig { returns(FixedAmount) }
    attr_reader :fixed_amount

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
    sig { returns(T.nilable(String)) }
    attr_reader :tax_behavior

    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    attr_reader :tax_code

    # The type of calculation to use on the shipping rate.
    sig { returns(String) }
    attr_reader :type
  end
end