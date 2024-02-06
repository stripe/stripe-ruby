# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.account"

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def disconnect(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Lists all owners for a given Account
      def list_owners(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def refresh_account(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      def subscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def unsubscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def self.disconnect(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Lists all owners for a given Account
      def self.list_owners(account, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def self.refresh_account(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      def self.subscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def self.unsubscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Financial Connections Account objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/accounts",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
