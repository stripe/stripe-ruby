# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class SessionService < StripeService
      attr_reader :line_items

      def initialize(requestor)
        super
        @line_items = Stripe::Checkout::SessionLineItemService.new(@requestor)
      end

      # Approves a customer's attempt to pay for a Checkout Session with approval_method set to manual.
      def approve(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/checkout/sessions/%<id>s/approve", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a Checkout Session object.
      def create(params = {}, opts = {})
        unless params.is_a?(Stripe::RequestParams)
          params = ::Stripe::Checkout::SessionCreateParams.coerce_params(params)
        end

        request(
          method: :post,
          path: "/v1/checkout/sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # A Checkout Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Checkout Session and customers loading the Checkout Session see a message saying the Checkout Session is expired.
      def expire(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/checkout/sessions/%<id>s/expire", { id: CGI.escape(id) }),
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

      # Retrieves a Checkout Session object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/checkout/sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Checkout Session object.
      #
      # Related guide: [Dynamically update a Checkout Session](https://docs.stripe.com/payments/advanced/dynamic-updates)
      def update(id, params = {}, opts = {})
        unless params.is_a?(Stripe::RequestParams)
          params = ::Stripe::Checkout::SessionUpdateParams.coerce_params(params)
        end

        request(
          method: :post,
          path: format("/v1/checkout/sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
