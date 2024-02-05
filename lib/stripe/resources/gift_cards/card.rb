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

      # Validates a gift card code, returning the matching gift card object if it exists.
      def self.validate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/cards/validate",
          params: params,
          opts: opts
        )
      end

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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/gift_cards/cards",
          params: filters,
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
    end
  end
end
