# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class FeeEntryListParams < ::Stripe::RequestParams
        # Filter by money movement id (e.g. txn_xxx, bt_xxx).
        attr_accessor :collection_record
        # Filter for FeeEntries created at the exact specified timestamp.
        attr_accessor :created
        # Filter for FeeEntries created after the specified timestamp (exclusive).
        attr_accessor :created_gt
        # Filter for FeeEntries created at or after the specified timestamp (inclusive).
        attr_accessor :created_gte
        # Filter for FeeEntries created before the specified timestamp (exclusive).
        attr_accessor :created_lt
        # Filter for FeeEntries created at or before the specified timestamp (inclusive).
        attr_accessor :created_lte
        # Filter by fee batch id (fb_xxx).
        attr_accessor :fee_batch
        # Filter by usage object id (e.g. ch_xxx, py_xxx).
        attr_accessor :incurred_by
        # Maximum number of results to return per page. Defaults to 20.
        attr_accessor :limit

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
        )
          @collection_record = collection_record
          @created = created
          @created_gt = created_gt
          @created_gte = created_gte
          @created_lt = created_lt
          @created_lte = created_lte
          @fee_batch = fee_batch
          @incurred_by = incurred_by
          @limit = limit
        end
      end
    end
  end
end
