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

    # A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/promotion_codes", params: params, opts: opts)
    end

    # Returns a list of your promotion codes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/promotion_codes", params: filters, opts: opts)
    end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/promotion_codes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
