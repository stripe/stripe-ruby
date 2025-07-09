# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TestHelperService < StripeService
      attr_reader :financial_addresses
      def initialize(requestor)
        super(requestor)
        @financial_addresses = Stripe::V2::TestHelpers::FinancialAddressService.new(@requestor)
      end
    end
  end
end