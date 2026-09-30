# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryListParams < ::Stripe::RequestParams
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
        # Set of filters to query TransactionEntries within a range of `created` timestamps.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::TransactionEntryListParams::Created))
         }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::MoneyManagement::TransactionEntryListParams::Created)).returns(T.nilable(::Stripe::V2::MoneyManagement::TransactionEntryListParams::Created))
         }
        def created=(_created); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter for TransactionEntries belonging to a Transaction.
        sig { returns(T.nilable(String)) }
        def transaction; end
        sig { params(_transaction: T.nilable(String)).returns(T.nilable(String)) }
        def transaction=(_transaction); end
        sig {
          params(created: T.nilable(::Stripe::V2::MoneyManagement::TransactionEntryListParams::Created), limit: T.nilable(Integer), transaction: T.nilable(String)).void
         }
        def initialize(created: nil, limit: nil, transaction: nil); end
      end
    end
  end
end