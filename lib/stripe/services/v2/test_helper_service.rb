# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TestHelperService < StripeService
      attr_reader :financial_addresses, :money_management

      def initialize(requestor)
        super
        @financial_addresses = Stripe::V2::TestHelpers::FinancialAddressService.new(@requestor)
        @money_management = Stripe::V2::TestHelpers::MoneyManagementService.new(@requestor)
      end
    end
  end
end
