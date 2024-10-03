# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardsService < StripeService
    attr_reader :cards, :transactions

    def initialize(requestor)
      super(requestor)
      @cards = Stripe::GiftCards::CardService.new(@requestor)
      @transactions = Stripe::GiftCards::TransactionService.new(@requestor)
    end
  end
end
