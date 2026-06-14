# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentListParams < ::Stripe::RequestParams
        # Filter for objects created after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        sig { returns(T.nilable(String)) }
        def created_gt; end
        sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
        def created_gt=(_created_gt); end
        # Filter for objects created on or after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        sig { returns(T.nilable(String)) }
        def created_gte; end
        sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
        def created_gte=(_created_gte); end
        # Filter for objects created before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        sig { returns(T.nilable(String)) }
        def created_lt; end
        sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
        def created_lt=(_created_lt); end
        # Filter for objects created on or before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2025-10-17T13:22::00Z.
        sig { returns(T.nilable(String)) }
        def created_lte; end
        sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
        def created_lte=(_created_lte); end
        # Filter the SettlementAllocationIntents by FinancialAccount.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # The page size.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter the SettlementAllocationIntents by status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), financial_account: T.nilable(String), limit: T.nilable(Integer), status: T.nilable(String)).void
         }
        def initialize(
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          financial_account: nil,
          limit: nil,
          status: nil
        ); end
      end
    end
  end
end