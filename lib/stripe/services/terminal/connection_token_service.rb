# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ConnectionTokenService < StripeService
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The id of the location that this connection token is scoped to. If specified the connection token will only be usable with readers assigned to that location, otherwise the connection token will be usable with all readers. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://docs.stripe.com/terminal/fleet/locations-and-zones?dashboard-or-api=api#connection-tokens).
        attr_accessor :location

        def initialize(expand: nil, location: nil)
          @expand = expand
          @location = location
        end
      end

      # To connect to a reader the Stripe Terminal SDK needs to retrieve a short-lived connection token from Stripe, proxied through your server. On your backend, add an endpoint that creates and returns a connection token.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/terminal/connection_tokens",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
