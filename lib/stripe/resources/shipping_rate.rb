# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Shipping rates describe the price of shipping presented to your customers and
  # applied to a purchase. For more information, see [Charge for shipping](https://stripe.com/docs/payments/during-payment/charge-shipping).
  class ShippingRate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "shipping_rate"

    # Creates a new shipping rate object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/shipping_rates", params: params, opts: opts)
    end

    # Returns a list of your shipping rates.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/shipping_rates", params: filters, opts: opts)
    end

    # Updates an existing shipping rate object.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/shipping_rates/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
