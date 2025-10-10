# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryListParams < ::Stripe::RequestParams
        # Filter for Transactions created at an exact time.
        attr_accessor :created
        # Filter for Transactions created after the specified timestamp.
        attr_accessor :created_gt
        # Filter for Transactions created at or after the specified timestamp.
        attr_accessor :created_gte
        # Filter for Transactions created before the specified timestamp.
        attr_accessor :created_lt
        # Filter for Transactions created at or before the specified timestamp.
        attr_accessor :created_lte
        # The page limit.
        attr_accessor :limit
        # Filter for TransactionEntries belonging to a Transaction.
        attr_accessor :transaction

        def initialize(
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          limit: nil,
          transaction: nil
        )
          @created = created
          @created_gt = created_gt
          @created_gte = created_gte
          @created_lt = created_lt
          @created_lte = created_lte
          @limit = limit
          @transaction = transaction
        end
      end
    end
  end
end
