# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionCreateParams < ::Stripe::RequestParams
      class AffiliateAttribution < ::Stripe::RequestParams
        class Source < ::Stripe::RequestParams
          # The platform where the attribution originated.
          sig { returns(T.nilable(String)) }
          def platform; end
          sig { params(_platform: T.nilable(String)).returns(T.nilable(String)) }
          def platform=(_platform); end
          # The type of the attribution source.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The URL where the attribution originated.
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
          sig { params(platform: T.nilable(String), type: String, url: T.nilable(String)).void }
          def initialize(platform: nil, type: nil, url: nil); end
        end
        # Agent-scoped campaign identifier.
        sig { returns(T.nilable(String)) }
        def campaign_id; end
        sig { params(_campaign_id: T.nilable(String)).returns(T.nilable(String)) }
        def campaign_id=(_campaign_id); end
        # Agent-scoped creative identifier.
        sig { returns(T.nilable(String)) }
        def creative_id; end
        sig { params(_creative_id: T.nilable(String)).returns(T.nilable(String)) }
        def creative_id=(_creative_id); end
        # Timestamp when the attribution token expires.
        sig { returns(Integer) }
        def expires_at; end
        sig { params(_expires_at: Integer).returns(Integer) }
        def expires_at=(_expires_at); end
        # Agent-issued secret to validate the legitimacy of the source of this data.
        sig { returns(String) }
        def identification_token; end
        sig { params(_identification_token: String).returns(String) }
        def identification_token=(_identification_token); end
        # Timestamp for when the attribution token was issued.
        sig { returns(Integer) }
        def issued_at; end
        sig { params(_issued_at: Integer).returns(Integer) }
        def issued_at=(_issued_at); end
        # Identifier for the attribution agent / affiliate network namespace.
        sig { returns(String) }
        def provider; end
        sig { params(_provider: String).returns(String) }
        def provider=(_provider); end
        # Agent-scoped affiliate/publisher identifier.
        sig { returns(T.nilable(String)) }
        def publisher_id; end
        sig { params(_publisher_id: T.nilable(String)).returns(T.nilable(String)) }
        def publisher_id=(_publisher_id); end
        # Freeform key/value pairs for additional non-sensitive per-agent data.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def shared_metadata; end
        sig {
          params(_shared_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def shared_metadata=(_shared_metadata); end
        # Context about where the attribution originated.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution::Source))
         }
        def source; end
        sig {
          params(_source: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution::Source)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution::Source))
         }
        def source=(_source); end
        # Agent-scoped sub-tracking identifier.
        sig { returns(T.nilable(String)) }
        def sub_id; end
        sig { params(_sub_id: T.nilable(String)).returns(T.nilable(String)) }
        def sub_id=(_sub_id); end
        # Whether this is the first or last touchpoint.
        sig { returns(String) }
        def touchpoint; end
        sig { params(_touchpoint: String).returns(String) }
        def touchpoint=(_touchpoint); end
        sig {
          params(campaign_id: T.nilable(String), creative_id: T.nilable(String), expires_at: Integer, identification_token: String, issued_at: Integer, provider: String, publisher_id: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String]), source: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution::Source), sub_id: T.nilable(String), touchpoint: String).void
         }
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
        ); end
      end
      class FulfillmentDetails < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          def city; end
          sig { params(_city: String).returns(String) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
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
          sig { returns(String) }
          def postal_code; end
          sig { params(_postal_code: String).returns(String) }
          def postal_code=(_postal_code); end
          # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
          sig { returns(String) }
          def state; end
          sig { params(_state: String).returns(String) }
          def state=(_state); end
          sig {
            params(city: String, country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: String, state: String).void
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
        # The customer's address.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address))
         }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address))
         }
        def address=(_address); end
        # The customer's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The customer's name.
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
          params(address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class LineItemDetail < ::Stripe::RequestParams
        # The quantity of the line item.
        sig { returns(Integer) }
        def quantity; end
        sig { params(_quantity: Integer).returns(Integer) }
        def quantity=(_quantity); end
        # The SKU ID of the line item.
        sig { returns(String) }
        def sku_id; end
        sig { params(_sku_id: String).returns(String) }
        def sku_id=(_sku_id); end
        sig { params(quantity: Integer, sku_id: String).void }
        def initialize(quantity: nil, sku_id: nil); end
      end
      class PaymentMethodData < ::Stripe::RequestParams
        class BillingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            sig { params(_city: String).returns(String) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
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
            sig { returns(String) }
            def postal_code; end
            sig { params(_postal_code: String).returns(String) }
            def postal_code=(_postal_code); end
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(String) }
            def state; end
            sig { params(_state: String).returns(String) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: String, state: String).void
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
          # The address for the billing details.
          sig {
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address))
           }
          def address=(_address); end
          # The email for the billing details.
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # The name for the billing details.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # The phone for the billing details.
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig {
            params(address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Card < ::Stripe::RequestParams
          # The CVC of the card.
          sig { returns(T.nilable(String)) }
          def cvc; end
          sig { params(_cvc: T.nilable(String)).returns(T.nilable(String)) }
          def cvc=(_cvc); end
          # The expiration month of the card.
          sig { returns(Integer) }
          def exp_month; end
          sig { params(_exp_month: Integer).returns(Integer) }
          def exp_month=(_exp_month); end
          # The expiration year of the card.
          sig { returns(Integer) }
          def exp_year; end
          sig { params(_exp_year: Integer).returns(Integer) }
          def exp_year=(_exp_year); end
          # The number of the card.
          sig { returns(String) }
          def number; end
          sig { params(_number: String).returns(String) }
          def number=(_number); end
          sig {
            params(cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, number: String).void
           }
          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil); end
        end
        # The billing details for the payment method data.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # The card for the payment method data.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card))
         }
        def card=(_card); end
        # The type of the payment method data.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(billing_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails), card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card), type: T.nilable(String)).void
         }
        def initialize(billing_details: nil, card: nil, type: nil); end
      end
      class SellerDetails < ::Stripe::RequestParams
        # The network profile for the seller.
        sig { returns(String) }
        def network_profile; end
        sig { params(_network_profile: String).returns(String) }
        def network_profile=(_network_profile); end
        sig { params(network_profile: String).void }
        def initialize(network_profile: nil); end
      end
      # The currency for this requested session.
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # The customer for this requested session.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The details of the fulfillment.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails))
       }
      def fulfillment_details; end
      sig {
        params(_fulfillment_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails))
       }
      def fulfillment_details=(_fulfillment_details); end
      # The details of the line items.
      sig {
        returns(T::Array[::Stripe::DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail])
       }
      def line_item_details; end
      sig {
        params(_line_item_details: T::Array[::Stripe::DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail]).returns(T::Array[::Stripe::DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail])
       }
      def line_item_details=(_line_item_details); end
      # The metadata for this requested session.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The payment method for this requested session.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The payment method data for this requested session.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData))
       }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # The details of the seller.
      sig { returns(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::SellerDetails) }
      def seller_details; end
      sig {
        params(_seller_details: ::Stripe::DelegatedCheckout::RequestedSessionCreateParams::SellerDetails).returns(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::SellerDetails)
       }
      def seller_details=(_seller_details); end
      # The setup future usage for this requested session.
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
      def setup_future_usage=(_setup_future_usage); end
      # The shared metadata for this requested session.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      sig {
        params(_shared_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def shared_metadata=(_shared_metadata); end
      # Affiliate attribution data associated with this requested session.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution))
       }
      def affiliate_attribution; end
      sig {
        params(_affiliate_attribution: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution))
       }
      def affiliate_attribution=(_affiliate_attribution); end
      sig {
        params(currency: String, customer: T.nilable(String), expand: T.nilable(T::Array[String]), fulfillment_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails), line_item_details: T::Array[::Stripe::DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail], metadata: T.nilable(T::Hash[String, String]), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData), seller_details: ::Stripe::DelegatedCheckout::RequestedSessionCreateParams::SellerDetails, setup_future_usage: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String]), affiliate_attribution: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionCreateParams::AffiliateAttribution)).void
       }
      def initialize(
        currency: nil,
        customer: nil,
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_data: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil,
        affiliate_attribution: nil
      ); end
    end
  end
end