# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class LocationService < StripeService
      class DeleteParams < Stripe::RequestParams
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # The full address of the location. You can't change the location's `country`. If you need to modify the `country` field, create a new `Location` object and re-register any existing readers to that location.
        attr_accessor :address
        # The ID of a configuration that will be used to customize all readers in this location.
        attr_accessor :configuration_overrides
        # A name for the location.
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(
          address: nil,
          configuration_overrides: nil,
          display_name: nil,
          expand: nil,
          metadata: nil
        )
          @address = address
          @configuration_overrides = configuration_overrides
          @display_name = display_name
          @expand = expand
          @metadata = metadata
        end
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # The full address of the location.
        attr_accessor :address
        # The ID of a configuration that will be used to customize all readers in this location.
        attr_accessor :configuration_overrides
        # A name for the location. Maximum length is 1000 characters.
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(
          address: nil,
          configuration_overrides: nil,
          display_name: nil,
          expand: nil,
          metadata: nil
        )
          @address = address
          @configuration_overrides = configuration_overrides
          @display_name = display_name
          @expand = expand
          @metadata = metadata
        end
      end

      # Creates a new Location object.
      # For further details, including which address fields are required in each country, see the [Manage locations](https://stripe.com/docs/terminal/fleet/locations) guide.
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
      def delete(location, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(location) }),
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
      def retrieve(location, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(location) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Location object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def update(location, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/locations/%<location>s", { location: CGI.escape(location) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
