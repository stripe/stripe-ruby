# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        # Create a new FinancialAddress for a FinancialAccount.
        #
        # ** raises FinancialAccountNotOpenError
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/financial_addresses",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all FinancialAddresses for a FinancialAccount.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_addresses",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in its unexpanded state, revealing only the last 4 digits of the account number.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/financial_addresses/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
