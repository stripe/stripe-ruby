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

      OBJECT_NAME = 'gift_cards.transaction'

      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format('/v1/gift_cards/transactions/%<id>s/cancel', {:id => CGI.escape(self["id"])}),
          params: params,
          opts: opts,
        )
      end
      def confirm(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format('/v1/gift_cards/transactions/%<id>s/confirm', {:id => CGI.escape(self["id"])}),
          params: params,
          opts: opts,
        )
      end
      def self.cancel(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format('/v1/gift_cards/transactions/%<id>s/cancel', {:id => CGI.escape(id)}),
          params: params,
          opts: opts,
        )
      end
      def self.confirm(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format('/v1/gift_cards/transactions/%<id>s/confirm', {:id => CGI.escape(id)}),
          params: params,
          opts: opts,
        )
      end
    end
  end
end