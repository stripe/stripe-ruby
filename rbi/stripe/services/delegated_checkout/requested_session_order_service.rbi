# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionOrderService < StripeService
      # Lists orders for a delegated checkout requested session.
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionOrderListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(requested_session, params = {}, opts = {}); end
    end
  end
end