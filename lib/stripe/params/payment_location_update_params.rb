# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationUpdateParams < ::Stripe::RequestParams
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
      # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
      attr_accessor :state

      def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
        @city = city
        @country = country
        @line1 = line1
        @line2 = line2
        @postal_code = postal_code
        @state = state
      end
    end

    class BusinessRegistration < ::Stripe::RequestParams
      # 14-digit SIRET (Système d'identification du répertoire des établissements) number for the location.
      attr_accessor :siret

      def initialize(siret: nil)
        @siret = siret
      end
    end
    # The full address of the location.
    attr_accessor :address
    # Identification numbers associated with the location.
    attr_accessor :business_registration
    # A name for the location.
    attr_accessor :display_name
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Pass true when updating location fields that trigger onboarding review for any of the location's active location capabilities. If this parameter isn't set to true, updates that would trigger onboarding review fail. Only applicable for locations with active location capabilities.
    attr_accessor :onboarding_data_update_acknowledged

    def initialize(
      address: nil,
      business_registration: nil,
      display_name: nil,
      expand: nil,
      onboarding_data_update_acknowledged: nil
    )
      @address = address
      @business_registration = business_registration
      @display_name = display_name
      @expand = expand
      @onboarding_data_update_acknowledged = onboarding_data_update_acknowledged
    end
  end
end
