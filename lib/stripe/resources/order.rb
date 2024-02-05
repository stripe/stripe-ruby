# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order"

    # Cancels the order as well as the payment intent if one is attached.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def reopen(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def submit(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the order as well as the payment intent if one is attached.
    def self.cancel(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(id, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def self.reopen(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def self.submit(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Creates a new open order object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/orders", params: params, opts: opts)
    end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/orders", params: filters, opts: opts)
    end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
