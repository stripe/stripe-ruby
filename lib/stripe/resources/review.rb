# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Review < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "review"

    def approve(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/reviews/%<review>s/approve", { review: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.approve(review, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/reviews/%<review>s/approve", { review: CGI.escape(review) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
