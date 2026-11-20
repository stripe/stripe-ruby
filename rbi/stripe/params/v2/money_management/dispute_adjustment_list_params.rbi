# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DisputeAdjustmentListParams < ::Stripe::RequestParams
        # Filter results by the ID of the FinancialAccount associated with the DisputeAdjustment.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # Maximum number of results to return, between 1 and 100. Defaults to 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter results by the ID of the Dispute associated with the DisputeAdjustment.
        sig { returns(T.nilable(String)) }
        def related_dispute; end
        sig { params(_related_dispute: T.nilable(String)).returns(T.nilable(String)) }
        def related_dispute=(_related_dispute); end
        sig {
          params(financial_account: T.nilable(String), limit: T.nilable(Integer), related_dispute: T.nilable(String)).void
         }
        def initialize(financial_account: nil, limit: nil, related_dispute: nil); end
      end
    end
  end
end