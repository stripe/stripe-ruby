# frozen_string_literal: true

module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order".freeze

    custom_method :pay, http_verb: :post
    custom_method :return_order, http_verb: :post, http_path: "returns"

    def pay(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/pay",
        params: params,
        opts: opts
      )
    end

    def return_order(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/returns",
        params: params,
        opts: opts
      )
    end

    private def pay_url
      resource_url + "/pay"
    end

    private def returns_url
      resource_url + "/returns"
    end
  end
end
