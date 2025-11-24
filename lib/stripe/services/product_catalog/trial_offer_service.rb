# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ProductCatalog
    class TrialOfferService < StripeService
      # Creates a trial offer.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/product_catalog/trial_offers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
