# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module BillingPortal
    # A portal configuration describes the functionality and behavior of a portal session.
    class Configuration < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing_portal.configuration"

      # Creates a configuration that describes the functionality and behavior of a PortalSession
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing_portal/configurations",
          params: params,
          opts: opts
        )
      end

      # Returns a list of configurations that describe the functionality of the customer portal.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing_portal/configurations",
          params: filters,
          opts: opts
        )
      end

      # Updates a configuration that describes the functionality of the customer portal.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing_portal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
