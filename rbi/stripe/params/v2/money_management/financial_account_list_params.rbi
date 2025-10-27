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
        # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig { params(limit: T.nilable(Integer), status: T.nilable(String)).void }
        def initialize(limit: nil, status: nil); end
      end
    end
  end
end