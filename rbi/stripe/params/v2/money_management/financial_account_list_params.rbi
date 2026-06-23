# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountListParams < ::Stripe::RequestParams
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
        sig { params(limit: T.nilable(Integer), statuses: T.nilable(T::Array[String])).void }
        def initialize(limit: nil, statuses: nil); end
      end
    end
  end
end