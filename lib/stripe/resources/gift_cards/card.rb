# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    # A gift card represents a single gift card owned by a customer, including the
    # remaining balance, gift card code, and whether or not it is active.
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "gift_cards.card"
      def self.object_name
        "gift_cards.card"
      end

      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          attr_reader :checkout_session, :line_item
        end

        class Order < Stripe::StripeObject
          attr_reader :line_item, :order
        end

        class Payment < Stripe::StripeObject
          attr_reader :payment_intent
        end
        attr_reader :checkout, :order, :payment, :type
      end
      # Whether this gift card can be used or not.
      attr_reader :active
      # The amount of funds available for new transactions.
      attr_reader :amount_available
      # The amount of funds marked as held.
      attr_reader :amount_held
      # Code used to redeem this gift card.
      attr_reader :code
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The related Stripe objects that created this gift card.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Transactions on this gift card.
      attr_reader :transactions

      # Creates a new gift card object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts
        )
      end

      # List gift cards for an account
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts
        )
      end

      # Update a gift card
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Validates a gift card code, returning the matching gift card object if it exists.
      def self.validate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/cards/validate",
          params: params,
          opts: opts
        )
      end
    end
  end
end
