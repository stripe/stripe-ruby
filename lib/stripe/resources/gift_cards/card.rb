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
