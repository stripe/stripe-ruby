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
          resource_url + "/delete",
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end

      def self.find(params = {}, opts = {})
        resp, opts = execute_resource_request(
          :get,
          resource_url + "/find",
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
