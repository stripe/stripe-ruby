# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class FeeBatchListParams < ::Stripe::RequestParams
        # Filter to return only FeeBatches associated with this collection record ID.
        attr_accessor :collection_record
        # Filter for FeeBatches created at the exact specified timestamp.
        attr_accessor :created
        # Filter for FeeBatches created after the specified timestamp (exclusive).
        attr_accessor :created_gt
        # Filter for FeeBatches created at or after the specified timestamp (inclusive).
        attr_accessor :created_gte
        # Filter for FeeBatches created before the specified timestamp (exclusive).
        attr_accessor :created_lt
        # Filter for FeeBatches created at or before the specified timestamp (inclusive).
        attr_accessor :created_lte
        # Maximum number of results to return per page. Defaults to 20.
        attr_accessor :limit

        def initialize(
          collection_record: nil,
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          limit: nil
        )
          @collection_record = collection_record
          @created = created
          @created_gt = created_gt
          @created_gte = created_gte
          @created_lt = created_lt
          @created_lte = created_lte
          @limit = limit
        end
      end
    end
  end
end
