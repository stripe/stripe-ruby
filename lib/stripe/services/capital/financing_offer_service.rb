# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingOfferService < StripeService
      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/capital/financing_offers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      def mark_delivered(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/capital/financing_offers/%<id>s/mark_delivered", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Get the details of the financing offer
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/capital/financing_offers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
