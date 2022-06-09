# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Topup < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "topup"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(topup, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(topup) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
