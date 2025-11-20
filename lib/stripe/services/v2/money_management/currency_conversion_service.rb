# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionService < StripeService
        # Create a CurrencyConversion.
        #
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/currency_conversions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all CurrencyConversion on an account with the option to filter by FinancialAccount.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/currency_conversions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve details of a CurrencyConversion by id.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/currency_conversions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
