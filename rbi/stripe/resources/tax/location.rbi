# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Tax locations represent venues for services, tickets, or other product types.
    class Location < APIResource
      class Address < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
        sig { returns(T.nilable(String)) }
        def state; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field address
      sig { returns(Address) }
      def address; end
      # A descriptive text providing additional context about the tax location. This can include information about the venue, types of events held, services available, or any relevant details for better identification (e.g., "A spacious auditorium suitable for large concerts and events.").
      sig { returns(T.nilable(String)) }
      def description; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The type of tax location to be defined. Currently the only option is `performance`.
      sig { returns(String) }
      def type; end
      # Create a tax location to use in calculating taxes for a service, ticket, or other type of product. The resulting object contains the id, address, name, description, and current operational status of the tax location.
      sig {
        params(params: T.any(::Stripe::Tax::LocationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Location)
       }
      def self.create(params = {}, opts = {}); end

      # Retrieve a list of all tax locations. Tax locations can represent the venues for services, tickets, or other product types.
      #
      # The response includes detailed information for each tax location, such as its address, name, description, and current operational status.
      #
      # You can paginate through the list by using the limit parameter to control the number of results returned in each request.
      sig {
        params(params: T.any(::Stripe::Tax::LocationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end