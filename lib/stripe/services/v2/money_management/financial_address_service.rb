# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        # Create a new FinancialAddress for a FinancialAccount (V2 shape).
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

        # List all FinancialAddresses for a FinancialAccount (V2 shape).
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_addresses",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a FinancialAddress (V2 shape).
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
