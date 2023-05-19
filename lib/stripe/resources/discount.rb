# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
  # It contains information about when the discount began, when it will end, and what it is applied to.
  #
  # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
  class Discount < StripeObject
    OBJECT_NAME = "discount"
  end
end
