# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionService < StripeService
      # Confirms a requested session
      def confirm(requested_session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/confirm", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a requested session
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/delegated_checkout/requested_sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Expires a requested session
      def expire(requested_session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/expire", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a requested session
      def retrieve(requested_session, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a requested session
      def update(requested_session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
