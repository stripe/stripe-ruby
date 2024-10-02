# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class IssuingService < StripeService
    attr_reader :authorizations, :cards, :cardholders, :credit_underwriting_records, :disputes, :dispute_settlement_details, :personalization_designs, :physical_bundles, :tokens, :transactions

    def initialize(requestor)
      super(requestor)
      @authorizations = Stripe::Issuing::AuthorizationService.new(@requestor)
      @cards = Stripe::Issuing::CardService.new(@requestor)
      @cardholders = Stripe::Issuing::CardholderService.new(@requestor)
      @credit_underwriting_records = Stripe::Issuing::CreditUnderwritingRecordService
                                     .new(@requestor)
      @disputes = Stripe::Issuing::DisputeService.new(@requestor)
      @dispute_settlement_details = Stripe::Issuing::DisputeSettlementDetailService.new(@requestor)
      @personalization_designs = Stripe::Issuing::PersonalizationDesignService.new(@requestor)
      @physical_bundles = Stripe::Issuing::PhysicalBundleService.new(@requestor)
      @tokens = Stripe::Issuing::TokenService.new(@requestor)
      @transactions = Stripe::Issuing::TransactionService.new(@requestor)
    end
  end
end
