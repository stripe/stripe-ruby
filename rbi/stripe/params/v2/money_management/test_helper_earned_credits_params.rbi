# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TestHelperEarnedCreditsParams < ::Stripe::RequestParams
        # The amount and currency of the EarnedCredit.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # The FinancialAccount to simulate the EarnedCredit for.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # The type of EarnedCredit to create. Currently only interest is supported.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(amount: ::Stripe::V2::Amount, financial_account: String, type: String).void }
        def initialize(amount: nil, financial_account: nil, type: nil); end
      end
    end
  end
end