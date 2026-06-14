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
        # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
        attr_accessor :status
        # Filter for FinancialAccount `type`. By default, FinancialAccounts of any `type` are returned.
        attr_accessor :types

        def initialize(include: nil, limit: nil, status: nil, types: nil)
          @include = include
          @limit = limit
          @status = status
          @types = types
        end
      end
    end
  end
end
