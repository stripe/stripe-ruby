# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_intent"

    custom_method :cancel, http_verb: :post
    custom_method :capture, http_verb: :post
    custom_method :confirm, http_verb: :post

    def cancel(_id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/cancel",
        params: params,
        opts: opts
      )
    end

    def capture(_id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/capture",
        params: params,
        opts: opts
      )
    end

    def confirm(_id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/confirm",
        params: params,
        opts: opts
      )
    end
  end
end
