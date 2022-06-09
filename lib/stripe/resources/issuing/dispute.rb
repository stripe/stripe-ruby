# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class Dispute < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.dispute"

      def submit(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.submit(dispute, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(dispute) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
