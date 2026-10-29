# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        # Returns a list of FinancialAccounts in your account that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_accounts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing FinancialAccount.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/financial_accounts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates an existing FinancialAccount using the provided parameters.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/financial_accounts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
