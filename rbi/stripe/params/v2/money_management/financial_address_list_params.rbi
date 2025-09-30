# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressListParams < Stripe::RequestParams
        # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(financial_account: T.nilable(String), include: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
         }
        def initialize(financial_account: nil, include: nil, limit: nil); end
      end
    end
  end
end