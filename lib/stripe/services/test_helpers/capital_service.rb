# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class CapitalService < StripeService
      attr_reader :financing_offers

      def initialize(requestor)
        super
        @financing_offers = Stripe::TestHelpers::Capital::FinancingOfferService.new(@requestor)
      end
    end
  end
end
