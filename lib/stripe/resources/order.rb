# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def reopen(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def submit(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def self.list_line_items(id, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def self.reopen(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def self.submit(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
