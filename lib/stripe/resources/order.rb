# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order"

    custom_method :cancel, http_verb: :post
    custom_method :list_line_items, http_verb: :get, http_path: "line_items"
    custom_method :reopen, http_verb: :post
    custom_method :submit, http_verb: :post

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/cancel",
        params: params,
        opts: opts
      )
    end

    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + "/line_items",
        params: params,
        opts: opts
      )
    end

    def reopen(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/reopen",
        params: params,
        opts: opts
      )
    end

    def submit(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/submit",
        params: params,
        opts: opts
      )
    end
  end
end
