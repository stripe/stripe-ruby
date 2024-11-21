# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    # A gift card transaction represents a single transaction on a referenced gift card.
    # A transaction is in one of three states, `confirmed`, `held` or `canceled`. A `confirmed`
    # transaction is one that has added/deducted funds. A `held` transaction has created a
    # temporary hold on funds, which can then be cancelled or confirmed. A `held` transaction
    # can be confirmed into a `confirmed` transaction, or canceled into a `canceled` transaction.
    # A `canceled` transaction has no effect on a gift card's balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "gift_cards.transaction"
      def self.object_name
        "gift_cards.transaction"
      end

      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          # The Stripe CheckoutSession that created this object.
          attr_reader :checkout_session
          # The Stripe CheckoutSession LineItem that created this object.
          attr_reader :line_item
        end

        class Order < Stripe::StripeObject
          # The Stripe Order LineItem that created this object.
          attr_reader :line_item
          # The Stripe Order that created this object.
          attr_reader :order
        end

        class Payment < Stripe::StripeObject
          # The PaymentIntent that created this object.
          attr_reader :payment_intent
        end
        # Attribute for field checkout
        attr_reader :checkout
        # Attribute for field order
        attr_reader :order
        # Attribute for field payment
        attr_reader :payment
        # The type of event that created this object.
        attr_reader :type
      end
      # The amount of this transaction. A positive value indicates that funds were added to the gift card. A negative value indicates that funds were removed from the gift card.
      attr_reader :amount

      # Time at which the transaction was confirmed. Measured in seconds since the Unix epoch.
      attr_reader :confirmed_at

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created

      # The related Stripe objects that created this gift card transaction.
      attr_reader :created_by

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency

      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description

      # The gift card that this transaction occurred on
      attr_reader :gift_card

      # Unique identifier for the object.
      attr_reader :id

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Status of this transaction, one of `held`, `confirmed`, or `canceled`.
      attr_reader :status

      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      attr_reader :transfer_group

      # Cancel a gift card transaction
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Cancel a gift card transaction
      def self.cancel(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/cancel", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Confirm a gift card transaction
      def confirm(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/confirm", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Confirm a gift card transaction
      def self.confirm(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/confirm", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Create a gift card transaction
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/transactions",
          params: params,
          opts: opts
        )
      end

      # List gift card transactions for a gift card
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/gift_cards/transactions",
          params: filters,
          opts: opts
        )
      end

      # Update a gift card transaction
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
