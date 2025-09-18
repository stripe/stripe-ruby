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
        # State, county, province, or region.
        attr_reader :state
      end

      class AddressKana < Stripe::StripeObject
        # City/Ward.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Block/Building number.
        attr_reader :line1
        # Building details.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # Prefecture.
        attr_reader :state
        # Town/cho-me.
        attr_reader :town
      end

      class AddressKanji < Stripe::StripeObject
        # City/Ward.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Block/Building number.
        attr_reader :line1
        # Building details.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # Prefecture.
        attr_reader :state
        # Town/cho-me.
        attr_reader :town
      end

      class DeleteParams < Stripe::RequestParams; end

      class UpdateParams < Stripe::RequestParams
        class Address < Stripe::RequestParams
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

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end
        # The full address of the location. You can't change the location's `country`. If you need to modify the `country` field, create a new `Location` object and re-register any existing readers to that location.
        attr_accessor :address
        # The Kana variation of the full address of the location (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the full address of the location (Japan only).
        attr_accessor :address_kanji
        # The ID of a configuration that will be used to customize all readers in this location.
        attr_accessor :configuration_overrides
        # A name for the location.
        attr_accessor :display_name
        # The Kana variation of the name for the location (Japan only).
        attr_accessor :display_name_kana
        # The Kanji variation of the name for the location (Japan only).
        attr_accessor :display_name_kanji
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The phone number for the location.
        attr_accessor :phone

        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          configuration_overrides: nil,
          display_name: nil,
          display_name_kana: nil,
          display_name_kanji: nil,
          expand: nil,
          metadata: nil,
          phone: nil
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @configuration_overrides = configuration_overrides
          @display_name = display_name
          @display_name_kana = display_name_kana
          @display_name_kanji = display_name_kanji
          @expand = expand
          @metadata = metadata
          @phone = phone
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
          # Address line 1, such as the street, PO Box, or company name.
          attr_accessor :line1
          # Address line 2, such as the apartment, suite, unit, or building.
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

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end
        # The full address of the location.
        attr_accessor :address
        # The Kana variation of the full address of the location (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the full address of the location (Japan only).
        attr_accessor :address_kanji
        # The ID of a configuration that will be used to customize all readers in this location.
        attr_accessor :configuration_overrides
        # A name for the location. Maximum length is 1000 characters.
        attr_accessor :display_name
        # The Kana variation of the name for the location (Japan only). Maximum length is 1000 characters.
        attr_accessor :display_name_kana
        # The Kanji variation of the name for the location (Japan only). Maximum length is 1000 characters.
        attr_accessor :display_name_kanji
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The phone number for the location.
        attr_accessor :phone

        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          configuration_overrides: nil,
          display_name: nil,
          display_name_kana: nil,
          display_name_kanji: nil,
          expand: nil,
          metadata: nil,
          phone: nil
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @configuration_overrides = configuration_overrides
          @display_name = display_name
          @display_name_kana = display_name_kana
          @display_name_kanji = display_name_kanji
          @expand = expand
          @metadata = metadata
          @phone = phone
        end
      end
      # Attribute for field address
      attr_reader :address
      # Attribute for field address_kana
      attr_reader :address_kana
      # Attribute for field address_kanji
      attr_reader :address_kanji
      # The ID of a configuration that will be used to customize all readers in this location.
      attr_reader :configuration_overrides
      # The display name of the location.
      attr_reader :display_name
      # The Kana variation of the display name of the location.
      attr_reader :display_name_kana
      # The Kanji variation of the display name of the location.
      attr_reader :display_name_kanji
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The phone number of the location.
      attr_reader :phone
      # Always true for a deleted object
      attr_reader :deleted

      # Creates a new Location object.
      # For further details, including which address fields are required in each country, see the [Manage locations](https://docs.stripe.com/docs/terminal/fleet/locations) guide.
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
