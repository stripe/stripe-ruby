# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to
  # create multiple codes for a single coupon.
  class PromotionCode < APIResource
    class Restrictions < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
        sig { returns(Integer) }
        attr_reader :minimum_amount
      end
      # Promotion code restrictions defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
      # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
      sig { returns(T::Boolean) }
      attr_reader :first_time_transaction
      # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum_amount
      # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
      sig { returns(T.nilable(String)) }
      attr_reader :minimum_amount_currency
    end
    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    sig { returns(T::Boolean) }
    attr_reader :active

    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
    sig { returns(String) }
    attr_reader :code

    # A coupon contains information about a percent-off or amount-off discount you
    # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    sig { returns(Stripe::Coupon) }
    attr_reader :coupon

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The customer that this promotion code can be used by.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    # Date at which the promotion code can no longer be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Maximum number of times this promotion code can be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Attribute for field restrictions
    sig { returns(Restrictions) }
    attr_reader :restrictions

    # Number of times this promotion code has been used.
    sig { returns(Integer) }
    attr_reader :times_redeemed
  end
end