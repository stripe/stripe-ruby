# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class Order < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "order"

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
  end
end
