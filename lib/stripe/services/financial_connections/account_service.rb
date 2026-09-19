# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AccountService < StripeService
      attr_reader :inferred_balances, :owners

      def initialize(requestor)
        super
        @inferred_balances = Stripe::FinancialConnections::AccountInferredBalanceService
                             .new(@requestor)
        @owners = Stripe::FinancialConnections::AccountOwnerService.new(@requestor)
      end

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def disconnect(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<id>s/disconnect", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Financial Connections Account objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/financial_connections/accounts",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def refresh(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<id>s/refresh", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Financial Connections Account.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account. When the account status is active, data is typically refreshed once a day.
      def subscribe(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<id>s/subscribe", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def unsubscribe(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<id>s/unsubscribe", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
