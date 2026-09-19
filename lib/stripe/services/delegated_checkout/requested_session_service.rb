# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionService < StripeService
      attr_reader :orders

      def initialize(requestor)
        super
        @orders = Stripe::DelegatedCheckout::RequestedSessionOrderService.new(@requestor)
      end

      # Confirms a requested session
      def confirm(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<id>s/confirm", { id: CGI.escape(id) }),
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
      def expire(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<id>s/expire", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a requested session
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/delegated_checkout/requested_sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a requested session
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
