# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountListParams < ::Stripe::RequestParams
        # Additional fields to include in the response.
        attr_accessor :include
        # The page limit.
        attr_accessor :limit
        # Return FinancialAccounts whose `status` matches any of the provided values.
        # If omitted, closed FinancialAccounts are not returned.
        attr_accessor :statuses

        def initialize(include: nil, limit: nil, statuses: nil)
          @include = include
          @limit = limit
          @statuses = statuses
        end
      end
    end
  end
end
