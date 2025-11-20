# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionListParams < ::Stripe::RequestParams
        # The ID of the FinancialAccount to filter by.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig { params(financial_account: T.nilable(String), limit: T.nilable(Integer)).void }
        def initialize(financial_account: nil, limit: nil); end
      end
    end
  end
end