# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module GiftCards
    # A gift card represents a single gift card owned by a customer, including the
    # remaining balance, gift card code, and whether or not it is active.
    class Card < APIResource
      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          # The Stripe CheckoutSession that created this object.
          sig { returns(String) }
          attr_reader :checkout_session
          # The Stripe CheckoutSession LineItem that created this object.
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
        end
        class Order < Stripe::StripeObject
          # The Stripe Order LineItem that created this object.
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
          # The Stripe Order that created this object.
          sig { returns(String) }
          attr_reader :order
        end
        class Payment < Stripe::StripeObject
          # The PaymentIntent that created this object.
          sig { returns(String) }
          attr_reader :payment_intent
        end
        # Attribute for field checkout
        sig { returns(Checkout) }
        attr_reader :checkout
        # Attribute for field order
        sig { returns(Order) }
        attr_reader :order
        # Attribute for field payment
        sig { returns(Payment) }
        attr_reader :payment
        # The type of event that created this object.
        sig { returns(String) }
        attr_reader :type
      end
      # Whether this gift card can be used or not.
      sig { returns(T::Boolean) }
      attr_reader :active

      # The amount of funds available for new transactions.
      sig { returns(Integer) }
      attr_reader :amount_available

      # The amount of funds marked as held.
      sig { returns(Integer) }
      attr_reader :amount_held

      # Code used to redeem this gift card.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The related Stripe objects that created this gift card.
      sig { returns(T.nilable(CreatedBy)) }
      attr_reader :created_by

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Transactions on this gift card.
      sig { returns(Stripe::ListObject) }
      attr_reader :transactions
    end
  end
end