# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for Transactions created after the specified timestamp.
          attr_accessor :gt
          # Filter for Transactions created at or after the specified timestamp.
          attr_accessor :gte
          # Filter for Transactions created before the specified timestamp.
          attr_accessor :lt
          # Filter for Transactions created at or before the specified timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Set of filters to query TransactionEntries within a range of `created` timestamps.
        attr_accessor :created
        # The page limit.
        attr_accessor :limit
        # Filter for TransactionEntries belonging to a Transaction.
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
