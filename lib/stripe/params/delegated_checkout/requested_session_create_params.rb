# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionCreateParams < ::Stripe::RequestParams
      class AffiliateAttribution < ::Stripe::RequestParams
        class Source < ::Stripe::RequestParams
          # The platform where the attribution originated.
          attr_accessor :platform
          # The type of the attribution source.
          attr_accessor :type
          # The URL where the attribution originated.
          attr_accessor :url

          def initialize(platform: nil, type: nil, url: nil)
            @platform = platform
            @type = type
            @url = url
          end
        end
        # Agent-scoped campaign identifier.
        attr_accessor :campaign_id
        # Agent-scoped creative identifier.
        attr_accessor :creative_id
        # Timestamp when the attribution token expires.
        attr_accessor :expires_at
        # Agent-issued secret to validate the legitimacy of the source of this data.
        attr_accessor :identification_token
        # Timestamp for when the attribution token was issued.
        attr_accessor :issued_at
        # Identifier for the attribution agent / affiliate network namespace.
        attr_accessor :provider
        # Agent-scoped affiliate/publisher identifier.
        attr_accessor :publisher_id
        # Freeform key/value pairs for additional non-sensitive per-agent data.
        attr_accessor :shared_metadata
        # Context about where the attribution originated.
        attr_accessor :source
        # Agent-scoped sub-tracking identifier.
        attr_accessor :sub_id
        # Whether this is the first or last touchpoint.
        attr_accessor :touchpoint

        def initialize(
          campaign_id: nil,
          creative_id: nil,
          expires_at: nil,
          identification_token: nil,
          issued_at: nil,
          provider: nil,
          publisher_id: nil,
          shared_metadata: nil,
          source: nil,
          sub_id: nil,
          touchpoint: nil
        )
          @campaign_id = campaign_id
          @creative_id = creative_id
          @expires_at = expires_at
          @identification_token = identification_token
          @issued_at = issued_at
          @provider = provider
          @publisher_id = publisher_id
          @shared_metadata = shared_metadata
          @source = source
          @sub_id = sub_id
          @touchpoint = touchpoint
        end
      end

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
        # The customer's address.
        attr_accessor :address
        # The customer's email address.
        attr_accessor :email
        # The customer's name.
        attr_accessor :name
        # The customer's phone number.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end

      class LineItemDetail < ::Stripe::RequestParams
        # The quantity of the line item.
        attr_accessor :quantity
        # The SKU ID of the line item.
        attr_accessor :sku_id

        def initialize(quantity: nil, sku_id: nil)
          @quantity = quantity
          @sku_id = sku_id
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

      class SellerDetails < ::Stripe::RequestParams
        # The network profile for the seller.
        attr_accessor :network_profile

        def initialize(network_profile: nil)
          @network_profile = network_profile
        end
      end
      # Affiliate attribution data associated with this requested session.
      attr_accessor :affiliate_attribution
      # The currency for this requested session.
      attr_accessor :currency
      # The customer for this requested session.
      attr_accessor :customer
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
      # The details of the seller.
      attr_accessor :seller_details
      # The setup future usage for this requested session.
      attr_accessor :setup_future_usage
      # The shared metadata for this requested session.
      attr_accessor :shared_metadata

      def initialize(
        affiliate_attribution: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_options: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil
      )
        @affiliate_attribution = affiliate_attribution
        @currency = currency
        @customer = customer
        @expand = expand
        @fulfillment_details = fulfillment_details
        @line_item_details = line_item_details
        @metadata = metadata
        @payment_method = payment_method
        @payment_method_options = payment_method_options
        @seller_details = seller_details
        @setup_future_usage = setup_future_usage
        @shared_metadata = shared_metadata
      end
    end
  end
end
