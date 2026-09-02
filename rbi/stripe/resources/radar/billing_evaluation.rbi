# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Billing Evaluations represent Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge. Unlike a [Payment Evaluation](https://docs.stripe.com/api/radar/payment-evaluation), a billing evaluation is created before the payment is attempted and returns the `non_payment_abuse` signal only.
    class BillingEvaluation < APIResource
      class ClientDeviceMetadataDetails < ::Stripe::StripeObject
        # ID for the Radar Session associated with the billing evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        def radar_session; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CustomerDetails < ::Stripe::StripeObject
        class Data < ::Stripe::StripeObject
          # The customer's email address.
          sig { returns(T.nilable(String)) }
          def email; end
          # The customer's full name or business name.
          sig { returns(T.nilable(String)) }
          def name; end
          # The customer's phone number.
          sig { returns(T.nilable(String)) }
          def phone; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the customer whose upcoming payment was evaluated.
        sig { returns(T.nilable(String)) }
        def customer; end
        # The ID of the Account representing the customer whose upcoming payment was evaluated.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        # Attributes of the customer being evaluated. These are populated from the `customer` or `customer_account` object when one was supplied, and from the request otherwise.
        sig { returns(T.nilable(Data)) }
        def data; end
        def self.inner_class_types
          @inner_class_types = {data: Data}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentDetails < ::Stripe::StripeObject
        class MoneyMovementDetails < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Describes the presence of the customer during the payment.
            sig { returns(T.nilable(String)) }
            def customer_presence; end
            # Describes the type of payment.
            sig { returns(T.nilable(String)) }
            def payment_type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Describes card money movement details.
          sig { returns(T.nilable(Card)) }
          def card; end
          # Describes the type of money movement. Currently only `card` is supported.
          sig { returns(String) }
          def money_movement_type; end
          def self.inner_class_types
            @inner_class_types = {card: Card}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentMethodDetails < ::Stripe::StripeObject
          class BillingDetails < ::Stripe::StripeObject
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
            # Address data.
            sig { returns(Address) }
            def address; end
            # Email address.
            sig { returns(T.nilable(String)) }
            def email; end
            # Full name.
            sig { returns(T.nilable(String)) }
            def name; end
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            def phone; end
            def self.inner_class_types
              @inner_class_types = {address: Address}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing information associated with the billing evaluation.
          sig { returns(T.nilable(BillingDetails)) }
          def billing_details; end
          # The payment method that will be charged.
          sig { returns(T.nilable(String)) }
          def payment_method; end
          def self.inner_class_types
            @inner_class_types = {billing_details: BillingDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ShippingDetails < ::Stripe::StripeObject
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
          # Address data.
          sig { returns(Address) }
          def address; end
          # Shipping name.
          sig { returns(T.nilable(String)) }
          def name; end
          # Shipping phone number.
          sig { returns(T.nilable(String)) }
          def phone; end
          def self.inner_class_types
            @inner_class_types = {address: Address}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        sig { returns(Integer) }
        def amount; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # Details about the payment's customer presence and type.
        sig { returns(T.nilable(MoneyMovementDetails)) }
        def money_movement_details; end
        # Details about the payment method that will be charged.
        sig { returns(T.nilable(PaymentMethodDetails)) }
        def payment_method_details; end
        # Shipping details for the billing evaluation.
        sig { returns(T.nilable(ShippingDetails)) }
        def shipping_details; end
        # Payment statement descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        def self.inner_class_types
          @inner_class_types = {
            money_movement_details: MoneyMovementDetails,
            payment_method_details: PaymentMethodDetails,
            shipping_details: ShippingDetails,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Signals < ::Stripe::StripeObject
        class NonPaymentAbuse < ::Stripe::StripeObject
          # The time when this signal was evaluated.
          sig { returns(Integer) }
          def evaluated_at; end
          # Risk level.
          sig { returns(String) }
          def risk_level; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Stripe Radar's assessment of the likelihood that the upcoming charge results in non-payment abuse.
        sig { returns(T.nilable(NonPaymentAbuse)) }
        def non_payment_abuse; end
        def self.inner_class_types
          @inner_class_types = {non_payment_abuse: NonPaymentAbuse}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Client device metadata attached to this billing evaluation.
      sig { returns(T.nilable(ClientDeviceMetadataDetails)) }
      def client_device_metadata_details; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created_at; end
      # Details of the customer this billing evaluation assesses.
      sig { returns(T.nilable(CustomerDetails)) }
      def customer_details; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Payment details for the upcoming charge this billing evaluation assesses.
      sig { returns(T.nilable(PaymentDetails)) }
      def payment_details; end
      # Stripe Radar's signals for the upcoming charge this billing evaluation assesses.
      sig { returns(Signals) }
      def signals; end
      # Request Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge, before the payment is attempted.
      sig {
        params(params: T.any(::Stripe::Radar::BillingEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::BillingEvaluation)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end