# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionOrderService < StripeService
      # Lists orders for a delegated checkout requested session.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/delegated_checkout/requested_sessions/%<id>s/orders", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
