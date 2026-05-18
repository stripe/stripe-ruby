# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationCapabilityService < StripeService
    # Returns a list of PaymentLocationCapability objects associated with the location.
    sig {
      params(params: T.any(::Stripe::PaymentLocationCapabilityListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves information about the specified Payment Location Capability.
    sig {
      params(capability: String, params: T.any(::Stripe::PaymentLocationCapabilityRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocationCapability)
     }
    def retrieve(capability, params = {}, opts = {}); end

    # Updates a specified Payment Location Capability. Request or remove a payment location capability by updating its requested parameter.
    sig {
      params(capability: String, params: T.any(::Stripe::PaymentLocationCapabilityUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocationCapability)
     }
    def update(capability, params = {}, opts = {}); end
  end
end