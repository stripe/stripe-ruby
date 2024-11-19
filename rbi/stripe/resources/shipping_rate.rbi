# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Shipping rates describe the price of shipping presented to your customers and
  # applied to a purchase. For more information, see [Charge for shipping](https://stripe.com/docs/payments/during-payment/charge-shipping).
  class ShippingRate < APIResource
    class DeliveryEstimate < Stripe::StripeObject
      class Maximum < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :unit
        sig { returns(Integer) }
        attr_reader :value
      end
      class Minimum < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :unit
        sig { returns(Integer) }
        attr_reader :value
      end
      sig { returns(T.nilable(Maximum)) }
      attr_reader :maximum
      sig { returns(T.nilable(Minimum)) }
      attr_reader :minimum
    end
    class FixedAmount < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(String) }
        attr_reader :tax_behavior
      end
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(String) }
      attr_reader :currency
      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
    end
    sig { returns(T::Boolean) }
    # Whether the shipping rate can be used for new purchases. Defaults to `true`.
    attr_reader :active
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(DeliveryEstimate)) }
    # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
    attr_reader :delivery_estimate
    sig { returns(T.nilable(String)) }
    # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
    attr_reader :display_name
    sig { returns(FixedAmount) }
    # Attribute for field fixed_amount
    attr_reader :fixed_amount
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
    attr_reader :tax_behavior
    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
    attr_reader :tax_code
    sig { returns(String) }
    # The type of calculation to use on the shipping rate.
    attr_reader :type
  end
end