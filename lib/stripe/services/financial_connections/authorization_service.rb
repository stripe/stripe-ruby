# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AuthorizationService < StripeService
      # Retrieves the details of a Financial Connections Authorization.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/authorizations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
