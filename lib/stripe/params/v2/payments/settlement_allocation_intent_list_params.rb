# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentListParams < ::Stripe::RequestParams
        # Filter for objects created after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        attr_accessor :created_gt
        # Filter for objects created on or after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        attr_accessor :created_gte
        # Filter for objects created before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        attr_accessor :created_lt
        # Filter for objects created on or before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        attr_accessor :created_lte
        # Filter the SettlementAllocationIntents by FinancialAccount.
        attr_accessor :financial_account
        # The page size.
        attr_accessor :limit
        # Filter the SettlementAllocationIntents by status.
        attr_accessor :status

        def initialize(
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          financial_account: nil,
          limit: nil,
          status: nil
        )
          @created_gt = created_gt
          @created_gte = created_gte
          @created_lt = created_lt
          @created_lte = created_lte
          @financial_account = financial_account
          @limit = limit
          @status = status
        end
      end
    end
  end
end
