# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionUpdateParams < ::Stripe::RequestParams
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
        class SelectedFulfillmentOption < ::Stripe::RequestParams
          class Shipping < ::Stripe::RequestParams
            # The shipping option identifer.
            sig { returns(String) }
            def shipping_option; end
            sig { params(_shipping_option: String).returns(String) }
            def shipping_option=(_shipping_option); end
            sig { params(shipping_option: String).void }
            def initialize(shipping_option: nil); end
          end
          # The shipping fulfillment option.
          sig {
            returns(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping)
           }
          def shipping; end
          sig {
            params(_shipping: ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping).returns(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping)
           }
          def shipping=(_shipping); end
          # The type of fulfillment option.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(shipping: ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping, type: String).void
           }
          def initialize(shipping: nil, type: nil); end
        end
        # The customer's address.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::Address))
         }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::Address)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::Address))
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
        # The fulfillment option to select.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption))
         }
        def selected_fulfillment_option; end
        sig {
          params(_selected_fulfillment_option: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption))
         }
        def selected_fulfillment_option=(_selected_fulfillment_option); end
        sig {
          params(address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), selected_fulfillment_option: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption)).void
         }
        def initialize(
          address: nil,
          email: nil,
          name: nil,
          phone: nil,
          selected_fulfillment_option: nil
        ); end
      end
      class LineItemDetail < ::Stripe::RequestParams
        # The key of the line item.
        sig { returns(String) }
        def key; end
        sig { params(_key: String).returns(String) }
        def key=(_key); end
        # The quantity of the line item.
        sig { returns(Integer) }
        def quantity; end
        sig { params(_quantity: Integer).returns(Integer) }
        def quantity=(_quantity); end
        sig { params(key: String, quantity: Integer).void }
        def initialize(key: nil, quantity: nil); end
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
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails::Address)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # The card for the payment method data.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::Card)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::Card))
         }
        def card=(_card); end
        # The type of the payment method data.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(billing_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::BillingDetails), card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData::Card), type: T.nilable(String)).void
         }
        def initialize(billing_details: nil, card: nil, type: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The details of the fulfillment.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails))
       }
      def fulfillment_details; end
      sig {
        params(_fulfillment_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails))
       }
      def fulfillment_details=(_fulfillment_details); end
      # The details of the line items.
      sig {
        returns(T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail]))
       }
      def line_item_details; end
      sig {
        params(_line_item_details: T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail])).returns(T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail]))
       }
      def line_item_details=(_line_item_details); end
      # The metadata for this requested session.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The payment method for this requested session.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The payment method data for this requested session.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData)))
       }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(T.any(String, ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData))).returns(T.nilable(T.any(String, ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData)))
       }
      def payment_method_data=(_payment_method_data); end
      # The shared metadata for this requested session.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def shared_metadata; end
      sig {
        params(_shared_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def shared_metadata=(_shared_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), fulfillment_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails), line_item_details: T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_data: T.nilable(T.any(String, ::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodData)), shared_metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_data: nil,
        shared_metadata: nil
      ); end
    end
  end
end