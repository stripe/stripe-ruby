# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class OrderService < StripeService
      # Retrieves a delegated checkout order.
      sig {
        params(order_id: String, params: T.any(::Stripe::DelegatedCheckout::OrderRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::Order)
       }
      def retrieve(order_id, params = {}, opts = {}); end
    end
  end
end