# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # Tax locations represent venues for services, tickets, or other product types.
    class Location < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "tax.location"
      def self.object_name
        "tax.location"
      end

      class Address < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1, such as the street, PO Box, or company name.
        attr_reader :line1
        # Address line 2, such as the apartment, suite, unit, or building.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
        attr_reader :state

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field address
      attr_reader :address
      # A descriptive text providing additional context about the tax location. This can include information about the venue, types of events held, services available, or any relevant details for better identification (e.g., "A spacious auditorium suitable for large concerts and events.").
      attr_reader :description
      # Unique identifier for the object.
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The type of tax location to be defined. Currently the only option is `performance`.
      attr_reader :type

      # Create a tax location to use in calculating taxes for a service, ticket, or other type of product. The resulting object contains the id, address, name, description, and current operational status of the tax location.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/tax/locations", params: params, opts: opts)
      end

      # Retrieve a list of all tax locations. Tax locations can represent the venues for services, tickets, or other product types.
      #
      # The response includes detailed information for each tax location, such as its address, name, description, and current operational status.
      #
      # You can paginate through the list by using the limit parameter to control the number of results returned in each request.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/tax/locations", params: params, opts: opts)
      end

      def self.inner_class_types
        @inner_class_types = { address: Address }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
