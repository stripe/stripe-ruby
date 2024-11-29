# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    class TransactionService < StripeService
      # Cancel a gift card transaction
      def cancel(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/cancel", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Confirm a gift card transaction
      def confirm(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/confirm", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Create a gift card transaction
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/gift_cards/transactions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List gift card transactions for a gift card
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/gift_cards/transactions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the gift card transaction.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/gift_cards/transactions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Update a gift card transaction
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
