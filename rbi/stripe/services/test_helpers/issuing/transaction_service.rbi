# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class TransactionService < StripeService
        class RefundParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :refund_amount
          sig {
            params(expand: T.nilable(T::Array[String]), refund_amount: T.nilable(Integer)).void
           }
          def initialize(expand: nil, refund_amount: nil); end
        end
        class CreateForceCaptureParams < Stripe::RequestParams
          class MerchantData < Stripe::RequestParams
            # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
            sig { returns(T.nilable(String)) }
            attr_accessor :category
            # City where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Country where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Name of the seller
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
            sig { returns(T.nilable(String)) }
            attr_accessor :network_id
            # Postal code where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            # An ID assigned by the seller to the location of the sale.
            sig { returns(T.nilable(String)) }
            attr_accessor :terminal_id
            # URL provided by the merchant on a 3DS request
            sig { returns(T.nilable(String)) }
            attr_accessor :url
            sig {
              params(category: T.nilable(String), city: T.nilable(String), country: T.nilable(String), name: T.nilable(String), network_id: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), terminal_id: T.nilable(String), url: T.nilable(String)).void
             }
            def initialize(
              category: nil,
              city: nil,
              country: nil,
              name: nil,
              network_id: nil,
              postal_code: nil,
              state: nil,
              terminal_id: nil,
              url: nil
            ); end
          end
          class PurchaseDetails < Stripe::RequestParams
            class Fleet < Stripe::RequestParams
              class CardholderPromptData < Stripe::RequestParams
                # Driver ID.
                sig { returns(T.nilable(String)) }
                attr_accessor :driver_id
                # Odometer reading.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :odometer
                # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
                sig { returns(T.nilable(String)) }
                attr_accessor :unspecified_id
                # User ID.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_id
                # Vehicle number.
                sig { returns(T.nilable(String)) }
                attr_accessor :vehicle_number
                sig {
                  params(driver_id: T.nilable(String), odometer: T.nilable(Integer), unspecified_id: T.nilable(String), user_id: T.nilable(String), vehicle_number: T.nilable(String)).void
                 }
                def initialize(
                  driver_id: nil,
                  odometer: nil,
                  unspecified_id: nil,
                  user_id: nil,
                  vehicle_number: nil
                ); end
              end
              class ReportedBreakdown < Stripe::RequestParams
                class Fuel < Stripe::RequestParams
                  # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :gross_amount_decimal
                  sig { params(gross_amount_decimal: T.nilable(String)).void }
                  def initialize(gross_amount_decimal: nil); end
                end
                class NonFuel < Stripe::RequestParams
                  # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :gross_amount_decimal
                  sig { params(gross_amount_decimal: T.nilable(String)).void }
                  def initialize(gross_amount_decimal: nil); end
                end
                class Tax < Stripe::RequestParams
                  # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :local_amount_decimal
                  # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :national_amount_decimal
                  sig {
                    params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                   }
                  def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
                end
                # Breakdown of fuel portion of the purchase.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
                 }
                attr_accessor :fuel
                # Breakdown of non-fuel portion of the purchase.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
                 }
                attr_accessor :non_fuel
                # Information about tax included in this transaction.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
                 }
                attr_accessor :tax
                sig {
                  params(fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
                 }
                def initialize(fuel: nil, non_fuel: nil, tax: nil); end
              end
              # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
               }
              attr_accessor :cardholder_prompt_data
              # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
              sig { returns(T.nilable(String)) }
              attr_accessor :purchase_type
              # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
               }
              attr_accessor :reported_breakdown
              # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
              sig { returns(T.nilable(String)) }
              attr_accessor :service_type
              sig {
                params(cardholder_prompt_data: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
               }
              def initialize(
                cardholder_prompt_data: nil,
                purchase_type: nil,
                reported_breakdown: nil,
                service_type: nil
              ); end
            end
            class Flight < Stripe::RequestParams
              class Segment < Stripe::RequestParams
                # The three-letter IATA airport code of the flight's destination.
                sig { returns(T.nilable(String)) }
                attr_accessor :arrival_airport_code
                # The airline carrier code.
                sig { returns(T.nilable(String)) }
                attr_accessor :carrier
                # The three-letter IATA airport code that the flight departed from.
                sig { returns(T.nilable(String)) }
                attr_accessor :departure_airport_code
                # The flight number.
                sig { returns(T.nilable(String)) }
                attr_accessor :flight_number
                # The flight's service class.
                sig { returns(T.nilable(String)) }
                attr_accessor :service_class
                # Whether a stopover is allowed on this flight.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :stopover_allowed
                sig {
                  params(arrival_airport_code: T.nilable(String), carrier: T.nilable(String), departure_airport_code: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String), stopover_allowed: T.nilable(T::Boolean)).void
                 }
                def initialize(
                  arrival_airport_code: nil,
                  carrier: nil,
                  departure_airport_code: nil,
                  flight_number: nil,
                  service_class: nil,
                  stopover_allowed: nil
                ); end
              end
              # The time that the flight departed.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :departure_at
              # The name of the passenger.
              sig { returns(T.nilable(String)) }
              attr_accessor :passenger_name
              # Whether the ticket is refundable.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :refundable
              # The legs of the trip.
              sig {
                returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]))
               }
              attr_accessor :segments
              # The travel agency that issued the ticket.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency
              sig {
                params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
               }
              def initialize(
                departure_at: nil,
                passenger_name: nil,
                refundable: nil,
                segments: nil,
                travel_agency: nil
              ); end
            end
            class Fuel < Stripe::RequestParams
              # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
              sig { returns(T.nilable(String)) }
              attr_accessor :industry_product_code
              # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
              sig { returns(T.nilable(String)) }
              attr_accessor :quantity_decimal
              # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
              sig { returns(T.nilable(String)) }
              attr_accessor :type
              # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit
              # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit_cost_decimal
              sig {
                params(industry_product_code: T.nilable(String), quantity_decimal: T.nilable(String), type: T.nilable(String), unit: T.nilable(String), unit_cost_decimal: T.nilable(String)).void
               }
              def initialize(
                industry_product_code: nil,
                quantity_decimal: nil,
                type: nil,
                unit: nil,
                unit_cost_decimal: nil
              ); end
            end
            class Lodging < Stripe::RequestParams
              # The time of checking into the lodging.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :check_in_at
              # The number of nights stayed at the lodging.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :nights
              sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
              def initialize(check_in_at: nil, nights: nil); end
            end
            class Receipt < Stripe::RequestParams
              # Attribute for param field description
              sig { returns(T.nilable(String)) }
              attr_accessor :description
              # Attribute for param field quantity
              sig { returns(T.nilable(String)) }
              attr_accessor :quantity
              # Attribute for param field total
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total
              # Attribute for param field unit_cost
              sig { returns(T.nilable(Integer)) }
              attr_accessor :unit_cost
              sig {
                params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
               }
              def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
            end
            # Fleet-specific information for transactions using Fleet cards.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet))
             }
            attr_accessor :fleet
            # Information about the flight that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Flight))
             }
            attr_accessor :flight
            # Information about fuel that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fuel))
             }
            attr_accessor :fuel
            # Information about lodging that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Lodging))
             }
            attr_accessor :lodging
            # The line items in the purchase.
            sig {
              returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Receipt]))
             }
            attr_accessor :receipt
            # A merchant-specific order number.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference
            sig {
              params(fleet: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
             }
            def initialize(
              fleet: nil,
              flight: nil,
              fuel: nil,
              lodging: nil,
              receipt: nil,
              reference: nil
            ); end
          end
          # The total amount to attempt to capture. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Card associated with this transaction.
          sig { returns(String) }
          attr_accessor :card
          # The currency of the capture. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::MerchantData))
           }
          attr_accessor :merchant_data
          # Additional purchase information that is optionally provided by the merchant.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails))
           }
          attr_accessor :purchase_details
          sig {
            params(amount: Integer, card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), merchant_data: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::MerchantData), purchase_details: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams::PurchaseDetails)).void
           }
          def initialize(
            amount: nil,
            card: nil,
            currency: nil,
            expand: nil,
            merchant_data: nil,
            purchase_details: nil
          ); end
        end
        class CreateUnlinkedRefundParams < Stripe::RequestParams
          class MerchantData < Stripe::RequestParams
            # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
            sig { returns(T.nilable(String)) }
            attr_accessor :category
            # City where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Country where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Name of the seller
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
            sig { returns(T.nilable(String)) }
            attr_accessor :network_id
            # Postal code where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State where the seller is located
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            # An ID assigned by the seller to the location of the sale.
            sig { returns(T.nilable(String)) }
            attr_accessor :terminal_id
            # URL provided by the merchant on a 3DS request
            sig { returns(T.nilable(String)) }
            attr_accessor :url
            sig {
              params(category: T.nilable(String), city: T.nilable(String), country: T.nilable(String), name: T.nilable(String), network_id: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), terminal_id: T.nilable(String), url: T.nilable(String)).void
             }
            def initialize(
              category: nil,
              city: nil,
              country: nil,
              name: nil,
              network_id: nil,
              postal_code: nil,
              state: nil,
              terminal_id: nil,
              url: nil
            ); end
          end
          class PurchaseDetails < Stripe::RequestParams
            class Fleet < Stripe::RequestParams
              class CardholderPromptData < Stripe::RequestParams
                # Driver ID.
                sig { returns(T.nilable(String)) }
                attr_accessor :driver_id
                # Odometer reading.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :odometer
                # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
                sig { returns(T.nilable(String)) }
                attr_accessor :unspecified_id
                # User ID.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_id
                # Vehicle number.
                sig { returns(T.nilable(String)) }
                attr_accessor :vehicle_number
                sig {
                  params(driver_id: T.nilable(String), odometer: T.nilable(Integer), unspecified_id: T.nilable(String), user_id: T.nilable(String), vehicle_number: T.nilable(String)).void
                 }
                def initialize(
                  driver_id: nil,
                  odometer: nil,
                  unspecified_id: nil,
                  user_id: nil,
                  vehicle_number: nil
                ); end
              end
              class ReportedBreakdown < Stripe::RequestParams
                class Fuel < Stripe::RequestParams
                  # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :gross_amount_decimal
                  sig { params(gross_amount_decimal: T.nilable(String)).void }
                  def initialize(gross_amount_decimal: nil); end
                end
                class NonFuel < Stripe::RequestParams
                  # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :gross_amount_decimal
                  sig { params(gross_amount_decimal: T.nilable(String)).void }
                  def initialize(gross_amount_decimal: nil); end
                end
                class Tax < Stripe::RequestParams
                  # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :local_amount_decimal
                  # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :national_amount_decimal
                  sig {
                    params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                   }
                  def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
                end
                # Breakdown of fuel portion of the purchase.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
                 }
                attr_accessor :fuel
                # Breakdown of non-fuel portion of the purchase.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
                 }
                attr_accessor :non_fuel
                # Information about tax included in this transaction.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
                 }
                attr_accessor :tax
                sig {
                  params(fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
                 }
                def initialize(fuel: nil, non_fuel: nil, tax: nil); end
              end
              # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData))
               }
              attr_accessor :cardholder_prompt_data
              # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
              sig { returns(T.nilable(String)) }
              attr_accessor :purchase_type
              # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown))
               }
              attr_accessor :reported_breakdown
              # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
              sig { returns(T.nilable(String)) }
              attr_accessor :service_type
              sig {
                params(cardholder_prompt_data: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
               }
              def initialize(
                cardholder_prompt_data: nil,
                purchase_type: nil,
                reported_breakdown: nil,
                service_type: nil
              ); end
            end
            class Flight < Stripe::RequestParams
              class Segment < Stripe::RequestParams
                # The three-letter IATA airport code of the flight's destination.
                sig { returns(T.nilable(String)) }
                attr_accessor :arrival_airport_code
                # The airline carrier code.
                sig { returns(T.nilable(String)) }
                attr_accessor :carrier
                # The three-letter IATA airport code that the flight departed from.
                sig { returns(T.nilable(String)) }
                attr_accessor :departure_airport_code
                # The flight number.
                sig { returns(T.nilable(String)) }
                attr_accessor :flight_number
                # The flight's service class.
                sig { returns(T.nilable(String)) }
                attr_accessor :service_class
                # Whether a stopover is allowed on this flight.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :stopover_allowed
                sig {
                  params(arrival_airport_code: T.nilable(String), carrier: T.nilable(String), departure_airport_code: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String), stopover_allowed: T.nilable(T::Boolean)).void
                 }
                def initialize(
                  arrival_airport_code: nil,
                  carrier: nil,
                  departure_airport_code: nil,
                  flight_number: nil,
                  service_class: nil,
                  stopover_allowed: nil
                ); end
              end
              # The time that the flight departed.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :departure_at
              # The name of the passenger.
              sig { returns(T.nilable(String)) }
              attr_accessor :passenger_name
              # Whether the ticket is refundable.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :refundable
              # The legs of the trip.
              sig {
                returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]))
               }
              attr_accessor :segments
              # The travel agency that issued the ticket.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency
              sig {
                params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
               }
              def initialize(
                departure_at: nil,
                passenger_name: nil,
                refundable: nil,
                segments: nil,
                travel_agency: nil
              ); end
            end
            class Fuel < Stripe::RequestParams
              # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
              sig { returns(T.nilable(String)) }
              attr_accessor :industry_product_code
              # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
              sig { returns(T.nilable(String)) }
              attr_accessor :quantity_decimal
              # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
              sig { returns(T.nilable(String)) }
              attr_accessor :type
              # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit
              # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit_cost_decimal
              sig {
                params(industry_product_code: T.nilable(String), quantity_decimal: T.nilable(String), type: T.nilable(String), unit: T.nilable(String), unit_cost_decimal: T.nilable(String)).void
               }
              def initialize(
                industry_product_code: nil,
                quantity_decimal: nil,
                type: nil,
                unit: nil,
                unit_cost_decimal: nil
              ); end
            end
            class Lodging < Stripe::RequestParams
              # The time of checking into the lodging.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :check_in_at
              # The number of nights stayed at the lodging.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :nights
              sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
              def initialize(check_in_at: nil, nights: nil); end
            end
            class Receipt < Stripe::RequestParams
              # Attribute for param field description
              sig { returns(T.nilable(String)) }
              attr_accessor :description
              # Attribute for param field quantity
              sig { returns(T.nilable(String)) }
              attr_accessor :quantity
              # Attribute for param field total
              sig { returns(T.nilable(Integer)) }
              attr_accessor :total
              # Attribute for param field unit_cost
              sig { returns(T.nilable(Integer)) }
              attr_accessor :unit_cost
              sig {
                params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
               }
              def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
            end
            # Fleet-specific information for transactions using Fleet cards.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet))
             }
            attr_accessor :fleet
            # Information about the flight that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Flight))
             }
            attr_accessor :flight
            # Information about fuel that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fuel))
             }
            attr_accessor :fuel
            # Information about lodging that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Lodging))
             }
            attr_accessor :lodging
            # The line items in the purchase.
            sig {
              returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]))
             }
            attr_accessor :receipt
            # A merchant-specific order number.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference
            sig {
              params(fleet: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
             }
            def initialize(
              fleet: nil,
              flight: nil,
              fuel: nil,
              lodging: nil,
              receipt: nil,
              reference: nil
            ); end
          end
          # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Card associated with this unlinked refund transaction.
          sig { returns(String) }
          attr_accessor :card
          # The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::MerchantData))
           }
          attr_accessor :merchant_data
          # Additional purchase information that is optionally provided by the merchant.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails))
           }
          attr_accessor :purchase_details
          sig {
            params(amount: Integer, card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), merchant_data: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::MerchantData), purchase_details: T.nilable(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams::PurchaseDetails)).void
           }
          def initialize(
            amount: nil,
            card: nil,
            currency: nil,
            expand: nil,
            merchant_data: nil,
            purchase_details: nil
          ); end
        end
        # Allows the user to capture an arbitrary amount, also known as a forced capture.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Issuing::TransactionService::CreateForceCaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
         }
        def create_force_capture(params = {}, opts = {}); end

        # Allows the user to refund an arbitrary amount, also known as a unlinked refund.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Issuing::TransactionService::CreateUnlinkedRefundParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
         }
        def create_unlinked_refund(params = {}, opts = {}); end

        # Refund a test-mode Transaction.
        sig {
          params(transaction: String, params: T.any(::Stripe::TestHelpers::Issuing::TransactionService::RefundParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
         }
        def refund(transaction, params = {}, opts = {}); end
      end
    end
  end
end