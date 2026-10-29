# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        # Closes a FinancialAccount. You must provide forwarding settings if it has a non-zero balance.
        #
        # ** raises NonZeroBalanceError
        def close(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/financial_accounts/%<id>s/close", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new FinancialAccount.
        #
        # ** raises AlreadyExistsError
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/financial_accounts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

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
