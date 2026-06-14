# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionListParams < ::Stripe::RequestParams
        # Filter for Transactions created at an exact time.
        sig { returns(T.nilable(String)) }
        def created; end
        sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
        def created=(_created); end
        # Filter for Transactions created after the specified timestamp.
        sig { returns(T.nilable(String)) }
        def created_gt; end
        sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
        def created_gt=(_created_gt); end
        # Filter for Transactions created at or after the specified timestamp.
        sig { returns(T.nilable(String)) }
        def created_gte; end
        sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
        def created_gte=(_created_gte); end
        # Filter for Transactions created before the specified timestamp.
        sig { returns(T.nilable(String)) }
        def created_lt; end
        sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
        def created_lt=(_created_lt); end
        # Filter for Transactions created at or before the specified timestamp.
        sig { returns(T.nilable(String)) }
        def created_lte; end
        sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
        def created_lte=(_created_lte); end
        # Filter for Transactions belonging to a FinancialAccount.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # Filter for Transactions corresponding to a Flow.
        sig { returns(T.nilable(String)) }
        def flow; end
        sig { params(_flow: T.nilable(String)).returns(T.nilable(String)) }
        def flow=(_flow); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), financial_account: T.nilable(String), flow: T.nilable(String), limit: T.nilable(Integer)).void
         }
        def initialize(
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          financial_account: nil,
          flow: nil,
          limit: nil
        ); end
      end
    end
  end
end