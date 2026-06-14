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
        # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # Filter for FinancialAccount `type`. By default, FinancialAccounts of any `type` are returned.
        sig { returns(T.nilable(T::Array[String])) }
        def types; end
        sig { params(_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def types=(_types); end
        sig {
          params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer), status: T.nilable(String), types: T.nilable(T::Array[String])).void
         }
        def initialize(include: nil, limit: nil, status: nil, types: nil); end
      end
    end
  end
end