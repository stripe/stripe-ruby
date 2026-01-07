# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class LocationCreateParams < ::Stripe::RequestParams
      class Address < ::Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(String) }
        def country; end
        sig { params(_country: String).returns(String) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        sig {
          params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
      # The physical address of the tax location.
      sig { returns(Tax::LocationCreateParams::Address) }
      def address; end
      sig {
        params(_address: Tax::LocationCreateParams::Address).returns(Tax::LocationCreateParams::Address)
       }
      def address=(_address); end
      # Details to identify the tax location by its venue, types of events held, or available services, such as "A spacious auditorium suitable for large concerts and events.".
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The type of tax location. The only supported value is "performance".
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(address: Tax::LocationCreateParams::Address, description: T.nilable(String), expand: T.nilable(T::Array[String]), type: String).void
       }
      def initialize(address: nil, description: nil, expand: nil, type: nil); end
    end
  end
end