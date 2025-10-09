# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryListParams < ::Stripe::RequestParams
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
          params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer), transaction: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          limit: nil,
          transaction: nil
        ); end
      end
    end
  end
end