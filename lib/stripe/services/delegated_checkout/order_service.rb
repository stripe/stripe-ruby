# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class OrderService < StripeService
      # Retrieves a delegated checkout order.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/delegated_checkout/orders/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
