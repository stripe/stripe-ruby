# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingOfferService < StripeService
      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingOfferListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      sig {
        params(financing_offer: String, params: T.any(::Stripe::Capital::FinancingOfferMarkDeliveredParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
       }
      def mark_delivered(financing_offer, params = {}, opts = {}); end

      # Get the details of the financing offer
      sig {
        params(financing_offer: String, params: T.any(::Stripe::Capital::FinancingOfferRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
       }
      def retrieve(financing_offer, params = {}, opts = {}); end
    end
  end
end