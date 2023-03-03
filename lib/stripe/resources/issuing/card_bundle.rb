# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Card Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class CardBundle < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.card_bundle"
    end
  end
end
