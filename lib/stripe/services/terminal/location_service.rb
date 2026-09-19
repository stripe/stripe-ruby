# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class LocationService < StripeService
      # Creates a new Location object.
      # For further details, including which address fields are required in each country, see the [Manage locations](https://docs.stripe.com/docs/terminal/fleet/locations) guide.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/terminal/locations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a Location object.
      def delete(id, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/terminal/locations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Location objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/terminal/locations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Location object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/terminal/locations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Location object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/locations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
