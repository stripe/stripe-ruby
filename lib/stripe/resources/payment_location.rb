# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Location represents a physical location where payments take place.
  class PaymentLocation < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "payment_location"
    def self.object_name
      "payment_location"
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

    class BusinessRegistration < ::Stripe::StripeObject
      # 14-digit SIRET (Système d'identification du répertoire des établissements) number for the location.
      attr_reader :siret

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class CapabilitySettings < ::Stripe::StripeObject
      class FrMealVouchersConecsPayments < ::Stripe::StripeObject
        class SupportedIssuers < ::Stripe::StripeObject
          # Supported meal voucher issuers for card payments.
          attr_reader :card
          # Supported meal voucher issuers for card present payments.
          attr_reader :card_present

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Supported meal voucher issuers.
        attr_reader :supported_issuers

        def self.inner_class_types
          @inner_class_types = { supported_issuers: SupportedIssuers }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Settings for Conecs French meal voucher capability.
      attr_reader :fr_meal_vouchers_conecs_payments

      def self.inner_class_types
        @inner_class_types = { fr_meal_vouchers_conecs_payments: FrMealVouchersConecsPayments }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field address
    attr_reader :address
    # Identification numbers associated with the location.
    attr_reader :business_registration
    # The capability settings for the location. Only applicable for locations with requested Payment Location Capabilities.
    attr_reader :capability_settings
    # The display name of the location.
    attr_reader :display_name
    # Unique identifier for the object.
    attr_reader :id
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Create a Payment Location.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_locations",
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = {
        address: Address,
        business_registration: BusinessRegistration,
        capability_settings: CapabilitySettings,
      }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
