# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ProductCatalog
    class TrialOfferService < StripeService
      # Creates a trial offer.
      sig {
        params(params: T.any(::Stripe::ProductCatalog::TrialOfferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductCatalog::TrialOffer)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of trial offers.
      sig {
        params(params: T.any(::Stripe::ProductCatalog::TrialOfferListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the trial offer with the given ID.
      sig {
        params(id: String, params: T.any(::Stripe::ProductCatalog::TrialOfferRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductCatalog::TrialOffer)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates the specified trial offer by setting the values of the parameters passed. Any parameters not provided are left unchanged.
      sig {
        params(id: String, params: T.any(::Stripe::ProductCatalog::TrialOfferUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductCatalog::TrialOffer)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end