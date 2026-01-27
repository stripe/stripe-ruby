# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class OrderService < StripeService
    # Creates a new open order object.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/orders", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/orders", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of an existing order. Supply the unique order ID from either an order creation request or the order list, and Stripe will return the corresponding order information.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/orders/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    def submit(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/orders/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
