# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve
  # individual top-ups, as well as list all top-ups. Top-ups are identified by a
  # unique, random ID.
  #
  # Related guide: [Topping Up your Platform Account](https://stripe.com/docs/connect/top-ups).
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
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts
      )
    end
  end
end
