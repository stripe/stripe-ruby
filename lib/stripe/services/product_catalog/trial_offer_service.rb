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

      # Returns a list of trial offers.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/product_catalog/trial_offers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the trial offer with the given ID.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/product_catalog/trial_offers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
