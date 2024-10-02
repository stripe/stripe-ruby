# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    class CardService < StripeService
      # Creates a new gift card object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List gift cards for an account
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a gift card by id
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Update a gift card
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Validates a gift card code, returning the matching gift card object if it exists.
      def validate(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/gift_cards/cards/validate",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
