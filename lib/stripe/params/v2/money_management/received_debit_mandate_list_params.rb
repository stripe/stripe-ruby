# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitMandateListParams < ::Stripe::RequestParams
        # The ID of the FinancialAccount to filter by.
        attr_accessor :financial_account
        # The page limit.
        attr_accessor :limit
        # Filter by mandate status.
        attr_accessor :statuses
        # The type of ReceivedDebitMandate to filter by.
        attr_accessor :type

        def initialize(financial_account: nil, limit: nil, statuses: nil, type: nil)
          @financial_account = financial_account
          @limit = limit
          @statuses = statuses
          @type = type
        end
      end
    end
  end
end
