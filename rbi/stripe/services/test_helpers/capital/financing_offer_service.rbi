# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Capital
      class FinancingOfferService < StripeService
        # Creates a test financing offer for a connected account.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Capital::FinancingOfferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingOffer)
         }
        def create(params = {}, opts = {}); end

        # Refills a test financing offer for a connected account.
        sig {
          params(financing_offer: String, params: T.any(::Stripe::TestHelpers::Capital::FinancingOfferRefillParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingOffer)
         }
        def refill(financing_offer, params = {}, opts = {}); end
      end
    end
  end
end