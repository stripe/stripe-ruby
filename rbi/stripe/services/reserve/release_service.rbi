# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    class ReleaseService < StripeService
      # Returns a list of ReserveReleases previously created. The ReserveReleases are returned in sorted order, with the most recent ReserveReleases appearing first.
      sig {
        params(params: T.any(::Stripe::Reserve::ReleaseListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieve a ReserveRelease.
      sig {
        params(id: String, params: T.any(::Stripe::Reserve::ReleaseRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Reserve::Release)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end