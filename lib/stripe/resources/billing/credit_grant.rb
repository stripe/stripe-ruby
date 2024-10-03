# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit grant is a resource that records a grant of some credit to a customer.
    class CreditGrant < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing.credit_grant"
      def self.object_name
        "billing.credit_grant"
      end

      # Creates a credit grant
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/credit_grants",
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant
      def self.expire(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of credit grants
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/credit_grants",
          params: filters,
          opts: opts
        )
      end

      # Updates a credit grant
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant
      def void_grant(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant
      def self.void_grant(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
