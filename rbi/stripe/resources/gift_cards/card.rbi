# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    # A gift card represents a single gift card owned by a customer, including the
    # remaining balance, gift card code, and whether or not it is active.
    class Card < APIResource
      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :checkout_session
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
        end
        class Order < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
          sig { returns(String) }
          attr_reader :order
        end
        class Payment < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :payment_intent
        end
        sig { returns(Checkout) }
        attr_reader :checkout
        sig { returns(Order) }
        attr_reader :order
        sig { returns(Payment) }
        attr_reader :payment
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T::Boolean) }
      # Whether this gift card can be used or not.
      attr_reader :active
      sig { returns(Integer) }
      # The amount of funds available for new transactions.
      attr_reader :amount_available
      sig { returns(Integer) }
      # The amount of funds marked as held.
      attr_reader :amount_held
      sig { returns(T.nilable(String)) }
      # Code used to redeem this gift card.
      attr_reader :code
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(CreatedBy)) }
      # The related Stripe objects that created this gift card.
      attr_reader :created_by
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Stripe::ListObject) }
      # Transactions on this gift card.
      attr_reader :transactions
    end
  end
end