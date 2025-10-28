# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionCreateParams < ::Stripe::RequestParams
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
          sig { returns(String) }
          def line1; end
          sig { params(_line1: String).returns(String) }
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
          # State, county, province, or region.
          sig { returns(String) }
          def state; end
          sig { params(_state: String).returns(String) }
          def state=(_state); end
          sig {
            params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: String).void
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
        # Attribute for param field address
        sig {
          returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address))
         }
        def address; end
        sig {
          params(_address: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address))
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
          params(address: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
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
            # State, county, province, or region.
            sig { returns(String) }
            def state; end
            sig { params(_state: String).returns(String) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: String).void
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
            returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
          returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # The card for the payment method data.
        sig {
          returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card))
         }
        def card=(_card); end
        # The type of the payment method data.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(billing_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::BillingDetails), card: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData::Card), type: T.nilable(String)).void
         }
        def initialize(billing_details: nil, card: nil, type: nil); end
      end
      class RiskDetails < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # The radar session.
          sig { returns(T.nilable(String)) }
          def radar_session; end
          sig { params(_radar_session: T.nilable(String)).returns(T.nilable(String)) }
          def radar_session=(_radar_session); end
          # The referrer of the client device.
          sig { returns(T.nilable(String)) }
          def referrer; end
          sig { params(_referrer: T.nilable(String)).returns(T.nilable(String)) }
          def referrer=(_referrer); end
          # The remote IP address of the client device.
          sig { returns(T.nilable(String)) }
          def remote_ip; end
          sig { params(_remote_ip: T.nilable(String)).returns(T.nilable(String)) }
          def remote_ip=(_remote_ip); end
          # The time on page in seconds.
          sig { returns(T.nilable(Integer)) }
          def time_on_page; end
          sig { params(_time_on_page: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def time_on_page=(_time_on_page); end
          # The user agent of the client device.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(radar_session: T.nilable(String), referrer: T.nilable(String), remote_ip: T.nilable(String), time_on_page: T.nilable(Integer), user_agent: T.nilable(String)).void
           }
          def initialize(
            radar_session: nil,
            referrer: nil,
            remote_ip: nil,
            time_on_page: nil,
            user_agent: nil
          ); end
        end
        # The client device metadata details for this requested session.
        sig {
          returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details; end
        sig {
          params(_client_device_metadata_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails::ClientDeviceMetadataDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details=(_client_device_metadata_details); end
        sig {
          params(client_device_metadata_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails::ClientDeviceMetadataDetails)).void
         }
        def initialize(client_device_metadata_details: nil); end
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
        returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails))
       }
      def fulfillment_details; end
      sig {
        params(_fulfillment_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails))
       }
      def fulfillment_details=(_fulfillment_details); end
      # The details of the line items.
      sig { returns(T::Array[DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail]) }
      def line_item_details; end
      sig {
        params(_line_item_details: T::Array[DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail]).returns(T::Array[DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail])
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
      sig { returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # The risk details for this requested session.
      sig { returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails)) }
      def risk_details; end
      sig {
        params(_risk_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails))
       }
      def risk_details=(_risk_details); end
      # The details of the seller.
      sig { returns(DelegatedCheckout::RequestedSessionCreateParams::SellerDetails) }
      def seller_details; end
      sig {
        params(_seller_details: DelegatedCheckout::RequestedSessionCreateParams::SellerDetails).returns(DelegatedCheckout::RequestedSessionCreateParams::SellerDetails)
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
      sig {
        params(currency: String, customer: T.nilable(String), expand: T.nilable(T::Array[String]), fulfillment_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetails), line_item_details: T::Array[DelegatedCheckout::RequestedSessionCreateParams::LineItemDetail], metadata: T.nilable(T::Hash[String, String]), payment_method: T.nilable(String), payment_method_data: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodData), risk_details: T.nilable(DelegatedCheckout::RequestedSessionCreateParams::RiskDetails), seller_details: DelegatedCheckout::RequestedSessionCreateParams::SellerDetails, setup_future_usage: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String])).void
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
        risk_details: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil
      ); end
    end
  end
end