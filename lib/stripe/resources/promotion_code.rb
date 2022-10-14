# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to
  # create multiple codes for a single coupon.
  class PromotionCode < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "promotion_code"
  end
end
