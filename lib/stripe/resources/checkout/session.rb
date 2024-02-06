# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    # A Checkout Session represents your customer's session as they pay for
    # one-time purchases or subscriptions through [Checkout](https://stripe.com/docs/payments/checkout)
    # or [Payment Links](https://stripe.com/docs/payments/payment-links). We recommend creating a
    # new Session each time your customer attempts to pay.
    #
    # Once payment is successful, the Checkout Session will contain a reference
    # to the [Customer](https://stripe.com/docs/api/customers), and either the successful
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents) or an active
    # [Subscription](https://stripe.com/docs/api/subscriptions).
    #
    # You can create a Checkout Session on your server and redirect to its URL
    # to begin Checkout.
    #
    # Related guide: [Checkout quickstart](https://stripe.com/docs/checkout/quickstart)
    class Session < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "checkout.session"

      # A Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Session and customers loading the Session see a message saying the Session is expired.
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/checkout/sessions/%<session>s/line_items", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # A Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Session and customers loading the Session see a message saying the Session is expired.
      def self.expire(session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      def self.list_line_items(session, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/checkout/sessions/%<session>s/line_items", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end

      # Creates a Session object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/checkout/sessions",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Checkout Sessions.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/checkout/sessions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
