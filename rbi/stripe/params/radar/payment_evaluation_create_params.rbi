# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class PaymentEvaluationCreateParams < ::Stripe::RequestParams
      class ClientDeviceMetadataDetails < ::Stripe::RequestParams
        # ID for the Radar Session to associate with the payment evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(String) }
        def radar_session; end
        sig { params(_radar_session: String).returns(String) }
        def radar_session=(_radar_session); end
        sig { params(radar_session: String).void }
        def initialize(radar_session: nil); end
      end
      class CustomerDetails < ::Stripe::RequestParams
        # The ID of the customer associated with the payment evaluation.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # The ID of the Account representing the customer associated with the payment evaluation.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
        def customer_account=(_customer_account); end
        # The customer's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The customer's full name or business name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The customer's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(customer: T.nilable(String), customer_account: T.nilable(String), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(customer: nil, customer_account: nil, email: nil, name: nil, phone: nil); end
      end
      class PaymentDetails < ::Stripe::RequestParams
        class MoneyMovementDetails < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Describes the presence of the customer during the payment.
            sig { returns(T.nilable(String)) }
            def customer_presence; end
            sig { params(_customer_presence: T.nilable(String)).returns(T.nilable(String)) }
            def customer_presence=(_customer_presence); end
            # Describes the type of payment.
            sig { returns(T.nilable(String)) }
            def payment_type; end
            sig { params(_payment_type: T.nilable(String)).returns(T.nilable(String)) }
            def payment_type=(_payment_type); end
            sig {
              params(customer_presence: T.nilable(String), payment_type: T.nilable(String)).void
             }
            def initialize(customer_presence: nil, payment_type: nil); end
          end
          # Describes card money movement details for the payment evaluation.
          sig {
            returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails::Card)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails::Card))
           }
          def card=(_card); end
          # Describes the type of money movement. Currently only `card` is supported.
          sig { returns(String) }
          def money_movement_type; end
          sig { params(_money_movement_type: String).returns(String) }
          def money_movement_type=(_money_movement_type); end
          sig {
            params(card: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails::Card), money_movement_type: String).void
           }
          def initialize(card: nil, money_movement_type: nil); end
        end
        class PaymentMethodDetails < ::Stripe::RequestParams
          class BillingDetails < ::Stripe::RequestParams
            class Address < ::Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
                params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
            # Billing address.
            sig {
              returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails::Address))
             }
            def address; end
            sig {
              params(_address: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails::Address)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails::Address))
             }
            def address=(_address); end
            # Email address.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # Full name.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(address: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(address: nil, email: nil, name: nil, phone: nil); end
          end
          # Billing information associated with the payment evaluation.
          sig {
            returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails))
           }
          def billing_details; end
          sig {
            params(_billing_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails))
           }
          def billing_details=(_billing_details); end
          # ID of the payment method used in this payment evaluation.
          sig { returns(String) }
          def payment_method; end
          sig { params(_payment_method: String).returns(String) }
          def payment_method=(_payment_method); end
          sig {
            params(billing_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails::BillingDetails), payment_method: String).void
           }
          def initialize(billing_details: nil, payment_method: nil); end
        end
        class ShippingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Shipping address.
          sig {
            returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails::Address)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails::Address))
           }
          def address=(_address); end
          # Shipping name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Shipping phone number.
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig {
            params(address: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails::Address), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, name: nil, phone: nil); end
        end
        # The intended amount to collect with this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Details about the payment's customer presence and type.
        sig {
          returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails))
         }
        def money_movement_details; end
        sig {
          params(_money_movement_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails))
         }
        def money_movement_details=(_money_movement_details); end
        # Details about the payment method to use for the payment.
        sig { returns(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails) }
        def payment_method_details; end
        sig {
          params(_payment_method_details: Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails).returns(Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails)
         }
        def payment_method_details=(_payment_method_details); end
        # Shipping details for the payment evaluation.
        sig {
          returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails))
         }
        def shipping_details; end
        sig {
          params(_shipping_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails))
         }
        def shipping_details=(_shipping_details); end
        # Payment statement descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), money_movement_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::MoneyMovementDetails), payment_method_details: Radar::PaymentEvaluationCreateParams::PaymentDetails::PaymentMethodDetails, shipping_details: T.nilable(Radar::PaymentEvaluationCreateParams::PaymentDetails::ShippingDetails), statement_descriptor: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          money_movement_details: nil,
          payment_method_details: nil,
          shipping_details: nil,
          statement_descriptor: nil
        ); end
      end
      # Details about the Client Device Metadata to associate with the payment evaluation.
      sig { returns(T.nilable(Radar::PaymentEvaluationCreateParams::ClientDeviceMetadataDetails)) }
      def client_device_metadata_details; end
      sig {
        params(_client_device_metadata_details: T.nilable(Radar::PaymentEvaluationCreateParams::ClientDeviceMetadataDetails)).returns(T.nilable(Radar::PaymentEvaluationCreateParams::ClientDeviceMetadataDetails))
       }
      def client_device_metadata_details=(_client_device_metadata_details); end
      # Details about the customer associated with the payment evaluation.
      sig { returns(Radar::PaymentEvaluationCreateParams::CustomerDetails) }
      def customer_details; end
      sig {
        params(_customer_details: Radar::PaymentEvaluationCreateParams::CustomerDetails).returns(Radar::PaymentEvaluationCreateParams::CustomerDetails)
       }
      def customer_details=(_customer_details); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Details about the payment.
      sig { returns(Radar::PaymentEvaluationCreateParams::PaymentDetails) }
      def payment_details; end
      sig {
        params(_payment_details: Radar::PaymentEvaluationCreateParams::PaymentDetails).returns(Radar::PaymentEvaluationCreateParams::PaymentDetails)
       }
      def payment_details=(_payment_details); end
      sig {
        params(client_device_metadata_details: T.nilable(Radar::PaymentEvaluationCreateParams::ClientDeviceMetadataDetails), customer_details: Radar::PaymentEvaluationCreateParams::CustomerDetails, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_details: Radar::PaymentEvaluationCreateParams::PaymentDetails).void
       }
      def initialize(
        client_device_metadata_details: nil,
        customer_details: nil,
        expand: nil,
        metadata: nil,
        payment_details: nil
      ); end
    end
  end
end