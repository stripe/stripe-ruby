# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ShippingRateService < StripeService
    # Creates a new shipping rate object.
    sig {
      params(params: T.any(::Stripe::ShippingRateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ShippingRate)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your shipping rates.
    sig {
      params(params: T.any(::Stripe::ShippingRateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Returns the shipping rate object with the given ID.
    sig {
      params(id: String, params: T.any(::Stripe::ShippingRateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ShippingRate)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates an existing shipping rate object.
    sig {
      params(id: String, params: T.any(::Stripe::ShippingRateUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ShippingRate)
     }
    def update(id, params = {}, opts = {}); end
  end
end