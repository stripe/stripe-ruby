# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class Secret < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "apps.secret"

      def self.delete_where(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/apps/secrets/delete",
          params: params,
          opts: opts
        )
      end

      def self.find(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/apps/secrets/find",
          params: params,
          opts: opts
        )
      end
    end
  end
end
