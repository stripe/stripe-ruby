# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DisputeListParams < ::Stripe::RequestParams
        # Filter results by the ID of the FinancialAccount associated with the dispute.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # Maximum number of results to return, between 1 and 100. Defaults to 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter results to Disputes with any of the provided statuses.
        sig { returns(T.nilable(T::Array[String])) }
        def statuses; end
        sig { params(_statuses: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def statuses=(_statuses); end
        # Filter results by the ID of the disputed money movement.
        sig { returns(T.nilable(String)) }
        def target; end
        sig { params(_target: T.nilable(String)).returns(T.nilable(String)) }
        def target=(_target); end
        sig {
          params(financial_account: T.nilable(String), limit: T.nilable(Integer), statuses: T.nilable(T::Array[String]), target: T.nilable(String)).void
         }
        def initialize(financial_account: nil, limit: nil, statuses: nil, target: nil); end
      end
    end
  end
end