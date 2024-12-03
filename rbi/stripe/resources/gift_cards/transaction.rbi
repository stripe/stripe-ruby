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
      sig { returns(T.nilable(Integer)) }
      # The amount of this transaction. A positive value indicates that funds were added to the gift card. A negative value indicates that funds were removed from the gift card.
      attr_reader :amount
      sig { returns(T.nilable(Integer)) }
      # Time at which the transaction was confirmed. Measured in seconds since the Unix epoch.
      attr_reader :confirmed_at
      sig { returns(T.nilable(Integer)) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(CreatedBy)) }
      # The related Stripe objects that created this gift card transaction.
      attr_reader :created_by
      sig { returns(T.nilable(String)) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(String)) }
      # The gift card that this transaction occurred on
      attr_reader :gift_card
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # Status of this transaction, one of `held`, `confirmed`, or `canceled`.
      attr_reader :status
      sig { returns(T.nilable(String)) }
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      attr_reader :transfer_group
    end
  end
end