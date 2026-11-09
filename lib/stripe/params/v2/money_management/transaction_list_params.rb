# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionListParams < ::Stripe::RequestParams
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
        # Filter for Transactions created within a specified time range.
        attr_accessor :created
        # Filter for Transactions belonging to a specific FinancialAccount. This filter only supports filtering by the FinancialAccount's ID.
        attr_accessor :financial_account
        # Filter for Transactions created by a specific flow object. This filter only supports filtering by
        # the flow object's ID, such as `ibt_123` for an InboundTransfer. A value that doesn't match a flow ID
        # returns an empty list.
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
