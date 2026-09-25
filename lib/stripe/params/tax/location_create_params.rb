# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class LocationCreateParams < ::Stripe::RequestParams
      class Address < ::Stripe::RequestParams
        # City, district, suburb, town, or village.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Address line 1, such as the street, PO Box, or company name.
        attr_accessor :line1
        # Address line 2, such as the apartment, suite, unit, or building.
        attr_accessor :line2
        # ZIP or postal code.
        attr_accessor :postal_code
        # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
        attr_accessor :state

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
        end
      end
      # The physical address of the tax location.
      attr_accessor :address
      # Details to identify the tax location by its venue, types of events held, or available services, such as "A spacious auditorium suitable for large concerts and events.".
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The type of tax location. The only supported value is "performance".
      attr_accessor :type

      def initialize(address: nil, description: nil, expand: nil, type: nil)
        @address = address
        @description = description
        @expand = expand
        @type = type
      end
    end
  end
end
