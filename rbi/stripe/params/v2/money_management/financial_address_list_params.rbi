# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressListParams < ::Stripe::RequestParams
        # The ID of the Account that owns the FinancialAddresses.
        sig { returns(T.nilable(String)) }
        def account; end
        sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
        def account=(_account); end
        # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(account: T.nilable(String), financial_account: T.nilable(String), limit: T.nilable(Integer)).void
         }
        def initialize(account: nil, financial_account: nil, limit: nil); end
      end
    end
  end
end