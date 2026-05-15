# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationCapabilityService < StripeService
    # Updates a specified Payment Location Capability. Request or remove a payment location capability by updating its requested parameter.
    sig {
      params(capability: String, params: T.any(::Stripe::PaymentLocationCapabilityUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocationCapability)
     }
    def update(capability, params = {}, opts = {}); end
  end
end