# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TestHelperEarnedCreditsParams < ::Stripe::RequestParams
        # The amount and currency of the EarnedCredit.
        attr_accessor :amount
        # The FinancialAccount to simulate the EarnedCredit for.
        attr_accessor :financial_account
        # The type of EarnedCredit to create. Currently only interest is supported.
        attr_accessor :type

        def initialize(amount: nil, financial_account: nil, type: nil)
          @amount = amount
          @financial_account = financial_account
          @type = type
        end
      end
    end
  end
end
