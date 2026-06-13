# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class InstitutionService < StripeService
      # Returns a list of Financial Connections Institution objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/financial_connections/institutions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Financial Connections Institution.
      def retrieve(institution, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/institutions/%<institution>s", { institution: CGI.escape(institution) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
