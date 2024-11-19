# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A coupon contains information about a percent-off or amount-off discount you
  # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
  # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
  class Coupon < APIResource
    class AppliesTo < Stripe::StripeObject
      sig { returns(T::Array[String]) }
      attr_reader :products
    end
    class CurrencyOptions < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount_off
    end
    sig { returns(T.nilable(Integer)) }
    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    attr_reader :amount_off
    sig { returns(AppliesTo) }
    # Attribute for field applies_to
    attr_reader :applies_to
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    attr_reader :currency
    sig { returns(T::Hash[String, CurrencyOptions]) }
    # Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency_options
    sig { returns(String) }
    # One of `forever`, `once`, and `repeating`. Describes how long a customer who applies this coupon will get the discount.
    attr_reader :duration
    sig { returns(T.nilable(Integer)) }
    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    attr_reader :duration_in_months
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(Integer)) }
    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    attr_reader :max_redemptions
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # Name of the coupon displayed to customers on for instance invoices or receipts.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Float)) }
    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
    attr_reader :percent_off
    sig { returns(T.nilable(Integer)) }
    # Date after which the coupon can no longer be redeemed.
    attr_reader :redeem_by
    sig { returns(Integer) }
    # Number of times this coupon has been applied to a customer.
    attr_reader :times_redeemed
    sig { returns(T::Boolean) }
    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    attr_reader :valid
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end