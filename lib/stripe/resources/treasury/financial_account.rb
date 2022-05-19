# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class FinancialAccount < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "treasury.financial_account"

      custom_method :retrieve_features, http_verb: :get, http_path: "features"
      custom_method :update_features, http_verb: :post, http_path: "features"

      def retrieve_features(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: resource_url + "/features",
          params: params,
          opts: opts
        )
      end

      def update_features(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/features",
          params: params,
          opts: opts
        )
      end
    end
  end
end
