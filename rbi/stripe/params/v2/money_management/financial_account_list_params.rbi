# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountListParams < ::Stripe::RequestParams
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter for FinancialAccount `status`. By default, closed FinancialAccounts are not returned.
        sig { returns(T.nilable(T::Array[String])) }
        def statuses; end
        sig { params(_statuses: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def statuses=(_statuses); end
        # Filter for FinancialAccount `type`. By default, FinancialAccounts of any `type` are returned.
        sig { returns(T.nilable(T::Array[String])) }
        def types; end
        sig { params(_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def types=(_types); end
        sig {
          params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer), statuses: T.nilable(T::Array[String]), types: T.nilable(T::Array[String])).void
         }
        def initialize(include: nil, limit: nil, statuses: nil, types: nil); end
      end
    end
  end
end