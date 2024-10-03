# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class SessionService < StripeService
      attr_reader :line_items

      def initialize(requestor)
        super(requestor)
        @line_items = Stripe::Checkout::SessionLineItemService.new(@requestor)
      end

      # Creates a Session object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/checkout/sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # A Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Session and customers loading the Session see a message saying the Session is expired.
      def expire(session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Checkout Sessions.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/checkout/sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Session object.
      def retrieve(session, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/checkout/sessions/%<session>s", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Session object.
      def update(session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
