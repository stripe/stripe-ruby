# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class AuthorizationService < StripeService
        class CreateParams < Stripe::RequestParams
          class AmountDetails < Stripe::RequestParams
            # The ATM withdrawal fee.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :atm_fee
            # The amount of cash requested by the cardholder.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :cashback_amount
            sig { params(atm_fee: T.nilable(Integer), cashback_amount: T.nilable(Integer)).void }
            def initialize(atm_fee: nil, cashback_amount: nil); end
          end
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
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::Fuel))
               }
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::NonFuel))
               }
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::Tax))
               }
              attr_accessor :tax
              sig {
                params(fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::CardholderPromptData))
             }
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown))
             }
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_type
            sig {
              params(cardholder_prompt_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
             }
            def initialize(
              cardholder_prompt_data: nil,
              purchase_type: nil,
              reported_breakdown: nil,
              service_type: nil
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
          class NetworkData < Stripe::RequestParams
            # Identifier assigned to the acquirer by the card network.
            sig { returns(T.nilable(String)) }
            attr_accessor :acquiring_institution_id
            sig { params(acquiring_institution_id: T.nilable(String)).void }
            def initialize(acquiring_institution_id: nil); end
          end
          class VerificationData < Stripe::RequestParams
            class AuthenticationExemption < Stripe::RequestParams
              # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
              sig { returns(String) }
              attr_accessor :claimed_by
              # The specific exemption claimed for this authorization.
              sig { returns(String) }
              attr_accessor :type
              sig { params(claimed_by: String, type: String).void }
              def initialize(claimed_by: nil, type: nil); end
            end
            class ThreeDSecure < Stripe::RequestParams
              # The outcome of the 3D Secure authentication request.
              sig { returns(String) }
              attr_accessor :result
              sig { params(result: String).void }
              def initialize(result: nil); end
            end
            # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
            sig { returns(T.nilable(String)) }
            attr_accessor :address_line1_check
            # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
            sig { returns(T.nilable(String)) }
            attr_accessor :address_postal_code_check
            # The exemption applied to this authorization.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData::AuthenticationExemption))
             }
            attr_accessor :authentication_exemption
            # Whether the cardholder provided a CVC and if it matched Stripe’s record.
            sig { returns(T.nilable(String)) }
            attr_accessor :cvc_check
            # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
            sig { returns(T.nilable(String)) }
            attr_accessor :expiry_check
            # 3D Secure details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData::ThreeDSecure))
             }
            attr_accessor :three_d_secure
            sig {
              params(address_line1_check: T.nilable(String), address_postal_code_check: T.nilable(String), authentication_exemption: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData::AuthenticationExemption), cvc_check: T.nilable(String), expiry_check: T.nilable(String), three_d_secure: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData::ThreeDSecure)).void
             }
            def initialize(
              address_line1_check: nil,
              address_postal_code_check: nil,
              authentication_exemption: nil,
              cvc_check: nil,
              expiry_check: nil,
              three_d_secure: nil
            ); end
          end
          # The total amount to attempt to authorize. This amount is in the provided currency, or defaults to the card's currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount
          # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::AmountDetails))
           }
          attr_accessor :amount_details
          # How the card details were provided. Defaults to online.
          sig { returns(T.nilable(String)) }
          attr_accessor :authorization_method
          # Card associated with this authorization.
          sig { returns(String) }
          attr_accessor :card
          # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Fleet-specific information for authorizations using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet))
           }
          attr_accessor :fleet
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fuel))
           }
          attr_accessor :fuel
          # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_amount_controllable
          # The total amount to attempt to authorize. This amount is in the provided merchant currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :merchant_amount
          # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_currency
          # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::MerchantData))
           }
          attr_accessor :merchant_data
          # Details about the authorization, such as identifiers, set by the card network.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::NetworkData))
           }
          attr_accessor :network_data
          # Verifications that Stripe performed on information that the cardholder provided to the merchant.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData))
           }
          attr_accessor :verification_data
          # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
          sig { returns(T.nilable(String)) }
          attr_accessor :wallet
          sig {
            params(amount: T.nilable(Integer), amount_details: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::AmountDetails), authorization_method: T.nilable(String), card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), fleet: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fleet), fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::Fuel), is_amount_controllable: T.nilable(T::Boolean), merchant_amount: T.nilable(Integer), merchant_currency: T.nilable(String), merchant_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::MerchantData), network_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::NetworkData), verification_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams::VerificationData), wallet: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            amount_details: nil,
            authorization_method: nil,
            card: nil,
            currency: nil,
            expand: nil,
            fleet: nil,
            fuel: nil,
            is_amount_controllable: nil,
            merchant_amount: nil,
            merchant_currency: nil,
            merchant_data: nil,
            network_data: nil,
            verification_data: nil,
            wallet: nil
          ); end
        end
        class CaptureParams < Stripe::RequestParams
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
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
                 }
                attr_accessor :fuel
                # Breakdown of non-fuel portion of the purchase.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
                 }
                attr_accessor :non_fuel
                # Information about tax included in this transaction.
                sig {
                  returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
                 }
                attr_accessor :tax
                sig {
                  params(fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
                 }
                def initialize(fuel: nil, non_fuel: nil, tax: nil); end
              end
              # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
               }
              attr_accessor :cardholder_prompt_data
              # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
              sig { returns(T.nilable(String)) }
              attr_accessor :purchase_type
              # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
               }
              attr_accessor :reported_breakdown
              # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
              sig { returns(T.nilable(String)) }
              attr_accessor :service_type
              sig {
                params(cardholder_prompt_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
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
                returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Flight::Segment]))
               }
              attr_accessor :segments
              # The travel agency that issued the ticket.
              sig { returns(T.nilable(String)) }
              attr_accessor :travel_agency
              sig {
                params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
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
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet))
             }
            attr_accessor :fleet
            # Information about the flight that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Flight))
             }
            attr_accessor :flight
            # Information about fuel that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fuel))
             }
            attr_accessor :fuel
            # Information about lodging that was purchased with this transaction.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Lodging))
             }
            attr_accessor :lodging
            # The line items in the purchase.
            sig {
              returns(T.nilable(T::Array[::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Receipt]))
             }
            attr_accessor :receipt
            # A merchant-specific order number.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference
            sig {
              params(fleet: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
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
          # The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :capture_amount
          # Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :close_authorization
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Additional purchase information that is optionally provided by the merchant.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails))
           }
          attr_accessor :purchase_details
          sig {
            params(capture_amount: T.nilable(Integer), close_authorization: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), purchase_details: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams::PurchaseDetails)).void
           }
          def initialize(
            capture_amount: nil,
            close_authorization: nil,
            expand: nil,
            purchase_details: nil
          ); end
        end
        class ExpireParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class FinalizeAmountParams < Stripe::RequestParams
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
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel))
               }
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel))
               }
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax))
               }
              attr_accessor :tax
              sig {
                params(fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::CardholderPromptData))
             }
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown))
             }
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_type
            sig {
              params(cardholder_prompt_data: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
             }
            def initialize(
              cardholder_prompt_data: nil,
              purchase_type: nil,
              reported_breakdown: nil,
              service_type: nil
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
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :final_amount
          # Fleet-specific information for authorizations using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet))
           }
          attr_accessor :fleet
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fuel))
           }
          attr_accessor :fuel
          sig {
            params(expand: T.nilable(T::Array[String]), final_amount: Integer, fleet: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fleet), fuel: T.nilable(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams::Fuel)).void
           }
          def initialize(expand: nil, final_amount: nil, fleet: nil, fuel: nil); end
        end
        class RespondParams < Stripe::RequestParams
          # Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
          sig { returns(T::Boolean) }
          attr_accessor :confirmed
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(confirmed: T::Boolean, expand: T.nilable(T::Array[String])).void }
          def initialize(confirmed: nil, expand: nil); end
        end
        class IncrementParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :increment_amount
          # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_amount_controllable
          sig {
            params(expand: T.nilable(T::Array[String]), increment_amount: Integer, is_amount_controllable: T.nilable(T::Boolean)).void
           }
          def initialize(expand: nil, increment_amount: nil, is_amount_controllable: nil); end
        end
        class ReverseParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # The amount to reverse from the authorization. If not provided, the full amount of the authorization will be reversed. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :reverse_amount
          sig {
            params(expand: T.nilable(T::Array[String]), reverse_amount: T.nilable(Integer)).void
           }
          def initialize(expand: nil, reverse_amount: nil); end
        end
        # Capture a test-mode authorization.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def capture(authorization, params = {}, opts = {}); end

        # Create a test-mode authorization.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def create(params = {}, opts = {}); end

        # Expire a test-mode Authorization.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::ExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def expire(authorization, params = {}, opts = {}); end

        # Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::FinalizeAmountParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def finalize_amount(authorization, params = {}, opts = {}); end

        # Increment a test-mode Authorization.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::IncrementParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def increment(authorization, params = {}, opts = {}); end

        # Respond to a fraud challenge on a testmode Issuing authorization, simulating either a confirmation of fraud or a correction of legitimacy.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::RespondParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def respond(authorization, params = {}, opts = {}); end

        # Reverse a test-mode Authorization.
        sig {
          params(authorization: String, params: T.any(::Stripe::TestHelpers::Issuing::AuthorizationService::ReverseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
         }
        def reverse(authorization, params = {}, opts = {}); end
      end
    end
  end
end