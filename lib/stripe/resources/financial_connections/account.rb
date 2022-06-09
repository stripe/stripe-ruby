# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class Account < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.account"

      def disconnect(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def list_owners(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def refresh_account(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.disconnect(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      def self.list_owners(account, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      def self.refresh_account(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
