# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class OrderService < StripeService
    attr_reader :line_items
    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(id: String, params: T.any(::Stripe::OrderCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def cancel(id, params = {}, opts = {}); end

    # Creates a new open order object.
    sig {
      params(params: T.any(::Stripe::OrderCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    sig {
      params(params: T.any(::Stripe::OrderListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(id: String, params: T.any(::Stripe::OrderReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def reopen(id, params = {}, opts = {}); end

    # Retrieves the details of an existing order. Supply the unique order ID from either an order creation request or the order list, and Stripe will return the corresponding order information.
    sig {
      params(id: String, params: T.any(::Stripe::OrderRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    sig {
      params(id: String, params: T.any(::Stripe::OrderSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def submit(id, params = {}, opts = {}); end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::OrderUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def update(id, params = {}, opts = {}); end
  end
end