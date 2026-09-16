# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class PaymentEvaluationCreateParams < ::Stripe::RequestParams
      class ClientDeviceMetadataDetails < ::Stripe::RequestParams
        # ID for the Radar Session to associate with the payment evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        attr_accessor :radar_session

        def initialize(radar_session: nil)
          @radar_session = radar_session
        end
      end

      class CustomerDetails < ::Stripe::RequestParams
        # The ID of the customer associated with the payment evaluation.
        attr_accessor :customer
        # The ID of the Account representing the customer associated with the payment evaluation.
        attr_accessor :customer_account
        # The customer's email address.
        attr_accessor :email
        # The customer's full name or business name.
        attr_accessor :name
        # The customer's phone number.
        attr_accessor :phone

        def initialize(customer: nil, customer_account: nil, email: nil, name: nil, phone: nil)
          @customer = customer
          @customer_account = customer_account
          @email = email
          @name = name
          @phone = phone
        end
      end

      class PaymentDetails < ::Stripe::RequestParams
        class MoneyMovementDetails < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Describes the presence of the customer during the payment.
            attr_accessor :customer_presence
            # Describes the type of payment.
            attr_accessor :payment_type

            def initialize(customer_presence: nil, payment_type: nil)
              @customer_presence = customer_presence
              @payment_type = payment_type
            end
          end
          # Describes card money movement details for the payment evaluation.
          attr_accessor :card
          # Describes the type of money movement. Currently only `card` is supported.
          attr_accessor :money_movement_type

          def initialize(card: nil, money_movement_type: nil)
            @card = card
            @money_movement_type = money_movement_type
          end
        end

        class PaymentMethodDetails < ::Stripe::RequestParams
          class BillingDetails < ::Stripe::RequestParams
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
            # Billing address.
            attr_accessor :address
            # Email address.
            attr_accessor :email
            # Full name.
            attr_accessor :name
            # Billing phone number (including extension).
            attr_accessor :phone

            def initialize(address: nil, email: nil, name: nil, phone: nil)
              @address = address
              @email = email
              @name = name
              @phone = phone
            end
          end
          # Billing information associated with the payment evaluation.
          attr_accessor :billing_details
          # ID of the payment method used in this payment evaluation.
          attr_accessor :payment_method

          def initialize(billing_details: nil, payment_method: nil)
            @billing_details = billing_details
            @payment_method = payment_method
          end
        end

        class ShippingDetails < ::Stripe::RequestParams
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
          # Shipping address.
          attr_accessor :address
          # Shipping name.
          attr_accessor :name
          # Shipping phone number.
          attr_accessor :phone

          def initialize(address: nil, name: nil, phone: nil)
            @address = address
            @name = name
            @phone = phone
          end
        end
        # The intended amount to collect with this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Details about the payment's customer presence and type.
        attr_accessor :money_movement_details
        # Details about the payment method to use for the payment.
        attr_accessor :payment_method_details
        # Shipping details for the payment evaluation.
        attr_accessor :shipping_details
        # Payment statement descriptor.
        attr_accessor :statement_descriptor

        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          money_movement_details: nil,
          payment_method_details: nil,
          shipping_details: nil,
          statement_descriptor: nil
        )
          @amount = amount
          @currency = currency
          @description = description
          @money_movement_details = money_movement_details
          @payment_method_details = payment_method_details
          @shipping_details = shipping_details
          @statement_descriptor = statement_descriptor
        end
      end
      # Details about the Client Device Metadata to associate with the payment evaluation.
      attr_accessor :client_device_metadata_details
      # Details about the customer associated with the payment evaluation.
      attr_accessor :customer_details
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Details about the payment.
      attr_accessor :payment_details

      def initialize(
        client_device_metadata_details: nil,
        customer_details: nil,
        expand: nil,
        metadata: nil,
        payment_details: nil
      )
        @client_device_metadata_details = client_device_metadata_details
        @customer_details = customer_details
        @expand = expand
        @metadata = metadata
        @payment_details = payment_details
      end
    end
  end
end
