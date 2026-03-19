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
    end
  end
end