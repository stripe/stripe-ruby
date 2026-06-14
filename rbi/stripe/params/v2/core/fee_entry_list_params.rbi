# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class FeeEntryListParams < ::Stripe::RequestParams
        # Filter by money movement id (e.g. txn_xxx, bt_xxx).
        sig { returns(T.nilable(String)) }
        def collection_record; end
        sig { params(_collection_record: T.nilable(String)).returns(T.nilable(String)) }
        def collection_record=(_collection_record); end
        # Filter for FeeEntries created at the exact specified timestamp.
        sig { returns(T.nilable(String)) }
        def created; end
        sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
        def created=(_created); end
        # Filter for FeeEntries created after the specified timestamp (exclusive).
        sig { returns(T.nilable(String)) }
        def created_gt; end
        sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
        def created_gt=(_created_gt); end
        # Filter for FeeEntries created at or after the specified timestamp (inclusive).
        sig { returns(T.nilable(String)) }
        def created_gte; end
        sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
        def created_gte=(_created_gte); end
        # Filter for FeeEntries created before the specified timestamp (exclusive).
        sig { returns(T.nilable(String)) }
        def created_lt; end
        sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
        def created_lt=(_created_lt); end
        # Filter for FeeEntries created at or before the specified timestamp (inclusive).
        sig { returns(T.nilable(String)) }
        def created_lte; end
        sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
        def created_lte=(_created_lte); end
        # Filter by fee batch id (fb_xxx).
        sig { returns(T.nilable(String)) }
        def fee_batch; end
        sig { params(_fee_batch: T.nilable(String)).returns(T.nilable(String)) }
        def fee_batch=(_fee_batch); end
        # Filter by usage object id (e.g. ch_xxx, py_xxx).
        sig { returns(T.nilable(String)) }
        def incurred_by; end
        sig { params(_incurred_by: T.nilable(String)).returns(T.nilable(String)) }
        def incurred_by=(_incurred_by); end
        # Maximum number of results to return per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(collection_record: T.nilable(String), created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), fee_batch: T.nilable(String), incurred_by: T.nilable(String), limit: T.nilable(Integer)).void
         }
        def initialize(
          collection_record: nil,
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          fee_batch: nil,
          incurred_by: nil,
          limit: nil
        ); end
      end
    end
  end
end