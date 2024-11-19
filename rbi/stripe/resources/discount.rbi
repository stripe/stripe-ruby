# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
  # It contains information about when the discount began, when it will end, and what it is applied to.
  #
  # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
  class Discount < StripeObject
    sig { returns(T.nilable(String)) }
    # The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    attr_reader :checkout_session
    sig { returns(Stripe::Coupon) }
    # A coupon contains information about a percent-off or amount-off discount you
    # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    attr_reader :coupon
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The ID of the customer associated with this discount.
    attr_reader :customer
    sig { returns(T.nilable(Integer)) }
    # If the coupon has a duration of `repeating`, the date that this discount will end. If the coupon has a duration of `once` or `forever`, this attribute will be null.
    attr_reader :end
    sig { returns(String) }
    # The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
    attr_reader :invoice
    sig { returns(T.nilable(String)) }
    # The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    attr_reader :invoice_item
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
    # The promotion code applied to create this discount.
    attr_reader :promotion_code
    sig { returns(Integer) }
    # Date that the coupon was applied.
    attr_reader :start
    sig { returns(T.nilable(String)) }
    # The subscription that this coupon is applied to, if it is applied to a particular subscription.
    attr_reader :subscription
    sig { returns(T.nilable(String)) }
    # The subscription item that this coupon is applied to, if it is applied to a particular subscription item.
    attr_reader :subscription_item
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end