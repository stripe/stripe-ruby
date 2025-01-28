# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Location represents a grouping of readers.
    #
    # Related guide: [Fleet management](https://stripe.com/docs/terminal/fleet/locations)
    class Location < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.location"
      def self.object_name
        "terminal.location"
      end

      # Creates a new Location object.
      # For further details, including which address fields are required in each country, see the [Manage locations](https://stripe.com/docs/terminal/fleet/locations) guide.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/terminal/locations",
          params: params,
          opts: opts
        )
      end

      # Deletes a Location object.
      def self.delete(location, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(location) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a Location object.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Location objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/locations",
          params: params,
          opts: opts
        )
      end

      # Updates a Location object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(location, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(location) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
