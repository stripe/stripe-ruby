# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Payout < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payout"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def reverse(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(payout, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(payout) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.reverse(payout, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(payout) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
