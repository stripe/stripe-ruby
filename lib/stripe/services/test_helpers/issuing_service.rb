# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class IssuingService < StripeService
      attr_reader :authorizations
      attr_reader :cards
      attr_reader :personalization_designs
      attr_reader :transactions
      def initialize(requestor)
        super(requestor)
        @authorizations = Stripe::TestHelpers::Issuing::AuthorizationService.new(@requestor)
        @cards = Stripe::TestHelpers::Issuing::CardService.new(@requestor)
        @personalization_designs = Stripe::TestHelpers::Issuing::PersonalizationDesignService
          .new(@requestor)
        @transactions = Stripe::TestHelpers::Issuing::TransactionService.new(@requestor)
      end
    end
  end
end