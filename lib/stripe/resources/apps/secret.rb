# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class Secret < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "apps.secret"

      def self.delete_where(params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          "/v1/apps/secrets/delete",
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end

      def self.find(params = {}, opts = {})
        resp, opts = execute_resource_request(
          :get,
          "/v1/apps/secrets/find",
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
