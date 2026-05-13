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

    # Delete a Payment Location.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLocationDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def delete(id, params = {}, opts = {}); end

    # List all Payment Locations.
    sig {
      params(params: T.any(::Stripe::PaymentLocationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve a Payment Location.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLocationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Update a Payment Location.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLocationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def update(id, params = {}, opts = {}); end
  end
end