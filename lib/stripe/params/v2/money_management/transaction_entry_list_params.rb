# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for objects created after the specified timestamp.
          attr_accessor :gt
          # Filter for objects created at or after the specified timestamp.
          attr_accessor :gte
          # Filter for objects created before the specified timestamp.
          attr_accessor :lt
          # Filter for objects created at or before the specified timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filter for TransactionEntries created within a specified time range.
        attr_accessor :created
        # The page limit.
        attr_accessor :limit
        # Filter for TransactionEntries belonging to a specific Transaction. This filter only supports
        # filtering by a Transaction ID, which appears in each TransactionEntry's `transaction` field.
        attr_accessor :transaction

        def initialize(created: nil, limit: nil, transaction: nil)
          @created = created
          @limit = limit
          @transaction = transaction
        end
      end
    end
  end
end
