# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Capital
      class FinancingOfferService < StripeService
        # Creates a test financing offer for a connected account.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/capital/financing_offers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Refills a test financing offer for a connected account.
        def refill(financing_offer, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/capital/financing_offers/%<financing_offer>s/refill", { financing_offer: CGI.escape(financing_offer) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
