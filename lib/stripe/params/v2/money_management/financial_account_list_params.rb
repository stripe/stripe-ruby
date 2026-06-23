# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountListParams < ::Stripe::RequestParams
        # The page limit.
        attr_accessor :limit
        # Filter for FinancialAccount `status`. By default, closed FinancialAccounts are not returned.
        attr_accessor :statuses

        def initialize(limit: nil, statuses: nil)
          @limit = limit
          @statuses = statuses
        end
      end
    end
  end
end
