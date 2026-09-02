# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Billing Evaluations represent Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge. Unlike a [Payment Evaluation](https://docs.stripe.com/api/radar/payment-evaluation), a billing evaluation is created before the payment is attempted and returns the `non_payment_abuse` signal only.
    class BillingEvaluation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "radar.billing_evaluation"
      def self.object_name
        "radar.billing_evaluation"
      end

      class ClientDeviceMetadataDetails < ::Stripe::StripeObject
        # ID for the Radar Session associated with the billing evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        attr_reader :radar_session

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
          attr_reader :email
          # The customer's full name or business name.
          attr_reader :name
          # The customer's phone number.
          attr_reader :phone

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the customer whose upcoming payment was evaluated.
        attr_reader :customer
        # The ID of the Account representing the customer whose upcoming payment was evaluated.
        attr_reader :customer_account
        # Attributes of the customer being evaluated. These are populated from the `customer` or `customer_account` object when one was supplied, and from the request otherwise.
        attr_reader :data

        def self.inner_class_types
          @inner_class_types = { data: Data }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class PaymentDetails < ::Stripe::StripeObject
        class MoneyMovementDetails < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Describes the presence of the customer during the payment.
            attr_reader :customer_presence
            # Describes the type of payment.
            attr_reader :payment_type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Describes card money movement details.
          attr_reader :card
          # Describes the type of money movement. Currently only `card` is supported.
          attr_reader :money_movement_type

          def self.inner_class_types
            @inner_class_types = { card: Card }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentMethodDetails < ::Stripe::StripeObject
          class BillingDetails < ::Stripe::StripeObject
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
            # Address data.
            attr_reader :address
            # Email address.
            attr_reader :email
            # Full name.
            attr_reader :name
            # Billing phone number (including extension).
            attr_reader :phone

            def self.inner_class_types
              @inner_class_types = { address: Address }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing information associated with the billing evaluation.
          attr_reader :billing_details
          # The payment method that will be charged.
          attr_reader :payment_method

          def self.inner_class_types
            @inner_class_types = { billing_details: BillingDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ShippingDetails < ::Stripe::StripeObject
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
          # Address data.
          attr_reader :address
          # Shipping name.
          attr_reader :name
          # Shipping phone number.
          attr_reader :phone

          def self.inner_class_types
            @inner_class_types = { address: Address }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_reader :description
        # Details about the payment's customer presence and type.
        attr_reader :money_movement_details
        # Details about the payment method that will be charged.
        attr_reader :payment_method_details
        # Shipping details for the billing evaluation.
        attr_reader :shipping_details
        # Payment statement descriptor.
        attr_reader :statement_descriptor

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
          attr_reader :evaluated_at
          # Risk level.
          attr_reader :risk_level

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Stripe Radar's assessment of the likelihood that the upcoming charge results in non-payment abuse.
        attr_reader :non_payment_abuse

        def self.inner_class_types
          @inner_class_types = { non_payment_abuse: NonPaymentAbuse }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Client device metadata attached to this billing evaluation.
      attr_reader :client_device_metadata_details
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created_at
      # Details of the customer this billing evaluation assesses.
      attr_reader :customer_details
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Payment details for the upcoming charge this billing evaluation assesses.
      attr_reader :payment_details
      # Stripe Radar's signals for the upcoming charge this billing evaluation assesses.
      attr_reader :signals

      # Request Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge, before the payment is attempted.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/billing_evaluations",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          client_device_metadata_details: ClientDeviceMetadataDetails,
          customer_details: CustomerDetails,
          payment_details: PaymentDetails,
          signals: Signals,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
