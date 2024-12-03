# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A coupon contains information about a percent-off or amount-off discount you
  # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
  # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
  class Coupon < APIResource
    class AppliesTo < Stripe::StripeObject
      # A list of product IDs this coupon applies to
      sig { returns(T::Array[String]) }
      attr_reader :products
    end
    class CurrencyOptions < Stripe::StripeObject
      # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
      sig { returns(Integer) }
      attr_reader :amount_off
    end
    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_off

    # Attribute for field applies_to
    sig { returns(AppliesTo) }
    attr_reader :applies_to

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    sig { returns(T.nilable(String)) }
    attr_reader :currency

    # Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T::Hash[String, CurrencyOptions]) }
    attr_reader :currency_options

    # One of `forever`, `once`, and `repeating`. Describes how long a customer who applies this coupon will get the discount.
    sig { returns(String) }
    attr_reader :duration

    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :duration_in_months

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # Name of the coupon displayed to customers on for instance invoices or receipts.
    sig { returns(T.nilable(String)) }
    attr_reader :name

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
    sig { returns(T.nilable(Float)) }
    attr_reader :percent_off

    # Date after which the coupon can no longer be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :redeem_by

    # Number of times this coupon has been applied to a customer.
    sig { returns(Integer) }
    attr_reader :times_redeemed

    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    sig { returns(T::Boolean) }
    attr_reader :valid

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end