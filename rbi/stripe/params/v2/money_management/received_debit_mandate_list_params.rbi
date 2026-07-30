# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitMandateListParams < ::Stripe::RequestParams
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
        # Filter by mandate status.
        sig { returns(T.nilable(T::Array[String])) }
        def statuses; end
        sig { params(_statuses: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def statuses=(_statuses); end
        # The type of ReceivedDebitMandate to filter by.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(financial_account: T.nilable(String), limit: T.nilable(Integer), statuses: T.nilable(T::Array[String]), type: T.nilable(String)).void
         }
        def initialize(financial_account: nil, limit: nil, statuses: nil, type: nil); end
      end
    end
  end
end