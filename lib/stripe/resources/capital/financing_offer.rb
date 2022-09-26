# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "capital.financing_offer"

      def mark_delivered(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/capital/financing_offers/%<financing_offer>s/mark_delivered", { financing_offer: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.mark_delivered(financing_offer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/capital/financing_offers/%<financing_offer>s/mark_delivered", { financing_offer: CGI.escape(financing_offer) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
