# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource

      OBJECT_NAME = "financial_connections.account"

      nested_resource_class_methods :inferred_balance, operations: %i[list]

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

      def subscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def unsubscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(self["id"]) }),
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

      def self.subscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      def self.unsubscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
