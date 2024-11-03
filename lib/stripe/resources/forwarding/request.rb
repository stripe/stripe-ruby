# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Forwarding
    # Instructs Stripe to make a request on your behalf using the destination URL. The destination URL
    # is activated by Stripe at the time of onboarding. Stripe verifies requests with your credentials
    # provided during onboarding, and injects card details from the payment_method into the request.
    #
    # Stripe redacts all sensitive fields and headers, including authentication credentials and card numbers,
    # before storing the request and response data in the forwarding Request object, which are subject to a
    # 30-day retention period.
    #
    # You can provide a Stripe idempotency key to make sure that requests with the same key result in only one
    # outbound request. The Stripe idempotency key provided should be unique and different from any idempotency
    # keys provided on the underlying third-party request.
    #
    # Forwarding Requests are synchronous requests that return a response or time out according to
    # Stripe's limits.
    #
    # Related guide: [Forward card details to third-party API endpoints](https://docs.stripe.com/payments/forwarding).
    class Request < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "forwarding.request"
      def self.object_name
        "forwarding.request"
      end

      # Creates a ForwardingRequest object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts
        )
      end

      # Lists all ForwardingRequest objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/forwarding/requests",
          params: params,
          opts: opts
        )
      end
    end
  end
end
