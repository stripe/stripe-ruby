# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
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

      class RiskDetails < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # The radar session.
          attr_accessor :radar_session
          # The referrer of the client device.
          attr_accessor :referrer
          # The remote IP address of the client device.
          attr_accessor :remote_ip
          # The time on page in milliseconds.
          attr_accessor :time_on_page_ms
          # The user agent of the client device.
          attr_accessor :user_agent

          def initialize(
            radar_session: nil,
            referrer: nil,
            remote_ip: nil,
            time_on_page_ms: nil,
            user_agent: nil
          )
            @radar_session = radar_session
            @referrer = referrer
            @remote_ip = remote_ip
            @time_on_page_ms = time_on_page_ms
            @user_agent = user_agent
          end
        end
        # The client device metadata details for this requested session.
        attr_accessor :client_device_metadata_details

        def initialize(client_device_metadata_details: nil)
          @client_device_metadata_details = client_device_metadata_details
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The PaymentMethod to use with the requested session.
      attr_accessor :payment_method
      # Risk details/signals associated with the requested session
      attr_accessor :risk_details
      # The payment method data for this requested session.
      attr_accessor :payment_method_data

      def initialize(expand: nil, payment_method: nil, risk_details: nil, payment_method_data: nil)
        @expand = expand
        @payment_method = payment_method
        @risk_details = risk_details
        @payment_method_data = payment_method_data
      end
    end
  end
end
