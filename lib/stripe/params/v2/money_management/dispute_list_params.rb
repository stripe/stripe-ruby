# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DisputeListParams < ::Stripe::RequestParams
        # Filter results by the ID of the FinancialAccount associated with the dispute.
        attr_accessor :financial_account
        # Maximum number of results to return, between 1 and 100. Defaults to 10.
        attr_accessor :limit
        # Filter results to Disputes with any of the provided statuses.
        attr_accessor :statuses
        # Filter results by the ID of the disputed money movement.
        attr_accessor :target

        def initialize(financial_account: nil, limit: nil, statuses: nil, target: nil)
          @financial_account = financial_account
          @limit = limit
          @statuses = statuses
          @target = target
        end
      end
    end
  end
end
