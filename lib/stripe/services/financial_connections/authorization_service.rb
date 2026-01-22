# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AuthorizationService < StripeService
      # Retrieves the details of an Financial Connections Authorization.
      def retrieve(authorization, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/authorizations/%<authorization>s", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
