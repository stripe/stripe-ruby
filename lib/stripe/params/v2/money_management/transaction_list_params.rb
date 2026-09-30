# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionListParams < ::Stripe::RequestParams
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
        # Set of filters to query Transactions within a range of `created` timestamps.
        attr_accessor :created
        # Filter for Transactions belonging to a FinancialAccount.
        attr_accessor :financial_account
        # Filter for Transactions corresponding to a Flow.
        attr_accessor :flow
        # The page limit.
        attr_accessor :limit

        def initialize(created: nil, financial_account: nil, flow: nil, limit: nil)
          @created = created
          @financial_account = financial_account
          @flow = flow
          @limit = limit
        end
      end
    end
  end
end
