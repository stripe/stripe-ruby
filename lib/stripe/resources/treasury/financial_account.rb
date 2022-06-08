# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class FinancialAccount < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "treasury.financial_account"

      def retrieve_features(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def update_features(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.retrieve_features(financial_account, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :get,
          format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(financial_account) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end

      def self.update_features(financial_account, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(financial_account) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
