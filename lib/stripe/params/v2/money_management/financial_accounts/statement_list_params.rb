# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class StatementListParams < ::Stripe::RequestParams
          # The maximum number of results to return.
          attr_accessor :limit
          # The field by which to sort results. Defaults to "created".
          attr_accessor :order_by

          def initialize(limit: nil, order_by: nil)
            @limit = limit
            @order_by = order_by
          end
        end
      end
    end
  end
end
