# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for Transactions created after the specified timestamp.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Filter for Transactions created at or after the specified timestamp.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Filter for Transactions created before the specified timestamp.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Filter for Transactions created at or before the specified timestamp.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Set of filters to query Transactions within a range of `created` timestamps.
        sig { returns(T.nilable(::Stripe::V2::MoneyManagement::TransactionListParams::Created)) }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::MoneyManagement::TransactionListParams::Created)).returns(T.nilable(::Stripe::V2::MoneyManagement::TransactionListParams::Created))
         }
        def created=(_created); end
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
          params(created: T.nilable(::Stripe::V2::MoneyManagement::TransactionListParams::Created), financial_account: T.nilable(String), flow: T.nilable(String), limit: T.nilable(Integer)).void
         }
        def initialize(created: nil, financial_account: nil, flow: nil, limit: nil); end
      end
    end
  end
end