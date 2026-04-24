# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Network
      class BusinessProfileService < StripeService
        # Retrieve the Stripe profile associated with the requesting merchant and livemode.
        sig {
          params(params: T.any(::Stripe::V2::Network::BusinessProfileMeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Network::BusinessProfile)
         }
        def me(params = {}, opts = {}); end

        # Retrieve a Stripe profile by its Network ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Network::BusinessProfileRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Network::BusinessProfile)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end