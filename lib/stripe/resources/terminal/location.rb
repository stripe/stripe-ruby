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

      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      # Attribute for field address
      attr_reader :address
      # The ID of a configuration that will be used to customize all readers in this location.
      attr_reader :configuration_overrides
      # The display name of the location.
      attr_reader :display_name
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Always true for a deleted object
      attr_reader :deleted

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
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/locations/%<id>s", { id: CGI.escape(id) }),
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/locations",
          params: filters,
          opts: opts
        )
      end

      # Updates a Location object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/locations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
