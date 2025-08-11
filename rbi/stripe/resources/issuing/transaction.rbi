# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving
    # your Stripe account, such as a completed purchase or refund, is represented by an Issuing
    # `Transaction` object.
    #
    # Related guide: [Issued card transactions](https://stripe.com/docs/issuing/purchases/transactions)
    class Transaction < APIResource
      class AmountDetails < Stripe::StripeObject
        # The fee charged by the ATM for the cash withdrawal.
        sig { returns(T.nilable(Integer)) }
        attr_reader :atm_fee
        # The amount of cash requested by the cardholder.
        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end
      class MerchantData < Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
        sig { returns(String) }
        attr_reader :category
        # The merchant category code for the seller’s business
        sig { returns(String) }
        attr_reader :category_code
        # City where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :city
        # Country where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Name of the seller
        sig { returns(T.nilable(String)) }
        attr_reader :name
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        sig { returns(String) }
        attr_reader :network_id
        # Postal code where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        # State where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :state
        # The seller's tax identification number. Currently populated for French merchants only.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_id
        # An ID assigned by the seller to the location of the sale.
        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id
        # URL provided by the merchant on a 3DS request
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class NetworkData < Stripe::StripeObject
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        sig { returns(T.nilable(String)) }
        attr_reader :processing_date
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            # Driver ID.
            sig { returns(T.nilable(String)) }
            attr_reader :driver_id
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            attr_reader :odometer
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            attr_reader :unspecified_id
            # User ID.
            sig { returns(T.nilable(String)) }
            attr_reader :user_id
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            attr_reader :vehicle_number
          end
          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end
            class NonFuel < Stripe::StripeObject
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end
            class Tax < Stripe::StripeObject
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_reader :local_amount_decimal
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_reader :national_amount_decimal
            end
            # Breakdown of fuel portion of the purchase.
            sig { returns(T.nilable(Fuel)) }
            attr_reader :fuel
            # Breakdown of non-fuel portion of the purchase.
            sig { returns(T.nilable(NonFuel)) }
            attr_reader :non_fuel
            # Information about tax included in this transaction.
            sig { returns(T.nilable(Tax)) }
            attr_reader :tax
          end
          # Answers to prompts presented to cardholder at point of sale.
          sig { returns(T.nilable(CardholderPromptData)) }
          attr_reader :cardholder_prompt_data
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          attr_reader :purchase_type
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig { returns(T.nilable(ReportedBreakdown)) }
          attr_reader :reported_breakdown
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          attr_reader :service_type
        end
        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            # The three-letter IATA airport code of the flight's destination.
            sig { returns(T.nilable(String)) }
            attr_reader :arrival_airport_code
            # The airline carrier code.
            sig { returns(T.nilable(String)) }
            attr_reader :carrier
            # The three-letter IATA airport code that the flight departed from.
            sig { returns(T.nilable(String)) }
            attr_reader :departure_airport_code
            # The flight number.
            sig { returns(T.nilable(String)) }
            attr_reader :flight_number
            # The flight's service class.
            sig { returns(T.nilable(String)) }
            attr_reader :service_class
            # Whether a stopover is allowed on this flight.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :stopover_allowed
          end
          # The time that the flight departed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :departure_at
          # The name of the passenger.
          sig { returns(T.nilable(String)) }
          attr_reader :passenger_name
          # Whether the ticket is refundable.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :refundable
          # The legs of the trip.
          sig { returns(T.nilable(T::Array[Segment])) }
          attr_reader :segments
          # The travel agency that issued the ticket.
          sig { returns(T.nilable(String)) }
          attr_reader :travel_agency
        end
        class Fuel < Stripe::StripeObject
          # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
          sig { returns(T.nilable(String)) }
          attr_reader :industry_product_code
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_reader :quantity_decimal
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(String) }
          attr_reader :type
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(String) }
          attr_reader :unit
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(String) }
          attr_reader :unit_cost_decimal
        end
        class Lodging < Stripe::StripeObject
          # The time of checking into the lodging.
          sig { returns(T.nilable(Integer)) }
          attr_reader :check_in_at
          # The number of nights stayed at the lodging.
          sig { returns(T.nilable(Integer)) }
          attr_reader :nights
        end
        class Receipt < Stripe::StripeObject
          # The description of the item. The maximum length of this field is 26 characters.
          sig { returns(T.nilable(String)) }
          attr_reader :description
          # The quantity of the item.
          sig { returns(T.nilable(Float)) }
          attr_reader :quantity
          # The total for this line item in cents.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total
          # The unit cost of the item in cents.
          sig { returns(T.nilable(Integer)) }
          attr_reader :unit_cost
        end
        # Fleet-specific information for transactions using Fleet cards.
        sig { returns(T.nilable(Fleet)) }
        attr_reader :fleet
        # Information about the flight that was purchased with this transaction.
        sig { returns(T.nilable(Flight)) }
        attr_reader :flight
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(Fuel)) }
        attr_reader :fuel
        # Information about lodging that was purchased with this transaction.
        sig { returns(T.nilable(Lodging)) }
        attr_reader :lodging
        # The line items in the purchase.
        sig { returns(T.nilable(T::Array[Receipt])) }
        attr_reader :receipt
        # A merchant-specific order number.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Treasury < Stripe::StripeObject
        # The Treasury [ReceivedCredit](https://stripe.com/docs/api/treasury/received_credits) representing this Issuing transaction if it is a refund
        sig { returns(T.nilable(String)) }
        attr_reader :received_credit
        # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_debits) representing this Issuing transaction if it is a capture
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end
      # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(Integer) }
      attr_reader :amount
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(T.nilable(AmountDetails)) }
      attr_reader :amount_details
      # The `Authorization` object that led to this transaction.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Authorization))) }
      attr_reader :authorization
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this transaction.
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      attr_reader :balance_transaction
      # The card used to make this transaction.
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      attr_reader :card
      # The cardholder to whom this transaction belongs.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # If you've disputed the transaction, the ID of the dispute.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Dispute))) }
      attr_reader :dispute
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
      sig { returns(Integer) }
      attr_reader :merchant_amount
      # The currency with which the merchant is taking payment.
      sig { returns(String) }
      attr_reader :merchant_currency
      # Attribute for field merchant_data
      sig { returns(MerchantData) }
      attr_reader :merchant_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # Details about the transaction, such as processing dates, set by the card network.
      sig { returns(T.nilable(NetworkData)) }
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Additional purchase information that is optionally provided by the merchant.
      sig { returns(T.nilable(PurchaseDetails)) }
      attr_reader :purchase_details
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      attr_reader :token
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury
      # The nature of the transaction.
      sig { returns(String) }
      attr_reader :type
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
      sig { returns(T.nilable(String)) }
      attr_reader :wallet
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return transactions that belong to the given card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card
        # Only return transactions that belong to the given cardholder.
        sig { returns(T.nilable(String)) }
        attr_accessor :cardholder
        # Only return transactions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Transaction::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return transactions that have the given type. One of `capture` or `refund`.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(card: T.nilable(String), cardholder: T.nilable(String), created: T.nilable(T.any(::Stripe::Issuing::Transaction::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          card: nil,
          cardholder: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          type: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class RefundParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :refund_amount
        sig { params(expand: T.nilable(T::Array[String]), refund_amount: T.nilable(Integer)).void }
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
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              attr_accessor :tax
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_type
            sig {
              params(cardholder_prompt_data: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
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
              returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]))
             }
            attr_accessor :segments
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            attr_accessor :travel_agency
            sig {
              params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet))
           }
          attr_accessor :fleet
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight))
           }
          attr_accessor :flight
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fuel))
           }
          attr_accessor :fuel
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Lodging))
           }
          attr_accessor :lodging
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Receipt]))
           }
          attr_accessor :receipt
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          sig {
            params(fleet: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
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
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::MerchantData))
         }
        attr_accessor :merchant_data
        # Additional purchase information that is optionally provided by the merchant.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails))
         }
        attr_accessor :purchase_details
        sig {
          params(amount: Integer, card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), merchant_data: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::MerchantData), purchase_details: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails)).void
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
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              attr_accessor :tax
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_type
            sig {
              params(cardholder_prompt_data: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
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
              returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]))
             }
            attr_accessor :segments
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            attr_accessor :travel_agency
            sig {
              params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet))
           }
          attr_accessor :fleet
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight))
           }
          attr_accessor :flight
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fuel))
           }
          attr_accessor :fuel
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Lodging))
           }
          attr_accessor :lodging
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]))
           }
          attr_accessor :receipt
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          sig {
            params(fleet: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
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
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::MerchantData))
         }
        attr_accessor :merchant_data
        # Additional purchase information that is optionally provided by the merchant.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails))
         }
        attr_accessor :purchase_details
        sig {
          params(amount: Integer, card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), merchant_data: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::MerchantData), purchase_details: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails)).void
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
      # Returns a list of Issuing Transaction objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::Transaction::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Transaction object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(transaction: String, params: T.any(::Stripe::Issuing::Transaction::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
       }
      def self.update(transaction, params = {}, opts = {}); end
    end
  end
end