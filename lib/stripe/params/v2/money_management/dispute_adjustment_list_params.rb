# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DisputeAdjustmentListParams < ::Stripe::RequestParams
        # Filter results by the ID of the FinancialAccount associated with the DisputeAdjustment.
        attr_accessor :financial_account
        # Maximum number of results to return, between 1 and 100. Defaults to 10.
        attr_accessor :limit
        # Filter results by the ID of the Dispute associated with the DisputeAdjustment.
        attr_accessor :related_dispute

        def initialize(financial_account: nil, limit: nil, related_dispute: nil)
          @financial_account = financial_account
          @limit = limit
          @related_dispute = related_dispute
        end
      end
    end
  end
end
