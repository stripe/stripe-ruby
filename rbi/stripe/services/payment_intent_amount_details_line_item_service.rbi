# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentAmountDetailsLineItemService < StripeService
    # Lists all LineItems of a given PaymentIntent.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentIntentAmountDetailsLineItemListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(id, params = {}, opts = {}); end
  end
end