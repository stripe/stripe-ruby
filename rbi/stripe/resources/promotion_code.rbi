# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to
  # create multiple codes for a single coupon.
  class PromotionCode < APIResource
    class Restrictions < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :minimum_amount
      end
      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
      sig { returns(T::Boolean) }
      attr_reader :first_time_transaction
      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum_amount
      sig { returns(T.nilable(String)) }
      attr_reader :minimum_amount_currency
    end
    sig { returns(T::Boolean) }
    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    attr_reader :active
    sig { returns(String) }
    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
    attr_reader :code
    sig { returns(Stripe::Coupon) }
    # A coupon contains information about a percent-off or amount-off discount you
    # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    attr_reader :coupon
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The customer that this promotion code can be used by.
    attr_reader :customer
    sig { returns(T.nilable(Integer)) }
    # Date at which the promotion code can no longer be redeemed.
    attr_reader :expires_at
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(Integer)) }
    # Maximum number of times this promotion code can be redeemed.
    attr_reader :max_redemptions
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Restrictions) }
    # Attribute for field restrictions
    attr_reader :restrictions
    sig { returns(Integer) }
    # Number of times this promotion code has been used.
    attr_reader :times_redeemed
  end
end