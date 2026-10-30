# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionService < StripeService
        # Create a new Currency Conversion in a Financial Account or the payments balance.
        #
        # ** raises FxQuoteExpiredError
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

        # Lists all Currency Conversions that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/currency_conversions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of a Currency Conversion by its ID.
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
