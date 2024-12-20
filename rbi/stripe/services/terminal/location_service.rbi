# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class LocationService < StripeService
      class DeleteParams < Stripe::RequestParams

      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The full address of the location. You can't change the location's `country`. If you need to modify the `country` field, create a new `Location` object and re-register any existing readers to that location.
        sig { returns(::Stripe::Terminal::LocationService::UpdateParams::Address) }
        attr_accessor :address
        # The ID of a configuration that will be used to customize all readers in this location.
        sig { returns(T.nilable(String)) }
        attr_accessor :configuration_overrides
        # A name for the location.
        sig { returns(String) }
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(address: ::Stripe::Terminal::LocationService::UpdateParams::Address, configuration_overrides: T.nilable(String), display_name: String, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(
          address: nil,
          configuration_overrides: nil,
          display_name: nil,
          expand: nil,
          metadata: nil
        ); end
      end
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        sig {
          params(ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The full address of the location.
        sig { returns(::Stripe::Terminal::LocationService::CreateParams::Address) }
        attr_accessor :address
        # The ID of a configuration that will be used to customize all readers in this location.
        sig { returns(String) }
        attr_accessor :configuration_overrides
        # A name for the location. Maximum length is 1000 characters.
        sig { returns(String) }
        attr_accessor :display_name
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(address: ::Stripe::Terminal::LocationService::CreateParams::Address, configuration_overrides: String, display_name: String, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(
          address: nil,
          configuration_overrides: nil,
          display_name: nil,
          expand: nil,
          metadata: nil
        ); end
      end
      # Creates a new Location object.
      # For further details, including which address fields are required in each country, see the [Manage locations](https://stripe.com/docs/terminal/fleet/locations) guide.
      sig {
        params(params: T.any(::Stripe::Terminal::LocationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Location)
       }
      def create(params = {}, opts = {}); end

      # Deletes a Location object.
      sig {
        params(location: String, params: T.any(::Stripe::Terminal::LocationService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Location)
       }
      def delete(location, params = {}, opts = {}); end

      # Returns a list of Location objects.
      sig {
        params(params: T.any(::Stripe::Terminal::LocationService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a Location object.
      sig {
        params(location: String, params: T.any(::Stripe::Terminal::LocationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Location)
       }
      def retrieve(location, params = {}, opts = {}); end

      # Updates a Location object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(location: String, params: T.any(::Stripe::Terminal::LocationService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Location)
       }
      def update(location, params = {}, opts = {}); end
    end
  end
end