# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class StatementListParams < ::Stripe::RequestParams
          # The maximum number of results to return.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # The field by which to sort results. Defaults to "created".
          sig { returns(T.nilable(String)) }
          def order_by; end
          sig { params(_order_by: T.nilable(String)).returns(T.nilable(String)) }
          def order_by=(_order_by); end
          sig { params(limit: T.nilable(Integer), order_by: T.nilable(String)).void }
          def initialize(limit: nil, order_by: nil); end
        end
      end
    end
  end
end