# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving
    # your Stripe account, such as a completed purchase or refund, is represented by an Issuing
    # `Transaction` object.
    #
    # Related guide: [Issued card transactions](https://stripe.com/docs/issuing/purchases/transactions)
    class Transaction < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction"
      def self.object_name
        "issuing.transaction"
      end

      class AmountDetails < Stripe::StripeObject
        # The fee charged by the ATM for the cash withdrawal.
        attr_reader :atm_fee
        # The amount of cash requested by the cardholder.
        attr_reader :cashback_amount
      end

      class MerchantData < Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
        attr_reader :category
        # The merchant category code for the seller’s business
        attr_reader :category_code
        # City where the seller is located
        attr_reader :city
        # Country where the seller is located
        attr_reader :country
        # Name of the seller
        attr_reader :name
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        attr_reader :network_id
        # Postal code where the seller is located
        attr_reader :postal_code
        # State where the seller is located
        attr_reader :state
        # The seller's tax identification number. Currently populated for French merchants only.
        attr_reader :tax_id
        # An ID assigned by the seller to the location of the sale.
        attr_reader :terminal_id
        # URL provided by the merchant on a 3DS request
        attr_reader :url
      end

      class NetworkData < Stripe::StripeObject
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        attr_reader :authorization_code
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        attr_reader :processing_date
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        attr_reader :transaction_id
      end

      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            # Driver ID.
            attr_reader :driver_id
            # Odometer reading.
            attr_reader :odometer
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            attr_reader :unspecified_id
            # User ID.
            attr_reader :user_id
            # Vehicle number.
            attr_reader :vehicle_number
          end

          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              attr_reader :gross_amount_decimal
            end

            class NonFuel < Stripe::StripeObject
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              attr_reader :gross_amount_decimal
            end

            class Tax < Stripe::StripeObject
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              attr_reader :local_amount_decimal
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              attr_reader :national_amount_decimal
            end
            # Breakdown of fuel portion of the purchase.
            attr_reader :fuel
            # Breakdown of non-fuel portion of the purchase.
            attr_reader :non_fuel
            # Information about tax included in this transaction.
            attr_reader :tax
          end
          # Answers to prompts presented to cardholder at point of sale.
          attr_reader :cardholder_prompt_data
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          attr_reader :purchase_type
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          attr_reader :reported_breakdown
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          attr_reader :service_type
        end

        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            # The three-letter IATA airport code of the flight's destination.
            attr_reader :arrival_airport_code
            # The airline carrier code.
            attr_reader :carrier
            # The three-letter IATA airport code that the flight departed from.
            attr_reader :departure_airport_code
            # The flight number.
            attr_reader :flight_number
            # The flight's service class.
            attr_reader :service_class
            # Whether a stopover is allowed on this flight.
            attr_reader :stopover_allowed
          end
          # The time that the flight departed.
          attr_reader :departure_at
          # The name of the passenger.
          attr_reader :passenger_name
          # Whether the ticket is refundable.
          attr_reader :refundable
          # The legs of the trip.
          attr_reader :segments
          # The travel agency that issued the ticket.
          attr_reader :travel_agency
        end

        class Fuel < Stripe::StripeObject
          # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
          attr_reader :industry_product_code
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          attr_reader :quantity_decimal
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          attr_reader :type
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          attr_reader :unit
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          attr_reader :unit_cost_decimal
        end

        class Lodging < Stripe::StripeObject
          # The time of checking into the lodging.
          attr_reader :check_in_at
          # The number of nights stayed at the lodging.
          attr_reader :nights
        end

        class Receipt < Stripe::StripeObject
          # The description of the item. The maximum length of this field is 26 characters.
          attr_reader :description
          # The quantity of the item.
          attr_reader :quantity
          # The total for this line item in cents.
          attr_reader :total
          # The unit cost of the item in cents.
          attr_reader :unit_cost
        end
        # Fleet-specific information for transactions using Fleet cards.
        attr_reader :fleet
        # Information about the flight that was purchased with this transaction.
        attr_reader :flight
        # Information about fuel that was purchased with this transaction.
        attr_reader :fuel
        # Information about lodging that was purchased with this transaction.
        attr_reader :lodging
        # The line items in the purchase.
        attr_reader :receipt
        # A merchant-specific order number.
        attr_reader :reference
      end

      class Treasury < Stripe::StripeObject
        # The Treasury [ReceivedCredit](https://stripe.com/docs/api/treasury/received_credits) representing this Issuing transaction if it is a refund
        attr_reader :received_credit
        # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_debits) representing this Issuing transaction if it is a capture
        attr_reader :received_debit
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return transactions that belong to the given card.
        attr_accessor :card
        # Only return transactions that belong to the given cardholder.
        attr_accessor :cardholder
        # Only return transactions that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return transactions that have the given type. One of `capture` or `refund`.
        attr_accessor :type

        def initialize(
          card: nil,
          cardholder: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          type: nil
        )
          @card = card
          @cardholder = cardholder
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @type = type
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(expand: nil, metadata: nil)
          @expand = expand
          @metadata = metadata
        end
      end

      class RefundParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_accessor :refund_amount

        def initialize(expand: nil, refund_amount: nil)
          @expand = expand
          @refund_amount = refund_amount
        end
      end

      class CreateForceCaptureParams < Stripe::RequestParams
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
        # The total amount to attempt to capture. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_accessor :amount
        # Card associated with this transaction.
        attr_accessor :card
        # The currency of the capture. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        attr_accessor :merchant_data
        # Additional purchase information that is optionally provided by the merchant.
        attr_accessor :purchase_details

        def initialize(
          amount: nil,
          card: nil,
          currency: nil,
          expand: nil,
          merchant_data: nil,
          purchase_details: nil
        )
          @amount = amount
          @card = card
          @currency = currency
          @expand = expand
          @merchant_data = merchant_data
          @purchase_details = purchase_details
        end
      end

      class CreateUnlinkedRefundParams < Stripe::RequestParams
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
        # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_accessor :amount
        # Card associated with this unlinked refund transaction.
        attr_accessor :card
        # The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        attr_accessor :merchant_data
        # Additional purchase information that is optionally provided by the merchant.
        attr_accessor :purchase_details

        def initialize(
          amount: nil,
          card: nil,
          currency: nil,
          expand: nil,
          merchant_data: nil,
          purchase_details: nil
        )
          @amount = amount
          @card = card
          @currency = currency
          @expand = expand
          @merchant_data = merchant_data
          @purchase_details = purchase_details
        end
      end
      # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_details
      # The `Authorization` object that led to this transaction.
      attr_reader :authorization
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this transaction.
      attr_reader :balance_transaction
      # The card used to make this transaction.
      attr_reader :card
      # The cardholder to whom this transaction belongs.
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # If you've disputed the transaction, the ID of the dispute.
      attr_reader :dispute
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
      attr_reader :merchant_amount
      # The currency with which the merchant is taking payment.
      attr_reader :merchant_currency
      # Attribute for field merchant_data
      attr_reader :merchant_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Details about the transaction, such as processing dates, set by the card network.
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Additional purchase information that is optionally provided by the merchant.
      attr_reader :purchase_details
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
      attr_reader :token
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      attr_reader :treasury
      # The nature of the transaction.
      attr_reader :type
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
      attr_reader :wallet

      # Returns a list of Issuing Transaction objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/transactions",
          params: params,
          opts: opts
        )
      end

      # Updates the specified Issuing Transaction object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(transaction, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/transactions/%<transaction>s", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Transaction
        def self.resource_class
          "Transaction"
        end

        # Allows the user to capture an arbitrary amount, also known as a forced capture.
        def self.create_force_capture(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/transactions/create_force_capture",
            params: params,
            opts: opts
          )
        end

        # Allows the user to refund an arbitrary amount, also known as a unlinked refund.
        def self.create_unlinked_refund(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/transactions/create_unlinked_refund",
            params: params,
            opts: opts
          )
        end

        # Refund a test-mode Transaction.
        def self.refund(transaction, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/transactions/%<transaction>s/refund", { transaction: CGI.escape(transaction) }),
            params: params,
            opts: opts
          )
        end

        # Refund a test-mode Transaction.
        def refund(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/transactions/%<transaction>s/refund", { transaction: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
