# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module GiftCards
    # A gift card transaction represents a single transaction on a referenced gift card.
    # A transaction is in one of three states, `confirmed`, `held` or `canceled`. A `confirmed`
    # transaction is one that has added/deducted funds. A `held` transaction has created a
    # temporary hold on funds, which can then be cancelled or confirmed. A `held` transaction
    # can be confirmed into a `confirmed` transaction, or canceled into a `canceled` transaction.
    # A `canceled` transaction has no effect on a gift card's balance.
    class Transaction < APIResource
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
      # The amount of this transaction. A positive value indicates that funds were added to the gift card. A negative value indicates that funds were removed from the gift card.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      # Time at which the transaction was confirmed. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :confirmed_at

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :created

      # The related Stripe objects that created this gift card transaction.
      sig { returns(T.nilable(CreatedBy)) }
      attr_reader :created_by

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      # The gift card that this transaction occurred on
      sig { returns(T.nilable(String)) }
      attr_reader :gift_card

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Status of this transaction, one of `held`, `confirmed`, or `canceled`.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      sig { returns(T.nilable(String)) }
      attr_reader :transfer_group
    end
  end
end