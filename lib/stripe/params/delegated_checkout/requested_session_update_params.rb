# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionUpdateParams < ::Stripe::RequestParams
      class FulfillmentDetails < ::Stripe::RequestParams
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
          # State, county, province, or region.
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

        class SelectedFulfillmentOption < ::Stripe::RequestParams
          class Shipping < ::Stripe::RequestParams
            # The shipping option identifer.
            attr_accessor :shipping_option

            def initialize(shipping_option: nil)
              @shipping_option = shipping_option
            end
          end
          # The shipping fulfillment option.
          attr_accessor :shipping
          # The type of fulfillment option.
          attr_accessor :type

          def initialize(shipping: nil, type: nil)
            @shipping = shipping
            @type = type
          end
        end
        # The customer's address.
        attr_accessor :address
        # The customer's email address.
        attr_accessor :email
        # The customer's name.
        attr_accessor :name
        # The customer's phone number.
        attr_accessor :phone
        # The fulfillment option to select.
        attr_accessor :selected_fulfillment_option

        def initialize(
          address: nil,
          email: nil,
          name: nil,
          phone: nil,
          selected_fulfillment_option: nil
        )
          @address = address
          @email = email
          @name = name
          @phone = phone
          @selected_fulfillment_option = selected_fulfillment_option
        end
      end

      class LineItemDetail < ::Stripe::RequestParams
        # The key of the line item.
        attr_accessor :key
        # The quantity of the line item.
        attr_accessor :quantity

        def initialize(key: nil, quantity: nil)
          @key = key
          @quantity = quantity
        end
      end

      class PaymentMethodData < ::Stripe::RequestParams
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
            # State, county, province, or region.
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
          # The address for the billing details.
          attr_accessor :address
          # The email for the billing details.
          attr_accessor :email
          # The name for the billing details.
          attr_accessor :name
          # The phone for the billing details.
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Card < ::Stripe::RequestParams
          # The CVC of the card.
          attr_accessor :cvc
          # The expiration month of the card.
          attr_accessor :exp_month
          # The expiration year of the card.
          attr_accessor :exp_year
          # The number of the card.
          attr_accessor :number

          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil)
            @cvc = cvc
            @exp_month = exp_month
            @exp_year = exp_year
            @number = number
          end
        end
        # The billing details for the payment method data.
        attr_accessor :billing_details
        # The card for the payment method data.
        attr_accessor :card
        # The type of the payment method data.
        attr_accessor :type

        def initialize(billing_details: nil, card: nil, type: nil)
          @billing_details = billing_details
          @card = card
          @type = type
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The details of the fulfillment.
      attr_accessor :fulfillment_details
      # The details of the line items.
      attr_accessor :line_item_details
      # The metadata for this requested session.
      attr_accessor :metadata
      # The payment method for this requested session.
      attr_accessor :payment_method
      # The payment method data for this requested session.
      attr_accessor :payment_method_data
      # The shared metadata for this requested session.
      attr_accessor :shared_metadata

      def initialize(
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_data: nil,
        shared_metadata: nil
      )
        @expand = expand
        @fulfillment_details = fulfillment_details
        @line_item_details = line_item_details
        @metadata = metadata
        @payment_method = payment_method
        @payment_method_data = payment_method_data
        @shared_metadata = shared_metadata
      end
    end
  end
end
