# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class BillingEvaluationCreateParams < ::Stripe::RequestParams
      class ClientDeviceMetadataDetails < ::Stripe::RequestParams
        # ID for the Radar Session to associate with the billing evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions about the customer behind the upcoming payment.
        attr_accessor :radar_session

        def initialize(radar_session: nil)
          @radar_session = radar_session
        end
      end

      class CustomerDetails < ::Stripe::RequestParams
        class Data < ::Stripe::RequestParams
          # The email address of the customer being evaluated.
          attr_accessor :email
          # The full name or business name of the customer being evaluated.
          attr_accessor :name
          # The phone number of the customer being evaluated.
          attr_accessor :phone

          def initialize(email: nil, name: nil, phone: nil)
            @email = email
            @name = name
            @phone = phone
          end
        end
        # The ID of the customer whose upcoming payment is being evaluated.
        attr_accessor :customer
        # The ID of the Account representing the customer whose upcoming payment is being evaluated.
        attr_accessor :customer_account
        # Attributes of the customer being evaluated. Supply these when the customer isn't represented by a Customer or an Account. If `customer` or `customer_account` is also supplied, the attributes on that object are used and these are ignored.
        attr_accessor :data

        def initialize(customer: nil, customer_account: nil, data: nil)
          @customer = customer
          @customer_account = customer_account
          @data = data
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
          # Describes card money movement details.
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
          # Billing information associated with the payment method used for the upcoming payment.
          attr_accessor :billing_details
          # ID of the payment method that the upcoming payment is charged to.
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
        # The amount that the upcoming payment collects. A positive integer representing how much is charged in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # An arbitrary description of the upcoming payment.
        attr_accessor :description
        # Details about how the money for the upcoming payment moves.
        attr_accessor :money_movement_details
        # Details about the payment method that the upcoming payment is charged to.
        attr_accessor :payment_method_details
        # Shipping details for the goods or services covered by the upcoming payment.
        attr_accessor :shipping_details
        # The statement descriptor that appears on the customer's statement for the upcoming payment.
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
      # Details about the client device to associate with the billing evaluation.
      attr_accessor :client_device_metadata_details
      # Details about the customer whose upcoming payment is being evaluated.
      attr_accessor :customer_details
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Details about the upcoming payment being evaluated.
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
