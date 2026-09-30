# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TestHelpersService < StripeService
        attr_reader :financial_addresses

        def initialize(requestor)
          super
          @financial_addresses = Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressService
                                 .new(@requestor)
        end
      end
    end
  end
end
