# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class Authorization < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.authorization"

      def approve(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def decline(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.approve(authorization, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(authorization) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end

      def self.decline(authorization, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(authorization) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
