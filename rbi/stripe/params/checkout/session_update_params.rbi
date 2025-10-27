# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Checkout
    class SessionUpdateParams < ::Stripe::RequestParams
      class CollectedInformation < ::Stripe::RequestParams
        class ShippingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
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
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: String, line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # The address of the customer
          sig {
            returns(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address)
           }
          def address; end
          sig {
            params(_address: Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address).returns(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address)
           }
          def address=(_address); end
          # The name of customer
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig {
            params(address: Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address, name: String).void
           }
          def initialize(address: nil, name: nil); end
        end
        # The shipping details to apply to this Session.
        sig {
          returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails))
         }
        def shipping_details; end
        sig {
          params(_shipping_details: T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails)).returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails))
         }
        def shipping_details=(_shipping_details); end
        sig {
          params(shipping_details: T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails)).void
         }
        def initialize(shipping_details: nil); end
      end
      class ShippingOption < ::Stripe::RequestParams
        class ShippingRateData < ::Stripe::RequestParams
          class DeliveryEstimate < ::Stripe::RequestParams
            class Maximum < ::Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < ::Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum; end
            sig {
              params(_maximum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum=(_maximum); end
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum; end
            sig {
              params(_minimum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum=(_minimum); end
            sig {
              params(maximum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < ::Stripe::RequestParams
            class CurrencyOptions < ::Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              def tax_behavior; end
              sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def tax_behavior=(_tax_behavior); end
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options; end
            sig {
              params(_currency_options: T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options=(_currency_options); end
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate; end
          sig {
            params(_delivery_estimate: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate=(_delivery_estimate); end
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount))
           }
          def fixed_amount; end
          sig {
            params(_fixed_amount: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount))
           }
          def fixed_amount=(_fixed_amount); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(delivery_estimate: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          ); end
        end
        # The ID of the Shipping Rate to use for this shipping option.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        # Parameters to be passed to Shipping Rate creation for this shipping option.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)) }
        def shipping_rate_data; end
        sig {
          params(_shipping_rate_data: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData))
         }
        def shipping_rate_data=(_shipping_rate_data); end
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      # Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
      sig { returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation)) }
      def collected_information; end
      sig {
        params(_collected_information: T.nilable(Checkout::SessionUpdateParams::CollectedInformation)).returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation))
       }
      def collected_information=(_collected_information); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The shipping rate options to apply to this Session. Up to a maximum of 5.
      sig {
        returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption])))
       }
      def shipping_options; end
      sig {
        params(_shipping_options: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption]))).returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption])))
       }
      def shipping_options=(_shipping_options); end
      sig {
        params(collected_information: T.nilable(Checkout::SessionUpdateParams::CollectedInformation), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), shipping_options: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption]))).void
       }
      def initialize(
        collected_information: nil,
        expand: nil,
        metadata: nil,
        shipping_options: nil
      ); end
    end
  end
end