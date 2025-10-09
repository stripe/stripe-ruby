# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountListParams < ::Stripe::RequestParams
        # The page limit.
        attr_accessor :limit
        # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
        attr_accessor :status

        def initialize(limit: nil, status: nil)
          @limit = limit
          @status = status
        end
      end
    end
  end
end
