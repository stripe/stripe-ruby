# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationUpdateParams < ::Stripe::RequestParams
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
      # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
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
    class BusinessRegistration < ::Stripe::RequestParams
      # 14-digit SIRET (Système d'identification du répertoire des établissements) number for the location.
      sig { returns(T.nilable(String)) }
      def siret; end
      sig { params(_siret: T.nilable(String)).returns(T.nilable(String)) }
      def siret=(_siret); end
      sig { params(siret: T.nilable(String)).void }
      def initialize(siret: nil); end
    end
    # The full address of the location.
    sig { returns(T.nilable(::Stripe::PaymentLocationUpdateParams::Address)) }
    def address; end
    sig {
      params(_address: T.nilable(::Stripe::PaymentLocationUpdateParams::Address)).returns(T.nilable(::Stripe::PaymentLocationUpdateParams::Address))
     }
    def address=(_address); end
    # Identification numbers associated with the location.
    sig { returns(T.nilable(::Stripe::PaymentLocationUpdateParams::BusinessRegistration)) }
    def business_registration; end
    sig {
      params(_business_registration: T.nilable(::Stripe::PaymentLocationUpdateParams::BusinessRegistration)).returns(T.nilable(::Stripe::PaymentLocationUpdateParams::BusinessRegistration))
     }
    def business_registration=(_business_registration); end
    # A name for the location.
    sig { returns(T.nilable(String)) }
    def display_name; end
    sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
    def display_name=(_display_name); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    sig {
      params(address: T.nilable(::Stripe::PaymentLocationUpdateParams::Address), business_registration: T.nilable(::Stripe::PaymentLocationUpdateParams::BusinessRegistration), display_name: T.nilable(String), expand: T.nilable(T::Array[String])).void
     }
    def initialize(address: nil, business_registration: nil, display_name: nil, expand: nil); end
  end
end