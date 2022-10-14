# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Shipping rates describe the price of shipping presented to your customers and can be
  # applied to [Checkout Sessions](https://stripe.com/docs/payments/checkout/shipping)
  # and [Orders](https://stripe.com/docs/orders/shipping) to collect shipping costs.
  class ShippingRate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "shipping_rate"
  end
end
