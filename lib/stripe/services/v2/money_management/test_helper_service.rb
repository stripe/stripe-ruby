# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TestHelperService < StripeService
        attr_reader :financial_addresses

        def initialize(requestor)
          super
          @financial_addresses = Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressService
                                 .new(@requestor)
        end

        # Creates an EarnedCredit in a Sandbox environment for testing purposes.
        def earned_credits(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/test_helpers/earned_credits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
