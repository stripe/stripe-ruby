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
  end
end
