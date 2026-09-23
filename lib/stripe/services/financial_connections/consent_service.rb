# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class ConsentService < StripeService
      # Creates a Financial Connections Consent object for an account holder.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/financial_connections/consents",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Financial Connections Consent.
      def retrieve(consent, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/consents/%<consent>s", { consent: CGI.escape(consent) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
