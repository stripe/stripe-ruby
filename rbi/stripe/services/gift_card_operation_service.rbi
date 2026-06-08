# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class GiftCardOperationService < StripeService
    # Retrieves a third-party gift card operation object.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardOperationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end