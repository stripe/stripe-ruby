# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CapitalService < StripeService
    attr_reader :financing_offers, :financing_summary, :financing_transactions

    def initialize(requestor)
      super(requestor)
      @financing_offers = Stripe::Capital::FinancingOfferService.new(@requestor)
      @financing_summary = Stripe::Capital::FinancingSummaryService.new(@requestor)
      @financing_transactions = Stripe::Capital::FinancingTransactionService.new(@requestor)
    end
  end
end
