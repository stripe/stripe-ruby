# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationService < StripeService
    # Create a Payment Location.
    sig {
      params(params: T.any(::Stripe::PaymentLocationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def create(params = {}, opts = {}); end
  end
end