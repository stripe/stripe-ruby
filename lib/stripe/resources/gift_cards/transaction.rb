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
