# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module BillingPortal
    class ConfigurationService < StripeService
      # Creates a configuration that describes the functionality and behavior of a PortalSession
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/billing_portal/configurations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of configurations that describe the functionality of the customer portal.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/billing_portal/configurations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a configuration that describes the functionality of the customer portal.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/billing_portal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a configuration that describes the functionality of the customer portal.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing_portal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
