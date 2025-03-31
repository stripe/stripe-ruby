# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class AuthorizationService < StripeService
        class CreateParams < Stripe::RequestParams
          class AmountDetails < Stripe::RequestParams
            # The ATM withdrawal fee.
            attr_accessor :atm_fee
            # The amount of cash requested by the cardholder.
            attr_accessor :cashback_amount

            def initialize(atm_fee: nil, cashback_amount: nil)
              @atm_fee = atm_fee
              @cashback_amount = cashback_amount
            end
          end

          class Fleet < Stripe::RequestParams
            class CardholderPromptData < Stripe::RequestParams
              # Driver ID.
              attr_accessor :driver_id
              # Odometer reading.
              attr_accessor :odometer
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              attr_accessor :unspecified_id
              # User ID.
              attr_accessor :user_id
              # Vehicle number.
              attr_accessor :vehicle_number

              def initialize(
                driver_id: nil,
                odometer: nil,
                unspecified_id: nil,
                user_id: nil,
                vehicle_number: nil
              )
                @driver_id = driver_id
                @odometer = odometer
                @unspecified_id = unspecified_id
                @user_id = user_id
                @vehicle_number = vehicle_number
              end
            end

            class ReportedBreakdown < Stripe::RequestParams
              class Fuel < Stripe::RequestParams
                # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                attr_accessor :gross_amount_decimal

                def initialize(gross_amount_decimal: nil)
                  @gross_amount_decimal = gross_amount_decimal
                end
              end

              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                attr_accessor :gross_amount_decimal

                def initialize(gross_amount_decimal: nil)
                  @gross_amount_decimal = gross_amount_decimal
                end
              end

              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                attr_accessor :local_amount_decimal
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                attr_accessor :national_amount_decimal

                def initialize(local_amount_decimal: nil, national_amount_decimal: nil)
                  @local_amount_decimal = local_amount_decimal
                  @national_amount_decimal = national_amount_decimal
                end
              end
              # Breakdown of fuel portion of the purchase.
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              attr_accessor :tax

              def initialize(fuel: nil, non_fuel: nil, tax: nil)
                @fuel = fuel
                @non_fuel = non_fuel
                @tax = tax
              end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            attr_accessor :service_type

            def initialize(
              cardholder_prompt_data: nil,
              purchase_type: nil,
              reported_breakdown: nil,
              service_type: nil
            )
              @cardholder_prompt_data = cardholder_prompt_data
              @purchase_type = purchase_type
              @reported_breakdown = reported_breakdown
              @service_type = service_type
            end
          end

          class Fuel < Stripe::RequestParams
            # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
            attr_accessor :industry_product_code
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            attr_accessor :quantity_decimal
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            attr_accessor :type
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            attr_accessor :unit
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            attr_accessor :unit_cost_decimal

            def initialize(
              industry_product_code: nil,
              quantity_decimal: nil,
              type: nil,
              unit: nil,
              unit_cost_decimal: nil
            )
              @industry_product_code = industry_product_code
              @quantity_decimal = quantity_decimal
              @type = type
              @unit = unit
              @unit_cost_decimal = unit_cost_decimal
            end
          end

          class MerchantData < Stripe::RequestParams
            # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
            attr_accessor :category
            # City where the seller is located
            attr_accessor :city
            # Country where the seller is located
            attr_accessor :country
            # Name of the seller
            attr_accessor :name
            # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
            attr_accessor :network_id
            # Postal code where the seller is located
            attr_accessor :postal_code
            # State where the seller is located
            attr_accessor :state
            # An ID assigned by the seller to the location of the sale.
            attr_accessor :terminal_id
            # URL provided by the merchant on a 3DS request
            attr_accessor :url

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
            )
              @category = category
              @city = city
              @country = country
              @name = name
              @network_id = network_id
              @postal_code = postal_code
              @state = state
              @terminal_id = terminal_id
              @url = url
            end
          end

          class NetworkData < Stripe::RequestParams
            # Identifier assigned to the acquirer by the card network.
            attr_accessor :acquiring_institution_id

            def initialize(acquiring_institution_id: nil)
              @acquiring_institution_id = acquiring_institution_id
            end
          end

          class VerificationData < Stripe::RequestParams
            class AuthenticationExemption < Stripe::RequestParams
              # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
              attr_accessor :claimed_by
              # The specific exemption claimed for this authorization.
              attr_accessor :type

              def initialize(claimed_by: nil, type: nil)
                @claimed_by = claimed_by
                @type = type
              end
            end

            class ThreeDSecure < Stripe::RequestParams
              # The outcome of the 3D Secure authentication request.
              attr_accessor :result

              def initialize(result: nil)
                @result = result
              end
            end
            # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
            attr_accessor :address_line1_check
            # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
            attr_accessor :address_postal_code_check
            # The exemption applied to this authorization.
            attr_accessor :authentication_exemption
            # Whether the cardholder provided a CVC and if it matched Stripe’s record.
            attr_accessor :cvc_check
            # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
            attr_accessor :expiry_check
            # 3D Secure details.
            attr_accessor :three_d_secure

            def initialize(
              address_line1_check: nil,
              address_postal_code_check: nil,
              authentication_exemption: nil,
              cvc_check: nil,
              expiry_check: nil,
              three_d_secure: nil
            )
              @address_line1_check = address_line1_check
              @address_postal_code_check = address_postal_code_check
              @authentication_exemption = authentication_exemption
              @cvc_check = cvc_check
              @expiry_check = expiry_check
              @three_d_secure = three_d_secure
            end
          end
          # The total amount to attempt to authorize. This amount is in the provided currency, or defaults to the card's currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :amount
          # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :amount_details
          # How the card details were provided. Defaults to online.
          attr_accessor :authorization_method
          # Card associated with this authorization.
          attr_accessor :card
          # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Fleet-specific information for authorizations using Fleet cards.
          attr_accessor :fleet
          # Information about fuel that was purchased with this transaction.
          attr_accessor :fuel
          # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
          attr_accessor :is_amount_controllable
          # The total amount to attempt to authorize. This amount is in the provided merchant currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :merchant_amount
          # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :merchant_currency
          # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
          attr_accessor :merchant_data
          # Details about the authorization, such as identifiers, set by the card network.
          attr_accessor :network_data
          # Verifications that Stripe performed on information that the cardholder provided to the merchant.
          attr_accessor :verification_data
          # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
          attr_accessor :wallet

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
          )
            @amount = amount
            @amount_details = amount_details
            @authorization_method = authorization_method
            @card = card
            @currency = currency
            @expand = expand
            @fleet = fleet
            @fuel = fuel
            @is_amount_controllable = is_amount_controllable
            @merchant_amount = merchant_amount
            @merchant_currency = merchant_currency
            @merchant_data = merchant_data
            @network_data = network_data
            @verification_data = verification_data
            @wallet = wallet
          end
        end

        class CaptureParams < Stripe::RequestParams
          class PurchaseDetails < Stripe::RequestParams
            class Fleet < Stripe::RequestParams
              class CardholderPromptData < Stripe::RequestParams
                # Driver ID.
                attr_accessor :driver_id
                # Odometer reading.
                attr_accessor :odometer
                # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
                attr_accessor :unspecified_id
                # User ID.
                attr_accessor :user_id
                # Vehicle number.
                attr_accessor :vehicle_number

                def initialize(
                  driver_id: nil,
                  odometer: nil,
                  unspecified_id: nil,
                  user_id: nil,
                  vehicle_number: nil
                )
                  @driver_id = driver_id
                  @odometer = odometer
                  @unspecified_id = unspecified_id
                  @user_id = user_id
                  @vehicle_number = vehicle_number
                end
              end

              class ReportedBreakdown < Stripe::RequestParams
                class Fuel < Stripe::RequestParams
                  # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                  attr_accessor :gross_amount_decimal

                  def initialize(gross_amount_decimal: nil)
                    @gross_amount_decimal = gross_amount_decimal
                  end
                end

                class NonFuel < Stripe::RequestParams
                  # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                  attr_accessor :gross_amount_decimal

                  def initialize(gross_amount_decimal: nil)
                    @gross_amount_decimal = gross_amount_decimal
                  end
                end

                class Tax < Stripe::RequestParams
                  # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  attr_accessor :local_amount_decimal
                  # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                  attr_accessor :national_amount_decimal

                  def initialize(local_amount_decimal: nil, national_amount_decimal: nil)
                    @local_amount_decimal = local_amount_decimal
                    @national_amount_decimal = national_amount_decimal
                  end
                end
                # Breakdown of fuel portion of the purchase.
                attr_accessor :fuel
                # Breakdown of non-fuel portion of the purchase.
                attr_accessor :non_fuel
                # Information about tax included in this transaction.
                attr_accessor :tax

                def initialize(fuel: nil, non_fuel: nil, tax: nil)
                  @fuel = fuel
                  @non_fuel = non_fuel
                  @tax = tax
                end
              end
              # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
              attr_accessor :cardholder_prompt_data
              # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
              attr_accessor :purchase_type
              # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
              attr_accessor :reported_breakdown
              # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
              attr_accessor :service_type

              def initialize(
                cardholder_prompt_data: nil,
                purchase_type: nil,
                reported_breakdown: nil,
                service_type: nil
              )
                @cardholder_prompt_data = cardholder_prompt_data
                @purchase_type = purchase_type
                @reported_breakdown = reported_breakdown
                @service_type = service_type
              end
            end

            class Flight < Stripe::RequestParams
              class Segment < Stripe::RequestParams
                # The three-letter IATA airport code of the flight's destination.
                attr_accessor :arrival_airport_code
                # The airline carrier code.
                attr_accessor :carrier
                # The three-letter IATA airport code that the flight departed from.
                attr_accessor :departure_airport_code
                # The flight number.
                attr_accessor :flight_number
                # The flight's service class.
                attr_accessor :service_class
                # Whether a stopover is allowed on this flight.
                attr_accessor :stopover_allowed

                def initialize(
                  arrival_airport_code: nil,
                  carrier: nil,
                  departure_airport_code: nil,
                  flight_number: nil,
                  service_class: nil,
                  stopover_allowed: nil
                )
                  @arrival_airport_code = arrival_airport_code
                  @carrier = carrier
                  @departure_airport_code = departure_airport_code
                  @flight_number = flight_number
                  @service_class = service_class
                  @stopover_allowed = stopover_allowed
                end
              end
              # The time that the flight departed.
              attr_accessor :departure_at
              # The name of the passenger.
              attr_accessor :passenger_name
              # Whether the ticket is refundable.
              attr_accessor :refundable
              # The legs of the trip.
              attr_accessor :segments
              # The travel agency that issued the ticket.
              attr_accessor :travel_agency

              def initialize(
                departure_at: nil,
                passenger_name: nil,
                refundable: nil,
                segments: nil,
                travel_agency: nil
              )
                @departure_at = departure_at
                @passenger_name = passenger_name
                @refundable = refundable
                @segments = segments
                @travel_agency = travel_agency
              end
            end

            class Fuel < Stripe::RequestParams
              # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
              attr_accessor :industry_product_code
              # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
              attr_accessor :quantity_decimal
              # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
              attr_accessor :type
              # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
              attr_accessor :unit
              # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
              attr_accessor :unit_cost_decimal

              def initialize(
                industry_product_code: nil,
                quantity_decimal: nil,
                type: nil,
                unit: nil,
                unit_cost_decimal: nil
              )
                @industry_product_code = industry_product_code
                @quantity_decimal = quantity_decimal
                @type = type
                @unit = unit
                @unit_cost_decimal = unit_cost_decimal
              end
            end

            class Lodging < Stripe::RequestParams
              # The time of checking into the lodging.
              attr_accessor :check_in_at
              # The number of nights stayed at the lodging.
              attr_accessor :nights

              def initialize(check_in_at: nil, nights: nil)
                @check_in_at = check_in_at
                @nights = nights
              end
            end

            class Receipt < Stripe::RequestParams
              # Attribute for param field description
              attr_accessor :description
              # Attribute for param field quantity
              attr_accessor :quantity
              # Attribute for param field total
              attr_accessor :total
              # Attribute for param field unit_cost
              attr_accessor :unit_cost

              def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil)
                @description = description
                @quantity = quantity
                @total = total
                @unit_cost = unit_cost
              end
            end
            # Fleet-specific information for transactions using Fleet cards.
            attr_accessor :fleet
            # Information about the flight that was purchased with this transaction.
            attr_accessor :flight
            # Information about fuel that was purchased with this transaction.
            attr_accessor :fuel
            # Information about lodging that was purchased with this transaction.
            attr_accessor :lodging
            # The line items in the purchase.
            attr_accessor :receipt
            # A merchant-specific order number.
            attr_accessor :reference

            def initialize(
              fleet: nil,
              flight: nil,
              fuel: nil,
              lodging: nil,
              receipt: nil,
              reference: nil
            )
              @fleet = fleet
              @flight = flight
              @fuel = fuel
              @lodging = lodging
              @receipt = receipt
              @reference = reference
            end
          end
          # The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :capture_amount
          # Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
          attr_accessor :close_authorization
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Additional purchase information that is optionally provided by the merchant.
          attr_accessor :purchase_details

          def initialize(
            capture_amount: nil,
            close_authorization: nil,
            expand: nil,
            purchase_details: nil
          )
            @capture_amount = capture_amount
            @close_authorization = close_authorization
            @expand = expand
            @purchase_details = purchase_details
          end
        end

        class ExpireParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        class FinalizeAmountParams < Stripe::RequestParams
          class Fleet < Stripe::RequestParams
            class CardholderPromptData < Stripe::RequestParams
              # Driver ID.
              attr_accessor :driver_id
              # Odometer reading.
              attr_accessor :odometer
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              attr_accessor :unspecified_id
              # User ID.
              attr_accessor :user_id
              # Vehicle number.
              attr_accessor :vehicle_number

              def initialize(
                driver_id: nil,
                odometer: nil,
                unspecified_id: nil,
                user_id: nil,
                vehicle_number: nil
              )
                @driver_id = driver_id
                @odometer = odometer
                @unspecified_id = unspecified_id
                @user_id = user_id
                @vehicle_number = vehicle_number
              end
            end

            class ReportedBreakdown < Stripe::RequestParams
              class Fuel < Stripe::RequestParams
                # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                attr_accessor :gross_amount_decimal

                def initialize(gross_amount_decimal: nil)
                  @gross_amount_decimal = gross_amount_decimal
                end
              end

              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                attr_accessor :gross_amount_decimal

                def initialize(gross_amount_decimal: nil)
                  @gross_amount_decimal = gross_amount_decimal
                end
              end

              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                attr_accessor :local_amount_decimal
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                attr_accessor :national_amount_decimal

                def initialize(local_amount_decimal: nil, national_amount_decimal: nil)
                  @local_amount_decimal = local_amount_decimal
                  @national_amount_decimal = national_amount_decimal
                end
              end
              # Breakdown of fuel portion of the purchase.
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              attr_accessor :tax

              def initialize(fuel: nil, non_fuel: nil, tax: nil)
                @fuel = fuel
                @non_fuel = non_fuel
                @tax = tax
              end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            attr_accessor :service_type

            def initialize(
              cardholder_prompt_data: nil,
              purchase_type: nil,
              reported_breakdown: nil,
              service_type: nil
            )
              @cardholder_prompt_data = cardholder_prompt_data
              @purchase_type = purchase_type
              @reported_breakdown = reported_breakdown
              @service_type = service_type
            end
          end

          class Fuel < Stripe::RequestParams
            # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
            attr_accessor :industry_product_code
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            attr_accessor :quantity_decimal
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            attr_accessor :type
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            attr_accessor :unit
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            attr_accessor :unit_cost_decimal

            def initialize(
              industry_product_code: nil,
              quantity_decimal: nil,
              type: nil,
              unit: nil,
              unit_cost_decimal: nil
            )
              @industry_product_code = industry_product_code
              @quantity_decimal = quantity_decimal
              @type = type
              @unit = unit
              @unit_cost_decimal = unit_cost_decimal
            end
          end
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :final_amount
          # Fleet-specific information for authorizations using Fleet cards.
          attr_accessor :fleet
          # Information about fuel that was purchased with this transaction.
          attr_accessor :fuel

          def initialize(expand: nil, final_amount: nil, fleet: nil, fuel: nil)
            @expand = expand
            @final_amount = final_amount
            @fleet = fleet
            @fuel = fuel
          end
        end

        class RespondParams < Stripe::RequestParams
          # Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
          attr_accessor :confirmed
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(confirmed: nil, expand: nil)
            @confirmed = confirmed
            @expand = expand
          end
        end

        class IncrementParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :increment_amount
          # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
          attr_accessor :is_amount_controllable

          def initialize(expand: nil, increment_amount: nil, is_amount_controllable: nil)
            @expand = expand
            @increment_amount = increment_amount
            @is_amount_controllable = is_amount_controllable
          end
        end

        class ReverseParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # The amount to reverse from the authorization. If not provided, the full amount of the authorization will be reversed. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_accessor :reverse_amount

          def initialize(expand: nil, reverse_amount: nil)
            @expand = expand
            @reverse_amount = reverse_amount
          end
        end

        # Capture a test-mode authorization.
        def capture(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a test-mode authorization.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/issuing/authorizations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Expire a test-mode Authorization.
        def expire(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.
        def finalize_amount(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/finalize_amount", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Increment a test-mode Authorization.
        def increment(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Respond to a fraud challenge on a testmode Issuing authorization, simulating either a confirmation of fraud or a correction of legitimacy.
        def respond(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/fraud_challenges/respond", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Reverse a test-mode Authorization.
        def reverse(authorization, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
