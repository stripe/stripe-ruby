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
          class Digital < ::Stripe::RequestParams
            # The digital option identifier.
            sig { returns(String) }
            def digital_option; end
            sig { params(_digital_option: String).returns(String) }
            def digital_option=(_digital_option); end
            sig { params(digital_option: String).void }
            def initialize(digital_option: nil); end
          end
          class Shipping < ::Stripe::RequestParams
            # The shipping option identifier.
            sig { returns(String) }
            def shipping_option; end
            sig { params(_shipping_option: String).returns(String) }
            def shipping_option=(_shipping_option); end
            sig { params(shipping_option: String).void }
            def initialize(shipping_option: nil); end
          end
          # The digital fulfillment option.
          sig {
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Digital))
           }
          def digital; end
          sig {
            params(_digital: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Digital)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Digital))
           }
          def digital=(_digital); end
          # The shipping fulfillment option.
          sig {
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping))
           }
          def shipping; end
          sig {
            params(_shipping: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping))
           }
          def shipping=(_shipping); end
          # The type of fulfillment option.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(digital: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Digital), shipping: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption::Shipping), type: String).void
           }
          def initialize(digital: nil, shipping: nil, type: nil); end
        end
        class SelectedFulfillmentOptionOverride < ::Stripe::RequestParams
          class Digital < ::Stripe::RequestParams
            # The digital option identifier.
            sig { returns(String) }
            def digital_option; end
            sig { params(_digital_option: String).returns(String) }
            def digital_option=(_digital_option); end
            sig { params(digital_option: String).void }
            def initialize(digital_option: nil); end
          end
          class Shipping < ::Stripe::RequestParams
            # The shipping option identifier.
            sig { returns(String) }
            def shipping_option; end
            sig { params(_shipping_option: String).returns(String) }
            def shipping_option=(_shipping_option); end
            sig { params(shipping_option: String).void }
            def initialize(shipping_option: nil); end
          end
          # The digital fulfillment option.
          sig {
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Digital))
           }
          def digital; end
          sig {
            params(_digital: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Digital)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Digital))
           }
          def digital=(_digital); end
          # The line item keys that this fulfillment option override applies to.
          sig { returns(T::Array[String]) }
          def line_item_keys; end
          sig { params(_line_item_keys: T::Array[String]).returns(T::Array[String]) }
          def line_item_keys=(_line_item_keys); end
          # The shipping fulfillment option.
          sig {
            returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Shipping))
           }
          def shipping; end
          sig {
            params(_shipping: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Shipping)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Shipping))
           }
          def shipping=(_shipping); end
          # The type of fulfillment option.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(digital: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Digital), line_item_keys: T::Array[String], shipping: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride::Shipping), type: String).void
           }
          def initialize(digital: nil, line_item_keys: nil, shipping: nil, type: nil); end
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
        # The fulfillment option overrides for specific line items.
        sig {
          returns(T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride]))
         }
        def selected_fulfillment_option_overrides; end
        sig {
          params(_selected_fulfillment_option_overrides: T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride])).returns(T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride]))
         }
        def selected_fulfillment_option_overrides=(_selected_fulfillment_option_overrides); end
        sig {
          params(address: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), selected_fulfillment_option: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOption), selected_fulfillment_option_overrides: T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails::SelectedFulfillmentOptionOverride])).void
         }
        def initialize(
          address: nil,
          email: nil,
          name: nil,
          phone: nil,
          selected_fulfillment_option: nil,
          selected_fulfillment_option_overrides: nil
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
      class PaymentMethodOptions < ::Stripe::RequestParams
        class Card < ::Stripe::RequestParams
          # The card brands to exclude from the session.
          sig { returns(T.nilable(T::Array[String])) }
          def brands_blocked; end
          sig {
            params(_brands_blocked: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def brands_blocked=(_brands_blocked); end
          sig { params(brands_blocked: T.nilable(T::Array[String])).void }
          def initialize(brands_blocked: nil); end
        end
        # Card-specific payment method options.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        # The payment method types to exclude from the session.
        sig { returns(T.nilable(T::Array[String])) }
        def excluded_payment_method_types; end
        sig {
          params(_excluded_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def excluded_payment_method_types=(_excluded_payment_method_types); end
        sig {
          params(card: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions::Card), excluded_payment_method_types: T.nilable(T::Array[String])).void
         }
        def initialize(card: nil, excluded_payment_method_types: nil); end
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
      # The shared metadata for this requested session.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def shared_metadata; end
      sig {
        params(_shared_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def shared_metadata=(_shared_metadata); end
      # The payment method options for this requested session.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions))
       }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      sig {
        params(expand: T.nilable(T::Array[String]), fulfillment_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetails), line_item_details: T.nilable(T::Array[::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), shared_metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method_options: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodOptions)).void
       }
      def initialize(
        expand: nil,
        fulfillment_details: nil,
        line_item_details: nil,
        metadata: nil,
        payment_method: nil,
        shared_metadata: nil,
        payment_method_options: nil
      ); end
    end
  end
end