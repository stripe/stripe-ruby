# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class StatementService < StripeService
          # Returns a list of statements for a Financial Account.
          def list(financial_account_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/money_management/financial_accounts/%<financial_account_id>s/statements", { financial_account_id: CGI.escape(financial_account_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves the details of a Financial Account Statement.
          def retrieve(financial_account_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/money_management/financial_accounts/%<financial_account_id>s/statements/%<id>s", { financial_account_id: CGI.escape(financial_account_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
