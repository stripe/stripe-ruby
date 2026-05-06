# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Payment Location represents a physical location where payments take place.
  class PaymentLocation < APIResource
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
    class BusinessRegistration < ::Stripe::StripeObject
      # 14-digit SIRET (Système d'identification du répertoire des établissements) number for the location.
      sig { returns(T.nilable(String)) }
      def siret; end
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
          sig { returns(T.nilable(T::Array[String])) }
          def card; end
          # Supported meal voucher issuers for card present payments.
          sig { returns(T.nilable(T::Array[String])) }
          def card_present; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Supported meal voucher issuers.
        sig { returns(T.nilable(SupportedIssuers)) }
        def supported_issuers; end
        def self.inner_class_types
          @inner_class_types = {supported_issuers: SupportedIssuers}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Settings for Conecs French meal voucher capability.
      sig { returns(T.nilable(FrMealVouchersConecsPayments)) }
      def fr_meal_vouchers_conecs_payments; end
      def self.inner_class_types
        @inner_class_types = {fr_meal_vouchers_conecs_payments: FrMealVouchersConecsPayments}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field address
    sig { returns(Address) }
    def address; end
    # Identification numbers associated with the location.
    sig { returns(T.nilable(BusinessRegistration)) }
    def business_registration; end
    # The capability settings for the location. Only applicable for locations with requested Payment Location Capabilities.
    sig { returns(T.nilable(CapabilitySettings)) }
    def capability_settings; end
    # Always true for a deleted object
    sig { returns(T.nilable(T::Boolean)) }
    def deleted; end
    # The display name of the location.
    sig { returns(String) }
    def display_name; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Create a Payment Location.
    sig {
      params(params: T.any(::Stripe::PaymentLocationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def self.create(params = {}, opts = {}); end

    # Delete a Payment Location.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLocationDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def self.delete(id, params = {}, opts = {}); end

    # Delete a Payment Location.
    sig {
      params(params: T.any(::Stripe::PaymentLocationDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def delete(params = {}, opts = {}); end

    # Update a Payment Location.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLocationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocation)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end