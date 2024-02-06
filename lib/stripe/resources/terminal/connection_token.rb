# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
    #
    # Related guide: [Fleet management](https://stripe.com/docs/terminal/fleet/locations)
    class ConnectionToken < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "terminal.connection_token"

      # To connect to a reader the Stripe Terminal SDK needs to retrieve a short-lived connection token from Stripe, proxied through your server. On your backend, add an endpoint that creates and returns a connection token.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/terminal/connection_tokens",
          params: params,
          opts: opts
        )
      end
    end
  end
end
