# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class StatementService < StripeService
          # Returns a list of statements for a Financial Account.
          sig {
            params(financial_account_id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccounts::StatementListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(financial_account_id, params = {}, opts = {}); end

          # Retrieves the details of a Financial Account Statement.
          sig {
            params(financial_account_id: String, id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccounts::StatementRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAccountStatement)
           }
          def retrieve(financial_account_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end