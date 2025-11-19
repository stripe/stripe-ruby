# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentCaptureParams < ::Stripe::RequestParams
    class AmountDetails < ::Stripe::RequestParams
      class LineItem < ::Stripe::RequestParams
        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            sig { returns(T.nilable(String)) }
            def commodity_code; end
            sig { params(_commodity_code: T.nilable(String)).returns(T.nilable(String)) }
            def commodity_code=(_commodity_code); end
            sig { params(commodity_code: T.nilable(String)).void }
            def initialize(commodity_code: nil); end
          end
          class CardPresent < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            sig { returns(T.nilable(String)) }
            def commodity_code; end
            sig { params(_commodity_code: T.nilable(String)).returns(T.nilable(String)) }
            def commodity_code=(_commodity_code); end
            sig { params(commodity_code: T.nilable(String)).void }
            def initialize(commodity_code: nil); end
          end
          class Klarna < ::Stripe::RequestParams
            # URL to an image for the product. Max length, 4096 characters.
            sig { returns(T.nilable(String)) }
            def image_url; end
            sig { params(_image_url: T.nilable(String)).returns(T.nilable(String)) }
            def image_url=(_image_url); end
            # URL to the product page. Max length, 4096 characters.
            sig { returns(T.nilable(String)) }
            def product_url; end
            sig { params(_product_url: T.nilable(String)).returns(T.nilable(String)) }
            def product_url=(_product_url); end
            # Unique reference for this line item to correlate it with your system’s internal records. The field is displayed in the Klarna Consumer App if passed.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # Reference for the subscription this line item is for.
            sig { returns(T.nilable(String)) }
            def subscription_reference; end
            sig { params(_subscription_reference: T.nilable(String)).returns(T.nilable(String)) }
            def subscription_reference=(_subscription_reference); end
            sig {
              params(image_url: T.nilable(String), product_url: T.nilable(String), reference: T.nilable(String), subscription_reference: T.nilable(String)).void
             }
            def initialize(
              image_url: nil,
              product_url: nil,
              reference: nil,
              subscription_reference: nil
            ); end
          end
          class Paypal < ::Stripe::RequestParams
            # Type of the line item.
            sig { returns(T.nilable(String)) }
            def category; end
            sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
            def category=(_category); end
            # Description of the line item.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # The Stripe account ID of the connected account that sells the item.
            sig { returns(T.nilable(String)) }
            def sold_by; end
            sig { params(_sold_by: T.nilable(String)).returns(T.nilable(String)) }
            def sold_by=(_sold_by); end
            sig {
              params(category: T.nilable(String), description: T.nilable(String), sold_by: T.nilable(String)).void
             }
            def initialize(category: nil, description: nil, sold_by: nil); end
          end
          # This sub-hash contains line item details that are specific to `card` payment method."
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Card)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          # This sub-hash contains line item details that are specific to `card_present` payment method."
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent))
           }
          def card_present; end
          sig {
            params(_card_present: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent))
           }
          def card_present=(_card_present); end
          # This sub-hash contains line item details that are specific to `klarna` payment method."
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna))
           }
          def klarna; end
          sig {
            params(_klarna: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna))
           }
          def klarna=(_klarna); end
          # This sub-hash contains line item details that are specific to `paypal` payment method."
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal))
           }
          def paypal; end
          sig {
            params(_paypal: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal))
           }
          def paypal=(_paypal); end
          sig {
            params(card: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Card), card_present: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent), klarna: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna), paypal: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal)).void
           }
          def initialize(card: nil, card_present: nil, klarna: nil, paypal: nil); end
        end
        class Tax < ::Stripe::RequestParams
          # The total amount of tax on a single line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
          #
          # This field is mutually exclusive with the `amount_details[tax][total_tax_amount]` field.
          sig { returns(Integer) }
          def total_tax_amount; end
          sig { params(_total_tax_amount: Integer).returns(Integer) }
          def total_tax_amount=(_total_tax_amount); end
          sig { params(total_tax_amount: Integer).void }
          def initialize(total_tax_amount: nil); end
        end
        # The discount applied on this line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than 0.
        #
        # This field is mutually exclusive with the `amount_details[discount_amount]` field.
        sig { returns(T.nilable(Integer)) }
        def discount_amount; end
        sig { params(_discount_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_discount_amount); end
        # Payment method-specific information for line items.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions))
         }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # The product code of the line item, such as an SKU. Required for L3 rates. At most 12 characters long.
        sig { returns(T.nilable(String)) }
        def product_code; end
        sig { params(_product_code: T.nilable(String)).returns(T.nilable(String)) }
        def product_code=(_product_code); end
        # The product name of the line item. Required for L3 rates. At most 1024 characters long.
        #
        # For Cards, this field is truncated to 26 alphanumeric characters before being sent to the card networks. For Paypal, this field is truncated to 127 characters.
        sig { returns(String) }
        def product_name; end
        sig { params(_product_name: String).returns(String) }
        def product_name=(_product_name); end
        # The quantity of items. Required for L3 rates. An integer greater than 0.
        sig { returns(Integer) }
        def quantity; end
        sig { params(_quantity: Integer).returns(Integer) }
        def quantity=(_quantity); end
        # Contains information about the tax on the item.
        sig { returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::Tax)) }
        def tax; end
        sig {
          params(_tax: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::Tax)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::Tax))
         }
        def tax=(_tax); end
        # The unit cost of the line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
        sig { returns(Integer) }
        def unit_cost; end
        sig { params(_unit_cost: Integer).returns(Integer) }
        def unit_cost=(_unit_cost); end
        # A unit of measure for the line item, such as gallons, feet, meters, etc.
        sig { returns(T.nilable(String)) }
        def unit_of_measure; end
        sig { params(_unit_of_measure: T.nilable(String)).returns(T.nilable(String)) }
        def unit_of_measure=(_unit_of_measure); end
        sig {
          params(discount_amount: T.nilable(Integer), payment_method_options: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::PaymentMethodOptions), product_code: T.nilable(String), product_name: String, quantity: Integer, tax: T.nilable(PaymentIntentCaptureParams::AmountDetails::LineItem::Tax), unit_cost: Integer, unit_of_measure: T.nilable(String)).void
         }
        def initialize(
          discount_amount: nil,
          payment_method_options: nil,
          product_code: nil,
          product_name: nil,
          quantity: nil,
          tax: nil,
          unit_cost: nil,
          unit_of_measure: nil
        ); end
      end
      class Shipping < ::Stripe::RequestParams
        # If a physical good is being shipped, the cost of shipping represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than or equal to 0.
        sig { returns(T.nilable(T.any(String, Integer))) }
        def amount; end
        sig {
          params(_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def amount=(_amount); end
        # If a physical good is being shipped, the postal code of where it is being shipped from. At most 10 alphanumeric characters long, hyphens are allowed.
        sig { returns(T.nilable(String)) }
        def from_postal_code; end
        sig { params(_from_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def from_postal_code=(_from_postal_code); end
        # If a physical good is being shipped, the postal code of where it is being shipped to. At most 10 alphanumeric characters long, hyphens are allowed.
        sig { returns(T.nilable(String)) }
        def to_postal_code; end
        sig { params(_to_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def to_postal_code=(_to_postal_code); end
        sig {
          params(amount: T.nilable(T.any(String, Integer)), from_postal_code: T.nilable(String), to_postal_code: T.nilable(String)).void
         }
        def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil); end
      end
      class Tax < ::Stripe::RequestParams
        # The total amount of tax on the transaction represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L2 rates. An integer greater than or equal to 0.
        #
        # This field is mutually exclusive with the `amount_details[line_items][#][tax][total_tax_amount]` field.
        sig { returns(Integer) }
        def total_tax_amount; end
        sig { params(_total_tax_amount: Integer).returns(Integer) }
        def total_tax_amount=(_total_tax_amount); end
        sig { params(total_tax_amount: Integer).void }
        def initialize(total_tax_amount: nil); end
      end
      # The total discount applied on the transaction represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than 0.
      #
      # This field is mutually exclusive with the `amount_details[line_items][#][discount_amount]` field.
      sig { returns(T.nilable(T.any(String, Integer))) }
      def discount_amount; end
      sig {
        params(_discount_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
       }
      def discount_amount=(_discount_amount); end
      # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
      sig {
        returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::AmountDetails::LineItem])))
       }
      def line_items; end
      sig {
        params(_line_items: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::AmountDetails::LineItem]))).returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::AmountDetails::LineItem])))
       }
      def line_items=(_line_items); end
      # Contains information about the shipping portion of the amount.
      sig { returns(T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Shipping))) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Shipping))).returns(T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Shipping)))
       }
      def shipping=(_shipping); end
      # Contains information about the tax portion of the amount.
      sig { returns(T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Tax))) }
      def tax; end
      sig {
        params(_tax: T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Tax))).returns(T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Tax)))
       }
      def tax=(_tax); end
      sig {
        params(discount_amount: T.nilable(T.any(String, Integer)), line_items: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::AmountDetails::LineItem])), shipping: T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Shipping)), tax: T.nilable(T.any(String, PaymentIntentCaptureParams::AmountDetails::Tax))).void
       }
      def initialize(discount_amount: nil, line_items: nil, shipping: nil, tax: nil); end
    end
    class Hooks < ::Stripe::RequestParams
      class Inputs < ::Stripe::RequestParams
        class Tax < ::Stripe::RequestParams
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          sig { returns(String) }
          def calculation; end
          sig { params(_calculation: String).returns(String) }
          def calculation=(_calculation); end
          sig { params(calculation: String).void }
          def initialize(calculation: nil); end
        end
        # Tax arguments for automations
        sig { returns(T.nilable(PaymentIntentCaptureParams::Hooks::Inputs::Tax)) }
        def tax; end
        sig {
          params(_tax: T.nilable(PaymentIntentCaptureParams::Hooks::Inputs::Tax)).returns(T.nilable(PaymentIntentCaptureParams::Hooks::Inputs::Tax))
         }
        def tax=(_tax); end
        sig { params(tax: T.nilable(PaymentIntentCaptureParams::Hooks::Inputs::Tax)).void }
        def initialize(tax: nil); end
      end
      # Arguments passed in automations
      sig { returns(T.nilable(PaymentIntentCaptureParams::Hooks::Inputs)) }
      def inputs; end
      sig {
        params(_inputs: T.nilable(PaymentIntentCaptureParams::Hooks::Inputs)).returns(T.nilable(PaymentIntentCaptureParams::Hooks::Inputs))
       }
      def inputs=(_inputs); end
      sig { params(inputs: T.nilable(PaymentIntentCaptureParams::Hooks::Inputs)).void }
      def initialize(inputs: nil); end
    end
    class PaymentDetails < ::Stripe::RequestParams
      class CarRental < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
            # The email of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The name of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(email: nil, name: nil, phone: nil); end
          end
          # The delivery method for the payment
          sig { returns(T.nilable(String)) }
          def mode; end
          sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
          def mode=(_mode); end
          # Details of the recipient.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery::Recipient))
           }
          def recipient; end
          sig {
            params(_recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery::Recipient)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery::Recipient))
           }
          def recipient=(_recipient); end
          sig {
            params(mode: T.nilable(String), recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery::Recipient)).void
           }
          def initialize(mode: nil, recipient: nil); end
        end
        class Distance < ::Stripe::RequestParams
          # Distance traveled.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
          sig { returns(T.nilable(String)) }
          def unit; end
          sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
          def unit=(_unit); end
          sig { params(amount: T.nilable(Integer), unit: T.nilable(String)).void }
          def initialize(amount: nil, unit: nil); end
        end
        class Driver < ::Stripe::RequestParams
          # Driver's identification number.
          sig { returns(T.nilable(String)) }
          def driver_identification_number; end
          sig {
            params(_driver_identification_number: T.nilable(String)).returns(T.nilable(String))
           }
          def driver_identification_number=(_driver_identification_number); end
          # Driver's tax number.
          sig { returns(T.nilable(String)) }
          def driver_tax_number; end
          sig { params(_driver_tax_number: T.nilable(String)).returns(T.nilable(String)) }
          def driver_tax_number=(_driver_tax_number); end
          # Full name of the person or entity on the car reservation.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig {
            params(driver_identification_number: T.nilable(String), driver_tax_number: T.nilable(String), name: String).void
           }
          def initialize(driver_identification_number: nil, driver_tax_number: nil, name: nil); end
        end
        class PickupAddress < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        class ReturnAddress < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        # Affiliate details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Affiliate)) }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Affiliate))
         }
        def affiliate=(_affiliate); end
        # The booking number associated with the car rental.
        sig { returns(String) }
        def booking_number; end
        sig { params(_booking_number: String).returns(String) }
        def booking_number=(_booking_number); end
        # Class code of the car.
        sig { returns(T.nilable(String)) }
        def car_class_code; end
        sig { params(_car_class_code: T.nilable(String)).returns(T.nilable(String)) }
        def car_class_code=(_car_class_code); end
        # Make of the car.
        sig { returns(T.nilable(String)) }
        def car_make; end
        sig { params(_car_make: T.nilable(String)).returns(T.nilable(String)) }
        def car_make=(_car_make); end
        # Model of the car.
        sig { returns(T.nilable(String)) }
        def car_model; end
        sig { params(_car_model: T.nilable(String)).returns(T.nilable(String)) }
        def car_model=(_car_model); end
        # The name of the rental car company.
        sig { returns(T.nilable(String)) }
        def company; end
        sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
        def company=(_company); end
        # The customer service phone number of the car rental company.
        sig { returns(T.nilable(String)) }
        def customer_service_phone_number; end
        sig { params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def customer_service_phone_number=(_customer_service_phone_number); end
        # Number of days the car is being rented.
        sig { returns(Integer) }
        def days_rented; end
        sig { params(_days_rented: Integer).returns(Integer) }
        def days_rented=(_days_rented); end
        # Delivery details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery)) }
        def delivery; end
        sig {
          params(_delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery))
         }
        def delivery=(_delivery); end
        # The details of the distance traveled during the rental period.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Distance)) }
        def distance; end
        sig {
          params(_distance: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Distance)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Distance))
         }
        def distance=(_distance); end
        # The details of the passengers in the travel reservation
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRental::Driver]))
         }
        def drivers; end
        sig {
          params(_drivers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRental::Driver])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRental::Driver]))
         }
        def drivers=(_drivers); end
        # List of additional charges being billed.
        sig { returns(T.nilable(T::Array[String])) }
        def extra_charges; end
        sig {
          params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def extra_charges=(_extra_charges); end
        # Indicates if the customer did not keep nor cancel their booking.
        sig { returns(T.nilable(T::Boolean)) }
        def no_show; end
        sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def no_show=(_no_show); end
        # Car pick-up address.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::PickupAddress))
         }
        def pickup_address; end
        sig {
          params(_pickup_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::PickupAddress)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::PickupAddress))
         }
        def pickup_address=(_pickup_address); end
        # Car pick-up time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def pickup_at; end
        sig { params(_pickup_at: Integer).returns(Integer) }
        def pickup_at=(_pickup_at); end
        # Name of the pickup location.
        sig { returns(T.nilable(String)) }
        def pickup_location_name; end
        sig { params(_pickup_location_name: T.nilable(String)).returns(T.nilable(String)) }
        def pickup_location_name=(_pickup_location_name); end
        # Rental rate.
        sig { returns(T.nilable(Integer)) }
        def rate_amount; end
        sig { params(_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def rate_amount=(_rate_amount); end
        # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
        sig { returns(T.nilable(String)) }
        def rate_interval; end
        sig { params(_rate_interval: T.nilable(String)).returns(T.nilable(String)) }
        def rate_interval=(_rate_interval); end
        # The name of the person or entity renting the car.
        sig { returns(T.nilable(String)) }
        def renter_name; end
        sig { params(_renter_name: T.nilable(String)).returns(T.nilable(String)) }
        def renter_name=(_renter_name); end
        # Car return address.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::ReturnAddress))
         }
        def return_address; end
        sig {
          params(_return_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::ReturnAddress)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::ReturnAddress))
         }
        def return_address=(_return_address); end
        # Car return time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def return_at; end
        sig { params(_return_at: Integer).returns(Integer) }
        def return_at=(_return_at); end
        # Name of the return location.
        sig { returns(T.nilable(String)) }
        def return_location_name; end
        sig { params(_return_location_name: T.nilable(String)).returns(T.nilable(String)) }
        def return_location_name=(_return_location_name); end
        # Indicates whether the goods or services are tax-exempt or tax is not collected.
        sig { returns(T.nilable(T::Boolean)) }
        def tax_exempt; end
        sig { params(_tax_exempt: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def tax_exempt=(_tax_exempt); end
        # The vehicle identification number.
        sig { returns(T.nilable(String)) }
        def vehicle_identification_number; end
        sig { params(_vehicle_identification_number: T.nilable(String)).returns(T.nilable(String)) }
        def vehicle_identification_number=(_vehicle_identification_number); end
        sig {
          params(affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Affiliate), booking_number: String, car_class_code: T.nilable(String), car_make: T.nilable(String), car_model: T.nilable(String), company: T.nilable(String), customer_service_phone_number: T.nilable(String), days_rented: Integer, delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Delivery), distance: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::Distance), drivers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRental::Driver]), extra_charges: T.nilable(T::Array[String]), no_show: T.nilable(T::Boolean), pickup_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::PickupAddress), pickup_at: Integer, pickup_location_name: T.nilable(String), rate_amount: T.nilable(Integer), rate_interval: T.nilable(String), renter_name: T.nilable(String), return_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental::ReturnAddress), return_at: Integer, return_location_name: T.nilable(String), tax_exempt: T.nilable(T::Boolean), vehicle_identification_number: T.nilable(String)).void
         }
        def initialize(
          affiliate: nil,
          booking_number: nil,
          car_class_code: nil,
          car_make: nil,
          car_model: nil,
          company: nil,
          customer_service_phone_number: nil,
          days_rented: nil,
          delivery: nil,
          distance: nil,
          drivers: nil,
          extra_charges: nil,
          no_show: nil,
          pickup_address: nil,
          pickup_at: nil,
          pickup_location_name: nil,
          rate_amount: nil,
          rate_interval: nil,
          renter_name: nil,
          return_address: nil,
          return_at: nil,
          return_location_name: nil,
          tax_exempt: nil,
          vehicle_identification_number: nil
        ); end
      end
      class CarRentalDatum < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Name of affiliate partner.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(code: T.nilable(String), name: T.nilable(String)).void }
          def initialize(code: nil, name: nil); end
        end
        class Distance < ::Stripe::RequestParams
          # Distance traveled.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
          sig { returns(String) }
          def unit; end
          sig { params(_unit: String).returns(String) }
          def unit=(_unit); end
          sig { params(amount: Integer, unit: String).void }
          def initialize(amount: nil, unit: nil); end
        end
        class Driver < ::Stripe::RequestParams
          class DateOfBirth < ::Stripe::RequestParams
            # Day of birth (1-31).
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # Month of birth (1-12).
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # Year of birth (must be greater than 1900).
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Driver's date of birth.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver::DateOfBirth))
           }
          def date_of_birth; end
          sig {
            params(_date_of_birth: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver::DateOfBirth)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver::DateOfBirth))
           }
          def date_of_birth=(_date_of_birth); end
          # Driver's identification number.
          sig { returns(T.nilable(String)) }
          def driver_identification_number; end
          sig {
            params(_driver_identification_number: T.nilable(String)).returns(T.nilable(String))
           }
          def driver_identification_number=(_driver_identification_number); end
          # Driver's tax number.
          sig { returns(T.nilable(String)) }
          def driver_tax_number; end
          sig { params(_driver_tax_number: T.nilable(String)).returns(T.nilable(String)) }
          def driver_tax_number=(_driver_tax_number); end
          # Driver's full name.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig {
            params(date_of_birth: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver::DateOfBirth), driver_identification_number: T.nilable(String), driver_tax_number: T.nilable(String), name: String).void
           }
          def initialize(
            date_of_birth: nil,
            driver_identification_number: nil,
            driver_tax_number: nil,
            name: nil
          ); end
        end
        class DropOff < ::Stripe::RequestParams
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
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
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
          # Address of the rental location.
          sig {
            returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff::Address)
           }
          def address; end
          sig {
            params(_address: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff::Address).returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff::Address)
           }
          def address=(_address); end
          # Location name.
          sig { returns(T.nilable(String)) }
          def location_name; end
          sig { params(_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def location_name=(_location_name); end
          # Timestamp for the location.
          sig { returns(Integer) }
          def time; end
          sig { params(_time: Integer).returns(Integer) }
          def time=(_time); end
          sig {
            params(address: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff::Address, location_name: T.nilable(String), time: Integer).void
           }
          def initialize(address: nil, location_name: nil, time: nil); end
        end
        class Insurance < ::Stripe::RequestParams
          # Amount of the insurance coverage in cents.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Currency of the insurance amount.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Name of the insurance company.
          sig { returns(T.nilable(String)) }
          def insurance_company_name; end
          sig { params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String)) }
          def insurance_company_name=(_insurance_company_name); end
          # Type of insurance coverage.
          sig { returns(String) }
          def insurance_type; end
          sig { params(_insurance_type: String).returns(String) }
          def insurance_type=(_insurance_type); end
          sig {
            params(amount: Integer, currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: String).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          ); end
        end
        class Pickup < ::Stripe::RequestParams
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
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
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
          # Address of the rental location.
          sig {
            returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup::Address)
           }
          def address; end
          sig {
            params(_address: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup::Address).returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup::Address)
           }
          def address=(_address); end
          # Location name.
          sig { returns(T.nilable(String)) }
          def location_name; end
          sig { params(_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def location_name=(_location_name); end
          # Timestamp for the location.
          sig { returns(Integer) }
          def time; end
          sig { params(_time: Integer).returns(Integer) }
          def time=(_time); end
          sig {
            params(address: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup::Address, location_name: T.nilable(String), time: Integer).void
           }
          def initialize(address: nil, location_name: nil, time: nil); end
        end
        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            sig { returns(T.nilable(String)) }
            def corporate_client_code; end
            sig { params(_corporate_client_code: T.nilable(String)).returns(T.nilable(String)) }
            def corporate_client_code=(_corporate_client_code); end
            # Coupon code applied to the rental.
            sig { returns(T.nilable(String)) }
            def coupon; end
            sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
            def coupon=(_coupon); end
            # Maximum number of free miles or kilometers included.
            sig { returns(T.nilable(Integer)) }
            def maximum_free_miles_or_kilometers; end
            sig {
              params(_maximum_free_miles_or_kilometers: T.nilable(Integer)).returns(T.nilable(Integer))
             }
            def maximum_free_miles_or_kilometers=(_maximum_free_miles_or_kilometers); end
            sig {
              params(corporate_client_code: T.nilable(String), coupon: T.nilable(String), maximum_free_miles_or_kilometers: T.nilable(Integer)).void
             }
            def initialize(
              corporate_client_code: nil,
              coupon: nil,
              maximum_free_miles_or_kilometers: nil
            ); end
          end
          class ExtraCharge < ::Stripe::RequestParams
            # Amount of the extra charge in cents.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Type of extra charge.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(amount: Integer, type: String).void }
            def initialize(amount: nil, type: nil); end
          end
          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount.
              sig { returns(T.nilable(Integer)) }
              def amount; end
              sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def amount=(_amount); end
              # Tax rate applied.
              sig { returns(T.nilable(Integer)) }
              def rate; end
              sig { params(_rate: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def rate=(_rate); end
              # Type of tax applied.
              sig { returns(T.nilable(String)) }
              def type; end
              sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
              def type=(_type); end
              sig {
                params(amount: T.nilable(Integer), rate: T.nilable(Integer), type: T.nilable(String)).void
               }
              def initialize(amount: nil, rate: nil, type: nil); end
            end
            # Indicates if the transaction is tax exempt.
            sig { returns(T.nilable(T::Boolean)) }
            def tax_exempt_indicator; end
            sig {
              params(_tax_exempt_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def tax_exempt_indicator=(_tax_exempt_indicator); end
            # Array of tax details.
            sig {
              returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax::Tax]))
             }
            def taxes; end
            sig {
              params(_taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax::Tax])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax::Tax]))
             }
            def taxes=(_taxes); end
            sig {
              params(tax_exempt_indicator: T.nilable(T::Boolean), taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax::Tax])).void
             }
            def initialize(tax_exempt_indicator: nil, taxes: nil); end
          end
          # Total amount in cents.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Currency of the amount.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Discount details for the rental.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Discounts))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Discounts)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Discounts))
           }
          def discounts=(_discounts); end
          # Additional charges for the rental.
          sig {
            returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::ExtraCharge]))
           }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::ExtraCharge])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::ExtraCharge]))
           }
          def extra_charges=(_extra_charges); end
          # Rate per unit for the rental.
          sig { returns(T.nilable(Integer)) }
          def rate_per_unit; end
          sig { params(_rate_per_unit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def rate_per_unit=(_rate_per_unit); end
          # Unit of measurement for the rate.
          sig { returns(T.nilable(String)) }
          def rate_unit; end
          sig { params(_rate_unit: T.nilable(String)).returns(T.nilable(String)) }
          def rate_unit=(_rate_unit); end
          # Tax breakdown for the rental.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax))
           }
          def tax=(_tax); end
          sig {
            params(amount: Integer, currency: T.nilable(String), discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Discounts), extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::ExtraCharge]), rate_per_unit: T.nilable(Integer), rate_unit: T.nilable(String), tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total::Tax)).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            rate_per_unit: nil,
            rate_unit: nil,
            tax: nil
          ); end
        end
        class Vehicle < ::Stripe::RequestParams
          # Make of the rental vehicle.
          sig { returns(T.nilable(String)) }
          def make; end
          sig { params(_make: T.nilable(String)).returns(T.nilable(String)) }
          def make=(_make); end
          # Model of the rental vehicle.
          sig { returns(T.nilable(String)) }
          def model; end
          sig { params(_model: T.nilable(String)).returns(T.nilable(String)) }
          def model=(_model); end
          # Odometer reading at the time of rental.
          sig { returns(T.nilable(Integer)) }
          def odometer; end
          sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def odometer=(_odometer); end
          # Type of the rental vehicle.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          # Class of the rental vehicle.
          sig { returns(T.nilable(String)) }
          def vehicle_class; end
          sig { params(_vehicle_class: T.nilable(String)).returns(T.nilable(String)) }
          def vehicle_class=(_vehicle_class); end
          # Vehicle identification number (VIN).
          sig { returns(T.nilable(String)) }
          def vehicle_identification_number; end
          sig {
            params(_vehicle_identification_number: T.nilable(String)).returns(T.nilable(String))
           }
          def vehicle_identification_number=(_vehicle_identification_number); end
          sig {
            params(make: T.nilable(String), model: T.nilable(String), odometer: T.nilable(Integer), type: T.nilable(String), vehicle_class: T.nilable(String), vehicle_identification_number: T.nilable(String)).void
           }
          def initialize(
            make: nil,
            model: nil,
            odometer: nil,
            type: nil,
            vehicle_class: nil,
            vehicle_identification_number: nil
          ); end
        end
        # Affiliate (such as travel agency) details for the rental.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Affiliate))
         }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Affiliate))
         }
        def affiliate=(_affiliate); end
        # Booking confirmation number for the car rental.
        sig { returns(T.nilable(String)) }
        def booking_number; end
        sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
        def booking_number=(_booking_number); end
        # Name of the car rental company.
        sig { returns(T.nilable(String)) }
        def carrier_name; end
        sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
        def carrier_name=(_carrier_name); end
        # Customer service phone number for the car rental company.
        sig { returns(T.nilable(String)) }
        def customer_service_phone_number; end
        sig { params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def customer_service_phone_number=(_customer_service_phone_number); end
        # Number of days the car is being rented.
        sig { returns(T.nilable(Integer)) }
        def days_rented; end
        sig { params(_days_rented: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def days_rented=(_days_rented); end
        # Distance details for the rental.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Distance))
         }
        def distance; end
        sig {
          params(_distance: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Distance)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Distance))
         }
        def distance=(_distance); end
        # List of drivers for the rental.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver]))
         }
        def drivers; end
        sig {
          params(_drivers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver]))
         }
        def drivers=(_drivers); end
        # Drop-off location details.
        sig { returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff) }
        def drop_off; end
        sig {
          params(_drop_off: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff).returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff)
         }
        def drop_off=(_drop_off); end
        # Insurance details for the rental.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Insurance]))
         }
        def insurances; end
        sig {
          params(_insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Insurance])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Insurance]))
         }
        def insurances=(_insurances); end
        # Indicates if the customer was a no-show.
        sig { returns(T.nilable(T::Boolean)) }
        def no_show_indicator; end
        sig { params(_no_show_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def no_show_indicator=(_no_show_indicator); end
        # Pickup location details.
        sig { returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup) }
        def pickup; end
        sig {
          params(_pickup: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup).returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup)
         }
        def pickup=(_pickup); end
        # Name of the person renting the vehicle.
        sig { returns(T.nilable(String)) }
        def renter_name; end
        sig { params(_renter_name: T.nilable(String)).returns(T.nilable(String)) }
        def renter_name=(_renter_name); end
        # Total cost breakdown for the rental.
        sig { returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total) }
        def total; end
        sig {
          params(_total: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total).returns(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total)
         }
        def total=(_total); end
        # Vehicle details for the rental.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Vehicle))
         }
        def vehicle; end
        sig {
          params(_vehicle: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Vehicle)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Vehicle))
         }
        def vehicle=(_vehicle); end
        sig {
          params(affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Affiliate), booking_number: T.nilable(String), carrier_name: T.nilable(String), customer_service_phone_number: T.nilable(String), days_rented: T.nilable(Integer), distance: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Distance), drivers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Driver]), drop_off: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::DropOff, insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Insurance]), no_show_indicator: T.nilable(T::Boolean), pickup: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Pickup, renter_name: T.nilable(String), total: PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Total, vehicle: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum::Vehicle)).void
         }
        def initialize(
          affiliate: nil,
          booking_number: nil,
          carrier_name: nil,
          customer_service_phone_number: nil,
          days_rented: nil,
          distance: nil,
          drivers: nil,
          drop_off: nil,
          insurances: nil,
          no_show_indicator: nil,
          pickup: nil,
          renter_name: nil,
          total: nil,
          vehicle: nil
        ); end
      end
      class EventDetails < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
            # The email of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The name of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(email: nil, name: nil, phone: nil); end
          end
          # The delivery method for the payment
          sig { returns(T.nilable(String)) }
          def mode; end
          sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
          def mode=(_mode); end
          # Details of the recipient.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery::Recipient))
           }
          def recipient; end
          sig {
            params(_recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery::Recipient))
           }
          def recipient=(_recipient); end
          sig {
            params(mode: T.nilable(String), recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)).void
           }
          def initialize(mode: nil, recipient: nil); end
        end
        # Indicates if the tickets are digitally checked when entering the venue.
        sig { returns(T.nilable(T::Boolean)) }
        def access_controlled_venue; end
        sig {
          params(_access_controlled_venue: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def access_controlled_venue=(_access_controlled_venue); end
        # The event location's address.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Address))
         }
        def address; end
        sig {
          params(_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Address)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Address))
         }
        def address=(_address); end
        # Affiliate details for this purchase.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Affiliate))
         }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Affiliate))
         }
        def affiliate=(_affiliate); end
        # The name of the company
        sig { returns(T.nilable(String)) }
        def company; end
        sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
        def company=(_company); end
        # Delivery details for this purchase.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery))
         }
        def delivery; end
        sig {
          params(_delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery))
         }
        def delivery=(_delivery); end
        # Event end time. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def ends_at; end
        sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def ends_at=(_ends_at); end
        # Type of the event entertainment (concert, sports event etc)
        sig { returns(T.nilable(String)) }
        def genre; end
        sig { params(_genre: T.nilable(String)).returns(T.nilable(String)) }
        def genre=(_genre); end
        # The name of the event.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Event start time. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def starts_at; end
        sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def starts_at=(_starts_at); end
        sig {
          params(access_controlled_venue: T.nilable(T::Boolean), address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Address), affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Affiliate), company: T.nilable(String), delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails::Delivery), ends_at: T.nilable(Integer), genre: T.nilable(String), name: String, starts_at: T.nilable(Integer)).void
         }
        def initialize(
          access_controlled_venue: nil,
          address: nil,
          affiliate: nil,
          company: nil,
          delivery: nil,
          ends_at: nil,
          genre: nil,
          name: nil,
          starts_at: nil
        ); end
      end
      class Flight < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
            # The email of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The name of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(email: nil, name: nil, phone: nil); end
          end
          # The delivery method for the payment
          sig { returns(T.nilable(String)) }
          def mode; end
          sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
          def mode=(_mode); end
          # Details of the recipient.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery::Recipient))
           }
          def recipient; end
          sig {
            params(_recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery::Recipient)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery::Recipient))
           }
          def recipient=(_recipient); end
          sig {
            params(mode: T.nilable(String), recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery::Recipient)).void
           }
          def initialize(mode: nil, recipient: nil); end
        end
        class Passenger < ::Stripe::RequestParams
          # Full name of the person or entity on the flight reservation.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Segment < ::Stripe::RequestParams
          # The flight segment amount.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # The International Air Transport Association (IATA) airport code for the arrival airport.
          sig { returns(T.nilable(String)) }
          def arrival_airport; end
          sig { params(_arrival_airport: T.nilable(String)).returns(T.nilable(String)) }
          def arrival_airport=(_arrival_airport); end
          # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def arrives_at; end
          sig { params(_arrives_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def arrives_at=(_arrives_at); end
          # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
          sig { returns(T.nilable(String)) }
          def carrier; end
          sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
          def carrier=(_carrier); end
          # The departure time for the flight segment. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def departs_at; end
          sig { params(_departs_at: Integer).returns(Integer) }
          def departs_at=(_departs_at); end
          # The International Air Transport Association (IATA) airport code for the departure airport.
          sig { returns(T.nilable(String)) }
          def departure_airport; end
          sig { params(_departure_airport: T.nilable(String)).returns(T.nilable(String)) }
          def departure_airport=(_departure_airport); end
          # The flight number associated with the segment
          sig { returns(T.nilable(String)) }
          def flight_number; end
          sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
          def flight_number=(_flight_number); end
          # The fare class for the segment.
          sig { returns(T.nilable(String)) }
          def service_class; end
          sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
          def service_class=(_service_class); end
          sig {
            params(amount: T.nilable(Integer), arrival_airport: T.nilable(String), arrives_at: T.nilable(Integer), carrier: T.nilable(String), departs_at: Integer, departure_airport: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            arrival_airport: nil,
            arrives_at: nil,
            carrier: nil,
            departs_at: nil,
            departure_airport: nil,
            flight_number: nil,
            service_class: nil
          ); end
        end
        # Affiliate details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Affiliate)) }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Affiliate))
         }
        def affiliate=(_affiliate); end
        # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
        sig { returns(T.nilable(String)) }
        def agency_number; end
        sig { params(_agency_number: T.nilable(String)).returns(T.nilable(String)) }
        def agency_number=(_agency_number); end
        # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Delivery details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery)) }
        def delivery; end
        sig {
          params(_delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery))
         }
        def delivery=(_delivery); end
        # The name of the person or entity on the reservation.
        sig { returns(T.nilable(String)) }
        def passenger_name; end
        sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
        def passenger_name=(_passenger_name); end
        # The details of the passengers in the travel reservation.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Passenger]))
         }
        def passengers; end
        sig {
          params(_passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Passenger])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Passenger]))
         }
        def passengers=(_passengers); end
        # The individual flight segments associated with the trip.
        sig { returns(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Segment]) }
        def segments; end
        sig {
          params(_segments: T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Segment]).returns(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Segment])
         }
        def segments=(_segments); end
        # The ticket number associated with the travel reservation.
        sig { returns(T.nilable(String)) }
        def ticket_number; end
        sig { params(_ticket_number: T.nilable(String)).returns(T.nilable(String)) }
        def ticket_number=(_ticket_number); end
        sig {
          params(affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Affiliate), agency_number: T.nilable(String), carrier: T.nilable(String), delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight::Delivery), passenger_name: T.nilable(String), passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Passenger]), segments: T::Array[PaymentIntentCaptureParams::PaymentDetails::Flight::Segment], ticket_number: T.nilable(String)).void
         }
        def initialize(
          affiliate: nil,
          agency_number: nil,
          carrier: nil,
          delivery: nil,
          passenger_name: nil,
          passengers: nil,
          segments: nil,
          ticket_number: nil
        ); end
      end
      class FlightDatum < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Name of affiliate partner.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Code provided by the company to a travel agent authorizing ticket issuance.
          sig { returns(T.nilable(String)) }
          def travel_authorization_code; end
          sig { params(_travel_authorization_code: T.nilable(String)).returns(T.nilable(String)) }
          def travel_authorization_code=(_travel_authorization_code); end
          sig {
            params(code: T.nilable(String), name: T.nilable(String), travel_authorization_code: T.nilable(String)).void
           }
          def initialize(code: nil, name: nil, travel_authorization_code: nil); end
        end
        class Insurance < ::Stripe::RequestParams
          # Insurance cost.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Insurance currency.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Insurance company name.
          sig { returns(T.nilable(String)) }
          def insurance_company_name; end
          sig { params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String)) }
          def insurance_company_name=(_insurance_company_name); end
          # Type of insurance.
          sig { returns(String) }
          def insurance_type; end
          sig { params(_insurance_type: String).returns(String) }
          def insurance_type=(_insurance_type); end
          sig {
            params(amount: Integer, currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: String).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          ); end
        end
        class Passenger < ::Stripe::RequestParams
          # Passenger's full name.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Segment < ::Stripe::RequestParams
          class Arrival < ::Stripe::RequestParams
            # Arrival airport IATA code.
            sig { returns(String) }
            def airport; end
            sig { params(_airport: String).returns(String) }
            def airport=(_airport); end
            # Arrival date/time.
            sig { returns(T.nilable(Integer)) }
            def arrives_at; end
            sig { params(_arrives_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def arrives_at=(_arrives_at); end
            # Arrival city.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Arrival country.
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            sig {
              params(airport: String, arrives_at: T.nilable(Integer), city: T.nilable(String), country: T.nilable(String)).void
             }
            def initialize(airport: nil, arrives_at: nil, city: nil, country: nil); end
          end
          class Departure < ::Stripe::RequestParams
            # Departure airport IATA code.
            sig { returns(String) }
            def airport; end
            sig { params(_airport: String).returns(String) }
            def airport=(_airport); end
            # Departure city.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Departure country.
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Departure date/time.
            sig { returns(Integer) }
            def departs_at; end
            sig { params(_departs_at: Integer).returns(Integer) }
            def departs_at=(_departs_at); end
            sig {
              params(airport: String, city: T.nilable(String), country: T.nilable(String), departs_at: Integer).void
             }
            def initialize(airport: nil, city: nil, country: nil, departs_at: nil); end
          end
          # Segment fare amount.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # Arrival details.
          sig { returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Arrival) }
          def arrival; end
          sig {
            params(_arrival: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Arrival).returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Arrival)
           }
          def arrival=(_arrival); end
          # Airline carrier code.
          sig { returns(String) }
          def carrier_code; end
          sig { params(_carrier_code: String).returns(String) }
          def carrier_code=(_carrier_code); end
          # Carrier name.
          sig { returns(T.nilable(String)) }
          def carrier_name; end
          sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
          def carrier_name=(_carrier_name); end
          # Segment currency.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Departure details.
          sig {
            returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Departure)
           }
          def departure; end
          sig {
            params(_departure: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Departure).returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Departure)
           }
          def departure=(_departure); end
          # Exchange ticket number.
          sig { returns(T.nilable(String)) }
          def exchange_ticket_number; end
          sig { params(_exchange_ticket_number: T.nilable(String)).returns(T.nilable(String)) }
          def exchange_ticket_number=(_exchange_ticket_number); end
          # Fare basis code.
          sig { returns(T.nilable(String)) }
          def fare_basis_code; end
          sig { params(_fare_basis_code: T.nilable(String)).returns(T.nilable(String)) }
          def fare_basis_code=(_fare_basis_code); end
          # Additional fees.
          sig { returns(T.nilable(Integer)) }
          def fees; end
          sig { params(_fees: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def fees=(_fees); end
          # Flight number.
          sig { returns(T.nilable(String)) }
          def flight_number; end
          sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
          def flight_number=(_flight_number); end
          # Stopover indicator.
          sig { returns(T.nilable(T::Boolean)) }
          def is_stop_over_indicator; end
          sig {
            params(_is_stop_over_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def is_stop_over_indicator=(_is_stop_over_indicator); end
          # Refundable ticket indicator.
          sig { returns(T.nilable(T::Boolean)) }
          def refundable; end
          sig { params(_refundable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def refundable=(_refundable); end
          # Class of service.
          sig { returns(String) }
          def service_class; end
          sig { params(_service_class: String).returns(String) }
          def service_class=(_service_class); end
          # Tax amount for segment.
          sig { returns(T.nilable(Integer)) }
          def tax_amount; end
          sig { params(_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def tax_amount=(_tax_amount); end
          # Ticket number.
          sig { returns(T.nilable(String)) }
          def ticket_number; end
          sig { params(_ticket_number: T.nilable(String)).returns(T.nilable(String)) }
          def ticket_number=(_ticket_number); end
          sig {
            params(amount: T.nilable(Integer), arrival: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Arrival, carrier_code: String, carrier_name: T.nilable(String), currency: T.nilable(String), departure: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment::Departure, exchange_ticket_number: T.nilable(String), fare_basis_code: T.nilable(String), fees: T.nilable(Integer), flight_number: T.nilable(String), is_stop_over_indicator: T.nilable(T::Boolean), refundable: T.nilable(T::Boolean), service_class: String, tax_amount: T.nilable(Integer), ticket_number: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            arrival: nil,
            carrier_code: nil,
            carrier_name: nil,
            currency: nil,
            departure: nil,
            exchange_ticket_number: nil,
            fare_basis_code: nil,
            fees: nil,
            flight_number: nil,
            is_stop_over_indicator: nil,
            refundable: nil,
            service_class: nil,
            tax_amount: nil,
            ticket_number: nil
          ); end
        end
        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            sig { returns(T.nilable(String)) }
            def corporate_client_code; end
            sig { params(_corporate_client_code: T.nilable(String)).returns(T.nilable(String)) }
            def corporate_client_code=(_corporate_client_code); end
            sig { params(corporate_client_code: T.nilable(String)).void }
            def initialize(corporate_client_code: nil); end
          end
          class ExtraCharge < ::Stripe::RequestParams
            # Amount of additional charges.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Type of additional charges.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            sig { params(amount: T.nilable(Integer), type: T.nilable(String)).void }
            def initialize(amount: nil, type: nil); end
          end
          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount.
              sig { returns(T.nilable(Integer)) }
              def amount; end
              sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def amount=(_amount); end
              # Tax rate.
              sig { returns(T.nilable(Integer)) }
              def rate; end
              sig { params(_rate: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def rate=(_rate); end
              # Type of tax.
              sig { returns(T.nilable(String)) }
              def type; end
              sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
              def type=(_type); end
              sig {
                params(amount: T.nilable(Integer), rate: T.nilable(Integer), type: T.nilable(String)).void
               }
              def initialize(amount: nil, rate: nil, type: nil); end
            end
            # Array of tax details.
            sig {
              returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax::Tax]))
             }
            def taxes; end
            sig {
              params(_taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax::Tax])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax::Tax]))
             }
            def taxes=(_taxes); end
            sig {
              params(taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax::Tax])).void
             }
            def initialize(taxes: nil); end
          end
          # Total flight amount.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Reason for credit.
          sig { returns(T.nilable(String)) }
          def credit_reason; end
          sig { params(_credit_reason: T.nilable(String)).returns(T.nilable(String)) }
          def credit_reason=(_credit_reason); end
          # Total currency.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Discount details.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Discounts))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Discounts)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Discounts))
           }
          def discounts=(_discounts); end
          # Additional charges.
          sig {
            returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::ExtraCharge]))
           }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::ExtraCharge])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::ExtraCharge]))
           }
          def extra_charges=(_extra_charges); end
          # Tax breakdown.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax))
           }
          def tax=(_tax); end
          sig {
            params(amount: Integer, credit_reason: T.nilable(String), currency: T.nilable(String), discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Discounts), extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::ExtraCharge]), tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total::Tax)).void
           }
          def initialize(
            amount: nil,
            credit_reason: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            tax: nil
          ); end
        end
        # Affiliate details if applicable.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Affiliate))
         }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Affiliate))
         }
        def affiliate=(_affiliate); end
        # Reservation reference.
        sig { returns(T.nilable(String)) }
        def booking_number; end
        sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
        def booking_number=(_booking_number); end
        # Computerized reservation system used to make the reservation and purchase the ticket.
        sig { returns(T.nilable(String)) }
        def computerized_reservation_system; end
        sig {
          params(_computerized_reservation_system: T.nilable(String)).returns(T.nilable(String))
         }
        def computerized_reservation_system=(_computerized_reservation_system); end
        # Ticket restrictions.
        sig { returns(T.nilable(String)) }
        def endorsements_and_restrictions; end
        sig { params(_endorsements_and_restrictions: T.nilable(String)).returns(T.nilable(String)) }
        def endorsements_and_restrictions=(_endorsements_and_restrictions); end
        # List of insurances.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Insurance]))
         }
        def insurances; end
        sig {
          params(_insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Insurance])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Insurance]))
         }
        def insurances=(_insurances); end
        # List of passengers.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Passenger]))
         }
        def passengers; end
        sig {
          params(_passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Passenger])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Passenger]))
         }
        def passengers=(_passengers); end
        # List of flight segments.
        sig { returns(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment]) }
        def segments; end
        sig {
          params(_segments: T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment]).returns(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment])
         }
        def segments=(_segments); end
        # Electronic ticket indicator.
        sig { returns(T.nilable(T::Boolean)) }
        def ticket_electronically_issued_indicator; end
        sig {
          params(_ticket_electronically_issued_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def ticket_electronically_issued_indicator=(_ticket_electronically_issued_indicator); end
        # Total cost breakdown.
        sig { returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total) }
        def total; end
        sig {
          params(_total: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total).returns(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total)
         }
        def total=(_total); end
        # Type of flight transaction.
        sig { returns(T.nilable(String)) }
        def transaction_type; end
        sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
        def transaction_type=(_transaction_type); end
        sig {
          params(affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Affiliate), booking_number: T.nilable(String), computerized_reservation_system: T.nilable(String), endorsements_and_restrictions: T.nilable(String), insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Insurance]), passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Passenger]), segments: T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Segment], ticket_electronically_issued_indicator: T.nilable(T::Boolean), total: PaymentIntentCaptureParams::PaymentDetails::FlightDatum::Total, transaction_type: T.nilable(String)).void
         }
        def initialize(
          affiliate: nil,
          booking_number: nil,
          computerized_reservation_system: nil,
          endorsements_and_restrictions: nil,
          insurances: nil,
          passengers: nil,
          segments: nil,
          ticket_electronically_issued_indicator: nil,
          total: nil,
          transaction_type: nil
        ); end
      end
      class Lodging < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
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
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
            # The email of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The name of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # The phone number of the recipient the ticket is delivered to.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(email: nil, name: nil, phone: nil); end
          end
          # The delivery method for the payment
          sig { returns(T.nilable(String)) }
          def mode; end
          sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
          def mode=(_mode); end
          # Details of the recipient.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery::Recipient))
           }
          def recipient; end
          sig {
            params(_recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery::Recipient)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery::Recipient))
           }
          def recipient=(_recipient); end
          sig {
            params(mode: T.nilable(String), recipient: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery::Recipient)).void
           }
          def initialize(mode: nil, recipient: nil); end
        end
        class Passenger < ::Stripe::RequestParams
          # Full name of the person or entity on the lodging reservation.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        # The lodging location's address.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Address)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Address))
         }
        def address=(_address); end
        # The number of adults on the booking
        sig { returns(T.nilable(Integer)) }
        def adults; end
        sig { params(_adults: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def adults=(_adults); end
        # Affiliate details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Affiliate)) }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Affiliate))
         }
        def affiliate=(_affiliate); end
        # The booking number associated with the lodging reservation.
        sig { returns(T.nilable(String)) }
        def booking_number; end
        sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
        def booking_number=(_booking_number); end
        # The lodging category
        sig { returns(T.nilable(String)) }
        def category; end
        sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
        def category=(_category); end
        # Lodging check-in time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def checkin_at; end
        sig { params(_checkin_at: Integer).returns(Integer) }
        def checkin_at=(_checkin_at); end
        # Lodging check-out time. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def checkout_at; end
        sig { params(_checkout_at: Integer).returns(Integer) }
        def checkout_at=(_checkout_at); end
        # The customer service phone number of the lodging company.
        sig { returns(T.nilable(String)) }
        def customer_service_phone_number; end
        sig { params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def customer_service_phone_number=(_customer_service_phone_number); end
        # The daily lodging room rate.
        sig { returns(T.nilable(Integer)) }
        def daily_room_rate_amount; end
        sig { params(_daily_room_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def daily_room_rate_amount=(_daily_room_rate_amount); end
        # Delivery details for this purchase.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery)) }
        def delivery; end
        sig {
          params(_delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery))
         }
        def delivery=(_delivery); end
        # List of additional charges being billed.
        sig { returns(T.nilable(T::Array[String])) }
        def extra_charges; end
        sig {
          params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def extra_charges=(_extra_charges); end
        # Indicates whether the lodging location is compliant with the Fire Safety Act.
        sig { returns(T.nilable(T::Boolean)) }
        def fire_safety_act_compliance; end
        sig {
          params(_fire_safety_act_compliance: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def fire_safety_act_compliance=(_fire_safety_act_compliance); end
        # The name of the lodging location.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Indicates if the customer did not keep their booking while failing to cancel the reservation.
        sig { returns(T.nilable(T::Boolean)) }
        def no_show; end
        sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def no_show=(_no_show); end
        # The number of rooms on the booking
        sig { returns(T.nilable(Integer)) }
        def number_of_rooms; end
        sig { params(_number_of_rooms: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def number_of_rooms=(_number_of_rooms); end
        # The details of the passengers in the travel reservation
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Lodging::Passenger]))
         }
        def passengers; end
        sig {
          params(_passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Lodging::Passenger])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Lodging::Passenger]))
         }
        def passengers=(_passengers); end
        # The phone number of the lodging location.
        sig { returns(T.nilable(String)) }
        def property_phone_number; end
        sig { params(_property_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def property_phone_number=(_property_phone_number); end
        # The room class for this purchase.
        sig { returns(T.nilable(String)) }
        def room_class; end
        sig { params(_room_class: T.nilable(String)).returns(T.nilable(String)) }
        def room_class=(_room_class); end
        # The number of room nights
        sig { returns(T.nilable(Integer)) }
        def room_nights; end
        sig { params(_room_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def room_nights=(_room_nights); end
        # The total tax amount associating with the room reservation.
        sig { returns(T.nilable(Integer)) }
        def total_room_tax_amount; end
        sig { params(_total_room_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def total_room_tax_amount=(_total_room_tax_amount); end
        # The total tax amount
        sig { returns(T.nilable(Integer)) }
        def total_tax_amount; end
        sig { params(_total_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def total_tax_amount=(_total_tax_amount); end
        sig {
          params(address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Address), adults: T.nilable(Integer), affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Affiliate), booking_number: T.nilable(String), category: T.nilable(String), checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: T.nilable(String), daily_room_rate_amount: T.nilable(Integer), delivery: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging::Delivery), extra_charges: T.nilable(T::Array[String]), fire_safety_act_compliance: T.nilable(T::Boolean), name: T.nilable(String), no_show: T.nilable(T::Boolean), number_of_rooms: T.nilable(Integer), passengers: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::Lodging::Passenger]), property_phone_number: T.nilable(String), room_class: T.nilable(String), room_nights: T.nilable(Integer), total_room_tax_amount: T.nilable(Integer), total_tax_amount: T.nilable(Integer)).void
         }
        def initialize(
          address: nil,
          adults: nil,
          affiliate: nil,
          booking_number: nil,
          category: nil,
          checkin_at: nil,
          checkout_at: nil,
          customer_service_phone_number: nil,
          daily_room_rate_amount: nil,
          delivery: nil,
          extra_charges: nil,
          fire_safety_act_compliance: nil,
          name: nil,
          no_show: nil,
          number_of_rooms: nil,
          passengers: nil,
          property_phone_number: nil,
          room_class: nil,
          room_nights: nil,
          total_room_tax_amount: nil,
          total_tax_amount: nil
        ); end
      end
      class LodgingDatum < ::Stripe::RequestParams
        class Accommodation < ::Stripe::RequestParams
          # Type of accommodation.
          sig { returns(T.nilable(String)) }
          def accommodation_type; end
          sig { params(_accommodation_type: T.nilable(String)).returns(T.nilable(String)) }
          def accommodation_type=(_accommodation_type); end
          # Bed type.
          sig { returns(T.nilable(String)) }
          def bed_type; end
          sig { params(_bed_type: T.nilable(String)).returns(T.nilable(String)) }
          def bed_type=(_bed_type); end
          # Daily accommodation rate in cents.
          sig { returns(T.nilable(Integer)) }
          def daily_rate_amount; end
          sig { params(_daily_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def daily_rate_amount=(_daily_rate_amount); end
          # Number of nights.
          sig { returns(T.nilable(Integer)) }
          def nights; end
          sig { params(_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def nights=(_nights); end
          # Number of rooms, cabanas, apartments, and so on.
          sig { returns(T.nilable(Integer)) }
          def number_of_rooms; end
          sig { params(_number_of_rooms: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def number_of_rooms=(_number_of_rooms); end
          # Rate type.
          sig { returns(T.nilable(String)) }
          def rate_type; end
          sig { params(_rate_type: T.nilable(String)).returns(T.nilable(String)) }
          def rate_type=(_rate_type); end
          # Whether smoking is allowed.
          sig { returns(T.nilable(T::Boolean)) }
          def smoking_indicator; end
          sig { params(_smoking_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def smoking_indicator=(_smoking_indicator); end
          sig {
            params(accommodation_type: T.nilable(String), bed_type: T.nilable(String), daily_rate_amount: T.nilable(Integer), nights: T.nilable(Integer), number_of_rooms: T.nilable(Integer), rate_type: T.nilable(String), smoking_indicator: T.nilable(T::Boolean)).void
           }
          def initialize(
            accommodation_type: nil,
            bed_type: nil,
            daily_rate_amount: nil,
            nights: nil,
            number_of_rooms: nil,
            rate_type: nil,
            smoking_indicator: nil
          ); end
        end
        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Affiliate partner name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(code: T.nilable(String), name: T.nilable(String)).void }
          def initialize(code: nil, name: nil); end
        end
        class Guest < ::Stripe::RequestParams
          # Guest's full name.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class Host < ::Stripe::RequestParams
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
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
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
          # Address of the host.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host::Address)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host::Address))
           }
          def address=(_address); end
          # Host's country of domicile.
          sig { returns(T.nilable(String)) }
          def country_of_domicile; end
          sig { params(_country_of_domicile: T.nilable(String)).returns(T.nilable(String)) }
          def country_of_domicile=(_country_of_domicile); end
          # Reference number for the host.
          sig { returns(T.nilable(String)) }
          def host_reference; end
          sig { params(_host_reference: T.nilable(String)).returns(T.nilable(String)) }
          def host_reference=(_host_reference); end
          # Type of host.
          sig { returns(T.nilable(String)) }
          def host_type; end
          sig { params(_host_type: T.nilable(String)).returns(T.nilable(String)) }
          def host_type=(_host_type); end
          # Name of the lodging property or host.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Total number of reservations for the host.
          sig { returns(T.nilable(Integer)) }
          def number_of_reservations; end
          sig { params(_number_of_reservations: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def number_of_reservations=(_number_of_reservations); end
          # Property phone number.
          sig { returns(T.nilable(String)) }
          def property_phone_number; end
          sig { params(_property_phone_number: T.nilable(String)).returns(T.nilable(String)) }
          def property_phone_number=(_property_phone_number); end
          # Host's registration date.
          sig { returns(T.nilable(Integer)) }
          def registered_at; end
          sig { params(_registered_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def registered_at=(_registered_at); end
          sig {
            params(address: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host::Address), country_of_domicile: T.nilable(String), host_reference: T.nilable(String), host_type: T.nilable(String), name: T.nilable(String), number_of_reservations: T.nilable(Integer), property_phone_number: T.nilable(String), registered_at: T.nilable(Integer)).void
           }
          def initialize(
            address: nil,
            country_of_domicile: nil,
            host_reference: nil,
            host_type: nil,
            name: nil,
            number_of_reservations: nil,
            property_phone_number: nil,
            registered_at: nil
          ); end
        end
        class Insurance < ::Stripe::RequestParams
          # Price of the insurance coverage in cents.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Currency of the insurance amount.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Name of the insurance company.
          sig { returns(T.nilable(String)) }
          def insurance_company_name; end
          sig { params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String)) }
          def insurance_company_name=(_insurance_company_name); end
          # Type of insurance coverage.
          sig { returns(String) }
          def insurance_type; end
          sig { params(_insurance_type: String).returns(String) }
          def insurance_type=(_insurance_type); end
          sig {
            params(amount: Integer, currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: String).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          ); end
        end
        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            sig { returns(T.nilable(String)) }
            def corporate_client_code; end
            sig { params(_corporate_client_code: T.nilable(String)).returns(T.nilable(String)) }
            def corporate_client_code=(_corporate_client_code); end
            # Coupon code.
            sig { returns(T.nilable(String)) }
            def coupon; end
            sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
            def coupon=(_coupon); end
            sig { params(corporate_client_code: T.nilable(String), coupon: T.nilable(String)).void }
            def initialize(corporate_client_code: nil, coupon: nil); end
          end
          class ExtraCharge < ::Stripe::RequestParams
            # Amount of the extra charge in cents.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Type of extra charge.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            sig { params(amount: T.nilable(Integer), type: T.nilable(String)).void }
            def initialize(amount: nil, type: nil); end
          end
          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount in cents.
              sig { returns(T.nilable(Integer)) }
              def amount; end
              sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def amount=(_amount); end
              # Tax rate.
              sig { returns(T.nilable(Integer)) }
              def rate; end
              sig { params(_rate: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def rate=(_rate); end
              # Type of tax applied.
              sig { returns(T.nilable(String)) }
              def type; end
              sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
              def type=(_type); end
              sig {
                params(amount: T.nilable(Integer), rate: T.nilable(Integer), type: T.nilable(String)).void
               }
              def initialize(amount: nil, rate: nil, type: nil); end
            end
            # Indicates whether the transaction is tax exempt.
            sig { returns(T.nilable(T::Boolean)) }
            def tax_exempt_indicator; end
            sig {
              params(_tax_exempt_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def tax_exempt_indicator=(_tax_exempt_indicator); end
            # Tax details.
            sig {
              returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax::Tax]))
             }
            def taxes; end
            sig {
              params(_taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax::Tax])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax::Tax]))
             }
            def taxes=(_taxes); end
            sig {
              params(tax_exempt_indicator: T.nilable(T::Boolean), taxes: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax::Tax])).void
             }
            def initialize(tax_exempt_indicator: nil, taxes: nil); end
          end
          # Total price of the lodging reservation in cents.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Cash advances in cents.
          sig { returns(T.nilable(Integer)) }
          def cash_advances; end
          sig { params(_cash_advances: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def cash_advances=(_cash_advances); end
          # Currency of the total amount.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Discount details for the lodging.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Discounts))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Discounts)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Discounts))
           }
          def discounts=(_discounts); end
          # Additional charges for the lodging.
          sig {
            returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::ExtraCharge]))
           }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::ExtraCharge])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::ExtraCharge]))
           }
          def extra_charges=(_extra_charges); end
          # Prepaid amount in cents.
          sig { returns(T.nilable(Integer)) }
          def prepaid_amount; end
          sig { params(_prepaid_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def prepaid_amount=(_prepaid_amount); end
          # Tax breakdown for the lodging reservation.
          sig {
            returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax))
           }
          def tax=(_tax); end
          sig {
            params(amount: Integer, cash_advances: T.nilable(Integer), currency: T.nilable(String), discounts: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Discounts), extra_charges: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::ExtraCharge]), prepaid_amount: T.nilable(Integer), tax: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total::Tax)).void
           }
          def initialize(
            amount: nil,
            cash_advances: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            prepaid_amount: nil,
            tax: nil
          ); end
        end
        # Accommodation details for the lodging.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Accommodation))
         }
        def accommodation; end
        sig {
          params(_accommodation: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Accommodation)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Accommodation))
         }
        def accommodation=(_accommodation); end
        # Affiliate details if applicable.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Affiliate))
         }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Affiliate))
         }
        def affiliate=(_affiliate); end
        # Booking confirmation number for the lodging.
        sig { returns(T.nilable(String)) }
        def booking_number; end
        sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
        def booking_number=(_booking_number); end
        # Check-in date.
        sig { returns(Integer) }
        def checkin_at; end
        sig { params(_checkin_at: Integer).returns(Integer) }
        def checkin_at=(_checkin_at); end
        # Check-out date.
        sig { returns(Integer) }
        def checkout_at; end
        sig { params(_checkout_at: Integer).returns(Integer) }
        def checkout_at=(_checkout_at); end
        # Customer service phone number for the lodging company.
        sig { returns(T.nilable(String)) }
        def customer_service_phone_number; end
        sig { params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String)) }
        def customer_service_phone_number=(_customer_service_phone_number); end
        # Whether the lodging is compliant with any hotel fire safety regulations.
        sig { returns(T.nilable(T::Boolean)) }
        def fire_safety_act_compliance_indicator; end
        sig {
          params(_fire_safety_act_compliance_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def fire_safety_act_compliance_indicator=(_fire_safety_act_compliance_indicator); end
        # List of guests for the lodging.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Guest]))
         }
        def guests; end
        sig {
          params(_guests: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Guest])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Guest]))
         }
        def guests=(_guests); end
        # Host details for the lodging.
        sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host)) }
        def host; end
        sig {
          params(_host: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host))
         }
        def host=(_host); end
        # List of insurances for the lodging.
        sig {
          returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Insurance]))
         }
        def insurances; end
        sig {
          params(_insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Insurance])).returns(T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Insurance]))
         }
        def insurances=(_insurances); end
        # Whether the renter is a no-show.
        sig { returns(T.nilable(T::Boolean)) }
        def no_show_indicator; end
        sig { params(_no_show_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def no_show_indicator=(_no_show_indicator); end
        # Renter ID number for the lodging.
        sig { returns(T.nilable(String)) }
        def renter_id_number; end
        sig { params(_renter_id_number: T.nilable(String)).returns(T.nilable(String)) }
        def renter_id_number=(_renter_id_number); end
        # Renter name for the lodging.
        sig { returns(T.nilable(String)) }
        def renter_name; end
        sig { params(_renter_name: T.nilable(String)).returns(T.nilable(String)) }
        def renter_name=(_renter_name); end
        # Total details for the lodging.
        sig { returns(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total) }
        def total; end
        sig {
          params(_total: PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total).returns(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total)
         }
        def total=(_total); end
        sig {
          params(accommodation: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Accommodation), affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Affiliate), booking_number: T.nilable(String), checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: T.nilable(String), fire_safety_act_compliance_indicator: T.nilable(T::Boolean), guests: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Guest]), host: T.nilable(PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Host), insurances: T.nilable(T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Insurance]), no_show_indicator: T.nilable(T::Boolean), renter_id_number: T.nilable(String), renter_name: T.nilable(String), total: PaymentIntentCaptureParams::PaymentDetails::LodgingDatum::Total).void
         }
        def initialize(
          accommodation: nil,
          affiliate: nil,
          booking_number: nil,
          checkin_at: nil,
          checkout_at: nil,
          customer_service_phone_number: nil,
          fire_safety_act_compliance_indicator: nil,
          guests: nil,
          host: nil,
          insurances: nil,
          no_show_indicator: nil,
          renter_id_number: nil,
          renter_name: nil,
          total: nil
        ); end
      end
      class Subscription < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig { params(name: String).void }
          def initialize(name: nil); end
        end
        class BillingInterval < ::Stripe::RequestParams
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          sig { returns(Integer) }
          def count; end
          sig { params(_count: Integer).returns(Integer) }
          def count=(_count); end
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          sig { params(count: Integer, interval: String).void }
          def initialize(count: nil, interval: nil); end
        end
        # Affiliate details for this purchase.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::Affiliate))
         }
        def affiliate; end
        sig {
          params(_affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::Affiliate)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::Affiliate))
         }
        def affiliate=(_affiliate); end
        # Info whether the subscription will be auto renewed upon expiry.
        sig { returns(T.nilable(T::Boolean)) }
        def auto_renewal; end
        sig { params(_auto_renewal: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def auto_renewal=(_auto_renewal); end
        # Subscription billing details for this purchase.
        sig {
          returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::BillingInterval))
         }
        def billing_interval; end
        sig {
          params(_billing_interval: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::BillingInterval)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::BillingInterval))
         }
        def billing_interval=(_billing_interval); end
        # Subscription end time. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def ends_at; end
        sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def ends_at=(_ends_at); end
        # Name of the product on subscription. e.g. Apple Music Subscription
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Subscription start time. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def starts_at; end
        sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def starts_at=(_starts_at); end
        sig {
          params(affiliate: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::Affiliate), auto_renewal: T.nilable(T::Boolean), billing_interval: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription::BillingInterval), ends_at: T.nilable(Integer), name: String, starts_at: T.nilable(Integer)).void
         }
        def initialize(
          affiliate: nil,
          auto_renewal: nil,
          billing_interval: nil,
          ends_at: nil,
          name: nil,
          starts_at: nil
        ); end
      end
      # Car rental details for this PaymentIntent.
      sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental)) }
      def car_rental; end
      sig {
        params(_car_rental: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental))
       }
      def car_rental=(_car_rental); end
      # Car rental data for this PaymentIntent.
      sig {
        returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum])))
       }
      def car_rental_data; end
      sig {
        params(_car_rental_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum]))).returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum])))
       }
      def car_rental_data=(_car_rental_data); end
      # A unique value to identify the customer. This field is available only for card payments.
      #
      # This field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
      sig { returns(T.nilable(String)) }
      def customer_reference; end
      sig { params(_customer_reference: T.nilable(String)).returns(T.nilable(String)) }
      def customer_reference=(_customer_reference); end
      # Event details for this PaymentIntent
      sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails)) }
      def event_details; end
      sig {
        params(_event_details: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails))
       }
      def event_details=(_event_details); end
      # Flight reservation details for this PaymentIntent
      sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight)) }
      def flight; end
      sig {
        params(_flight: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight))
       }
      def flight=(_flight); end
      # Flight data for this PaymentIntent.
      sig {
        returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum])))
       }
      def flight_data; end
      sig {
        params(_flight_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum]))).returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum])))
       }
      def flight_data=(_flight_data); end
      # Lodging reservation details for this PaymentIntent
      sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging)) }
      def lodging; end
      sig {
        params(_lodging: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging))
       }
      def lodging=(_lodging); end
      # Lodging data for this PaymentIntent.
      sig {
        returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum])))
       }
      def lodging_data; end
      sig {
        params(_lodging_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum]))).returns(T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum])))
       }
      def lodging_data=(_lodging_data); end
      # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
      #
      # Required when the Payment Method Types array contains `card`, including when [automatic_payment_methods.enabled](/api/payment_intents/create#create_payment_intent-automatic_payment_methods-enabled) is set to `true`.
      #
      # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks. For Klarna, this field is truncated to 255 characters and is visible to customers when they view the order in the Klarna app.
      sig { returns(T.nilable(String)) }
      def order_reference; end
      sig { params(_order_reference: T.nilable(String)).returns(T.nilable(String)) }
      def order_reference=(_order_reference); end
      # Subscription details for this PaymentIntent
      sig { returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription)) }
      def subscription; end
      sig {
        params(_subscription: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription)).returns(T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription))
       }
      def subscription=(_subscription); end
      sig {
        params(car_rental: T.nilable(PaymentIntentCaptureParams::PaymentDetails::CarRental), car_rental_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::CarRentalDatum])), customer_reference: T.nilable(String), event_details: T.nilable(PaymentIntentCaptureParams::PaymentDetails::EventDetails), flight: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Flight), flight_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::FlightDatum])), lodging: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Lodging), lodging_data: T.nilable(T.any(String, T::Array[PaymentIntentCaptureParams::PaymentDetails::LodgingDatum])), order_reference: T.nilable(String), subscription: T.nilable(PaymentIntentCaptureParams::PaymentDetails::Subscription)).void
       }
      def initialize(
        car_rental: nil,
        car_rental_data: nil,
        customer_reference: nil,
        event_details: nil,
        flight: nil,
        flight_data: nil,
        lodging: nil,
        lodging_data: nil,
        order_reference: nil,
        subscription: nil
      ); end
    end
    class TransferData < ::Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      sig { params(amount: T.nilable(Integer)).void }
      def initialize(amount: nil); end
    end
    # Provides industry-specific information about the amount.
    sig { returns(T.nilable(PaymentIntentCaptureParams::AmountDetails)) }
    def amount_details; end
    sig {
      params(_amount_details: T.nilable(PaymentIntentCaptureParams::AmountDetails)).returns(T.nilable(PaymentIntentCaptureParams::AmountDetails))
     }
    def amount_details=(_amount_details); end
    # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
    sig { returns(T.nilable(Integer)) }
    def amount_to_capture; end
    sig { params(_amount_to_capture: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def amount_to_capture=(_amount_to_capture); end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def application_fee_amount=(_application_fee_amount); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
    sig { returns(T.nilable(T::Boolean)) }
    def final_capture; end
    sig { params(_final_capture: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def final_capture=(_final_capture); end
    # Automations to be run during the PaymentIntent lifecycle
    sig { returns(T.nilable(PaymentIntentCaptureParams::Hooks)) }
    def hooks; end
    sig {
      params(_hooks: T.nilable(PaymentIntentCaptureParams::Hooks)).returns(T.nilable(PaymentIntentCaptureParams::Hooks))
     }
    def hooks=(_hooks); end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # Provides industry-specific information about the charge.
    sig { returns(T.nilable(T.any(String, PaymentIntentCaptureParams::PaymentDetails))) }
    def payment_details; end
    sig {
      params(_payment_details: T.nilable(T.any(String, PaymentIntentCaptureParams::PaymentDetails))).returns(T.nilable(T.any(String, PaymentIntentCaptureParams::PaymentDetails)))
     }
    def payment_details=(_payment_details); end
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
    def statement_descriptor=(_statement_descriptor); end
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    sig { returns(T.nilable(String)) }
    def statement_descriptor_suffix; end
    sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
    def statement_descriptor_suffix=(_statement_descriptor_suffix); end
    # The parameters that you can use to automatically create a transfer after the payment
    # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(PaymentIntentCaptureParams::TransferData)) }
    def transfer_data; end
    sig {
      params(_transfer_data: T.nilable(PaymentIntentCaptureParams::TransferData)).returns(T.nilable(PaymentIntentCaptureParams::TransferData))
     }
    def transfer_data=(_transfer_data); end
    sig {
      params(amount_details: T.nilable(PaymentIntentCaptureParams::AmountDetails), amount_to_capture: T.nilable(Integer), application_fee_amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), final_capture: T.nilable(T::Boolean), hooks: T.nilable(PaymentIntentCaptureParams::Hooks), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_details: T.nilable(T.any(String, PaymentIntentCaptureParams::PaymentDetails)), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(PaymentIntentCaptureParams::TransferData)).void
     }
    def initialize(
      amount_details: nil,
      amount_to_capture: nil,
      application_fee_amount: nil,
      expand: nil,
      final_capture: nil,
      hooks: nil,
      metadata: nil,
      payment_details: nil,
      statement_descriptor: nil,
      statement_descriptor_suffix: nil,
      transfer_data: nil
    ); end
  end
end