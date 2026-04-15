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

        class SelectedFulfillmentOption < ::Stripe::RequestParams
          class Digital < ::Stripe::RequestParams
            # The digital option identifier.
            attr_accessor :digital_option

            def initialize(digital_option: nil)
              @digital_option = digital_option
            end
          end

          class Shipping < ::Stripe::RequestParams
            # The shipping option identifier.
            attr_accessor :shipping_option

            def initialize(shipping_option: nil)
              @shipping_option = shipping_option
            end
          end
          # The digital fulfillment option.
          attr_accessor :digital
          # The shipping fulfillment option.
          attr_accessor :shipping
          # The type of fulfillment option.
          attr_accessor :type

          def initialize(digital: nil, shipping: nil, type: nil)
            @digital = digital
            @shipping = shipping
            @type = type
          end
        end

        class SelectedFulfillmentOptionOverride < ::Stripe::RequestParams
          class Digital < ::Stripe::RequestParams
            # The digital option identifier.
            attr_accessor :digital_option

            def initialize(digital_option: nil)
              @digital_option = digital_option
            end
          end

          class Shipping < ::Stripe::RequestParams
            # The shipping option identifier.
            attr_accessor :shipping_option

            def initialize(shipping_option: nil)
              @shipping_option = shipping_option
            end
          end
          # The digital fulfillment option.
          attr_accessor :digital
          # The line item keys that this fulfillment option override applies to.
          attr_accessor :line_item_keys
          # The shipping fulfillment option.
          attr_accessor :shipping
          # The type of fulfillment option.
          attr_accessor :type

          def initialize(digital: nil, line_item_keys: nil, shipping: nil, type: nil)
            @digital = digital
            @line_item_keys = line_item_keys
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
        # The fulfillment option overrides for specific line items.
        attr_accessor :selected_fulfillment_option_overrides

        def initialize(
          address: nil,
          email: nil,
          name: nil,
          phone: nil,
          selected_fulfillment_option: nil,
          selected_fulfillment_option_overrides: nil
        )
          @address = address
          @email = email
          @name = name
          @phone = phone
          @selected_fulfillment_option = selected_fulfillment_option
          @selected_fulfillment_option_overrides = selected_fulfillment_option_overrides
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

      class PaymentMethodOptions < ::Stripe::RequestParams
        class Card < ::Stripe::RequestParams
          # The card brands to exclude from the session.
          attr_accessor :brands_blocked

          def initialize(brands_blocked: nil)
            @brands_blocked = brands_blocked
          end
        end
        # Card-specific payment method options.
        attr_accessor :card
        # The payment method types to exclude from the session.
        attr_accessor :excluded_payment_method_types

        def initialize(card: nil, excluded_payment_method_types: nil)
          @card = card
          @excluded_payment_method_types = excluded_payment_method_types
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
      # The payment method options for this requested session.
      attr_accessor :payment_method_options
      # The shared metadata for this requested session.
      attr_accessor :shared_metadata

      def initialize(
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_options: nil,
        shared_metadata: nil
      )
        @expand = expand
        @fulfillment_details = fulfillment_details
        @line_item_details = line_item_details
        @metadata = metadata
        @payment_method = payment_method
        @payment_method_options = payment_method_options
        @shared_metadata = shared_metadata
      end
    end
  end
end
