# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class Account < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.account"

      custom_method :disconnect, http_verb: :post
      custom_method :list_owners, http_verb: :get, http_path: "owners"
      custom_method :refresh_account, http_verb: :post, http_path: "refresh"

      def disconnect(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/disconnect",
          params: params,
          opts: opts
        )
      end

      def list_owners(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: resource_url + "/owners",
          params: params,
          opts: opts
        )
      end

      def refresh_account(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/refresh",
          params: params,
          opts: opts
        )
      end
    end
  end
end
