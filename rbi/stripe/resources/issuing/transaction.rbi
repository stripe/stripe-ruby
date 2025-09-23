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
        def atm_fee; end
        # The amount of cash requested by the cardholder.
        sig { returns(T.nilable(Integer)) }
        def cashback_amount; end
      end
      class MerchantData < Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
        sig { returns(String) }
        def category; end
        # The merchant category code for the seller’s business
        sig { returns(String) }
        def category_code; end
        # City where the seller is located
        sig { returns(T.nilable(String)) }
        def city; end
        # Country where the seller is located
        sig { returns(T.nilable(String)) }
        def country; end
        # Name of the seller
        sig { returns(T.nilable(String)) }
        def name; end
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        sig { returns(String) }
        def network_id; end
        # Postal code where the seller is located
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State where the seller is located
        sig { returns(T.nilable(String)) }
        def state; end
        # The seller's tax identification number. Currently populated for French merchants only.
        sig { returns(T.nilable(String)) }
        def tax_id; end
        # An ID assigned by the seller to the location of the sale.
        sig { returns(T.nilable(String)) }
        def terminal_id; end
        # URL provided by the merchant on a 3DS request
        sig { returns(T.nilable(String)) }
        def url; end
      end
      class NetworkData < Stripe::StripeObject
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        sig { returns(T.nilable(String)) }
        def authorization_code; end
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        sig { returns(T.nilable(String)) }
        def processing_date; end
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        sig { returns(T.nilable(String)) }
        def transaction_id; end
      end
      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            # Driver ID.
            sig { returns(T.nilable(String)) }
            def driver_id; end
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            def odometer; end
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            def unspecified_id; end
            # User ID.
            sig { returns(T.nilable(String)) }
            def user_id; end
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            def vehicle_number; end
          end
          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
            end
            class NonFuel < Stripe::StripeObject
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
            end
            class Tax < Stripe::StripeObject
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def local_amount_decimal; end
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def national_amount_decimal; end
            end
            # Breakdown of fuel portion of the purchase.
            sig { returns(T.nilable(Fuel)) }
            def fuel; end
            # Breakdown of non-fuel portion of the purchase.
            sig { returns(T.nilable(NonFuel)) }
            def non_fuel; end
            # Information about tax included in this transaction.
            sig { returns(T.nilable(Tax)) }
            def tax; end
          end
          # Answers to prompts presented to cardholder at point of sale.
          sig { returns(T.nilable(CardholderPromptData)) }
          def cardholder_prompt_data; end
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          def purchase_type; end
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig { returns(T.nilable(ReportedBreakdown)) }
          def reported_breakdown; end
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          def service_type; end
        end
        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            # The three-letter IATA airport code of the flight's destination.
            sig { returns(T.nilable(String)) }
            def arrival_airport_code; end
            # The airline carrier code.
            sig { returns(T.nilable(String)) }
            def carrier; end
            # The three-letter IATA airport code that the flight departed from.
            sig { returns(T.nilable(String)) }
            def departure_airport_code; end
            # The flight number.
            sig { returns(T.nilable(String)) }
            def flight_number; end
            # The flight's service class.
            sig { returns(T.nilable(String)) }
            def service_class; end
            # Whether a stopover is allowed on this flight.
            sig { returns(T.nilable(T::Boolean)) }
            def stopover_allowed; end
          end
          # The time that the flight departed.
          sig { returns(T.nilable(Integer)) }
          def departure_at; end
          # The name of the passenger.
          sig { returns(T.nilable(String)) }
          def passenger_name; end
          # Whether the ticket is refundable.
          sig { returns(T.nilable(T::Boolean)) }
          def refundable; end
          # The legs of the trip.
          sig { returns(T.nilable(T::Array[Segment])) }
          def segments; end
          # The travel agency that issued the ticket.
          sig { returns(T.nilable(String)) }
          def travel_agency; end
        end
        class Fuel < Stripe::StripeObject
          # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
          sig { returns(T.nilable(String)) }
          def industry_product_code; end
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def quantity_decimal; end
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(String) }
          def type; end
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(String) }
          def unit; end
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(String) }
          def unit_cost_decimal; end
        end
        class Lodging < Stripe::StripeObject
          # The time of checking into the lodging.
          sig { returns(T.nilable(Integer)) }
          def check_in_at; end
          # The number of nights stayed at the lodging.
          sig { returns(T.nilable(Integer)) }
          def nights; end
        end
        class Receipt < Stripe::StripeObject
          # The description of the item. The maximum length of this field is 26 characters.
          sig { returns(T.nilable(String)) }
          def description; end
          # The quantity of the item.
          sig { returns(T.nilable(Float)) }
          def quantity; end
          # The total for this line item in cents.
          sig { returns(T.nilable(Integer)) }
          def total; end
          # The unit cost of the item in cents.
          sig { returns(T.nilable(Integer)) }
          def unit_cost; end
        end
        # Fleet-specific information for transactions using Fleet cards.
        sig { returns(T.nilable(Fleet)) }
        def fleet; end
        # Information about the flight that was purchased with this transaction.
        sig { returns(T.nilable(Flight)) }
        def flight; end
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(Fuel)) }
        def fuel; end
        # Information about lodging that was purchased with this transaction.
        sig { returns(T.nilable(Lodging)) }
        def lodging; end
        # The line items in the purchase.
        sig { returns(T.nilable(T::Array[Receipt])) }
        def receipt; end
        # A merchant-specific order number.
        sig { returns(T.nilable(String)) }
        def reference; end
      end
      class Treasury < Stripe::StripeObject
        # The Treasury [ReceivedCredit](https://stripe.com/docs/api/treasury/received_credits) representing this Issuing transaction if it is a refund
        sig { returns(T.nilable(String)) }
        def received_credit; end
        # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_debits) representing this Issuing transaction if it is a capture
        sig { returns(T.nilable(String)) }
        def received_debit; end
      end
      # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(Integer) }
      def amount; end
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(T.nilable(AmountDetails)) }
      def amount_details; end
      # The `Authorization` object that led to this transaction.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Authorization))) }
      def authorization; end
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this transaction.
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      def balance_transaction; end
      # The card used to make this transaction.
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      def card; end
      # The cardholder to whom this transaction belongs.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      def cardholder; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # If you've disputed the transaction, the ID of the dispute.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Dispute))) }
      def dispute; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
      sig { returns(Integer) }
      def merchant_amount; end
      # The currency with which the merchant is taking payment.
      sig { returns(String) }
      def merchant_currency; end
      # Attribute for field merchant_data
      sig { returns(MerchantData) }
      def merchant_data; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # Details about the transaction, such as processing dates, set by the card network.
      sig { returns(T.nilable(NetworkData)) }
      def network_data; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Additional purchase information that is optionally provided by the merchant.
      sig { returns(T.nilable(PurchaseDetails)) }
      def purchase_details; end
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      def token; end
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      sig { returns(T.nilable(Treasury)) }
      def treasury; end
      # The nature of the transaction.
      sig { returns(String) }
      def type; end
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
      sig { returns(T.nilable(String)) }
      def wallet; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return transactions that belong to the given card.
        sig { returns(T.nilable(String)) }
        def card; end
        sig { params(_card: T.nilable(String)).returns(T.nilable(String)) }
        def card=(_card); end
        # Only return transactions that belong to the given cardholder.
        sig { returns(T.nilable(String)) }
        def cardholder; end
        sig { params(_cardholder: T.nilable(String)).returns(T.nilable(String)) }
        def cardholder=(_cardholder); end
        # Only return transactions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Transaction::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::Transaction::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::Transaction::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return transactions that have the given type. One of `capture` or `refund`.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
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
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class RefundParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        def refund_amount; end
        sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def refund_amount=(_refund_amount); end
        sig { params(expand: T.nilable(T::Array[String]), refund_amount: T.nilable(Integer)).void }
        def initialize(expand: nil, refund_amount: nil); end
      end
      class CreateForceCaptureParams < Stripe::RequestParams
        class MerchantData < Stripe::RequestParams
          # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # City where the seller is located
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Country where the seller is located
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Name of the seller
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
          sig { returns(T.nilable(String)) }
          def network_id; end
          sig { params(_network_id: T.nilable(String)).returns(T.nilable(String)) }
          def network_id=(_network_id); end
          # Postal code where the seller is located
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State where the seller is located
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # An ID assigned by the seller to the location of the sale.
          sig { returns(T.nilable(String)) }
          def terminal_id; end
          sig { params(_terminal_id: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_terminal_id); end
          # URL provided by the merchant on a 3DS request
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
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
              def driver_id; end
              sig { params(_driver_id: T.nilable(String)).returns(T.nilable(String)) }
              def driver_id=(_driver_id); end
              # Odometer reading.
              sig { returns(T.nilable(Integer)) }
              def odometer; end
              sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def odometer=(_odometer); end
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              sig { returns(T.nilable(String)) }
              def unspecified_id; end
              sig { params(_unspecified_id: T.nilable(String)).returns(T.nilable(String)) }
              def unspecified_id=(_unspecified_id); end
              # User ID.
              sig { returns(T.nilable(String)) }
              def user_id; end
              sig { params(_user_id: T.nilable(String)).returns(T.nilable(String)) }
              def user_id=(_user_id); end
              # Vehicle number.
              sig { returns(T.nilable(String)) }
              def vehicle_number; end
              sig { params(_vehicle_number: T.nilable(String)).returns(T.nilable(String)) }
              def vehicle_number=(_vehicle_number); end
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
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                sig { returns(T.nilable(String)) }
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def local_amount_decimal; end
                sig { params(_local_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def local_amount_decimal=(_local_amount_decimal); end
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def national_amount_decimal; end
                sig {
                  params(_national_amount_decimal: T.nilable(String)).returns(T.nilable(String))
                 }
                def national_amount_decimal=(_national_amount_decimal); end
                sig {
                  params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                 }
                def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
              end
              # Breakdown of fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel; end
              sig {
                params(_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel=(_fuel); end
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel; end
              sig {
                params(_non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel=(_non_fuel); end
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax=(_tax); end
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data; end
            sig {
              params(_cardholder_prompt_data: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data=(_cardholder_prompt_data); end
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            def purchase_type; end
            sig { params(_purchase_type: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_type=(_purchase_type); end
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown; end
            sig {
              params(_reported_breakdown: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown=(_reported_breakdown); end
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            def service_type; end
            sig { params(_service_type: T.nilable(String)).returns(T.nilable(String)) }
            def service_type=(_service_type); end
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
              def arrival_airport_code; end
              sig { params(_arrival_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def arrival_airport_code=(_arrival_airport_code); end
              # The airline carrier code.
              sig { returns(T.nilable(String)) }
              def carrier; end
              sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
              def carrier=(_carrier); end
              # The three-letter IATA airport code that the flight departed from.
              sig { returns(T.nilable(String)) }
              def departure_airport_code; end
              sig { params(_departure_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def departure_airport_code=(_departure_airport_code); end
              # The flight number.
              sig { returns(T.nilable(String)) }
              def flight_number; end
              sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
              def flight_number=(_flight_number); end
              # The flight's service class.
              sig { returns(T.nilable(String)) }
              def service_class; end
              sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
              def service_class=(_service_class); end
              # Whether a stopover is allowed on this flight.
              sig { returns(T.nilable(T::Boolean)) }
              def stopover_allowed; end
              sig {
                params(_stopover_allowed: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def stopover_allowed=(_stopover_allowed); end
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
            def departure_at; end
            sig { params(_departure_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def departure_at=(_departure_at); end
            # The name of the passenger.
            sig { returns(T.nilable(String)) }
            def passenger_name; end
            sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
            def passenger_name=(_passenger_name); end
            # Whether the ticket is refundable.
            sig { returns(T.nilable(T::Boolean)) }
            def refundable; end
            sig { params(_refundable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refundable=(_refundable); end
            # The legs of the trip.
            sig {
              returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]))
             }
            def segments; end
            sig {
              params(_segments: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight::Segment])).returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight::Segment]))
             }
            def segments=(_segments); end
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            def travel_agency; end
            sig { params(_travel_agency: T.nilable(String)).returns(T.nilable(String)) }
            def travel_agency=(_travel_agency); end
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
            def industry_product_code; end
            sig { params(_industry_product_code: T.nilable(String)).returns(T.nilable(String)) }
            def industry_product_code=(_industry_product_code); end
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def quantity_decimal; end
            sig { params(_quantity_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def quantity_decimal=(_quantity_decimal); end
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            sig { returns(T.nilable(String)) }
            def unit; end
            sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
            def unit=(_unit); end
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def unit_cost_decimal; end
            sig { params(_unit_cost_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def unit_cost_decimal=(_unit_cost_decimal); end
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
            def check_in_at; end
            sig { params(_check_in_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def check_in_at=(_check_in_at); end
            # The number of nights stayed at the lodging.
            sig { returns(T.nilable(Integer)) }
            def nights; end
            sig { params(_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def nights=(_nights); end
            sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
            def initialize(check_in_at: nil, nights: nil); end
          end
          class Receipt < Stripe::RequestParams
            # Attribute for param field description
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # Attribute for param field quantity
            sig { returns(T.nilable(String)) }
            def quantity; end
            sig { params(_quantity: T.nilable(String)).returns(T.nilable(String)) }
            def quantity=(_quantity); end
            # Attribute for param field total
            sig { returns(T.nilable(Integer)) }
            def total; end
            sig { params(_total: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def total=(_total); end
            # Attribute for param field unit_cost
            sig { returns(T.nilable(Integer)) }
            def unit_cost; end
            sig { params(_unit_cost: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def unit_cost=(_unit_cost); end
            sig {
              params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
             }
            def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
          end
          # Fleet-specific information for transactions using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet))
           }
          def fleet; end
          sig {
            params(_fleet: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fleet))
           }
          def fleet=(_fleet); end
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight))
           }
          def flight; end
          sig {
            params(_flight: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Flight))
           }
          def flight=(_flight); end
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fuel))
           }
          def fuel; end
          sig {
            params(_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Fuel))
           }
          def fuel=(_fuel); end
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Lodging))
           }
          def lodging; end
          sig {
            params(_lodging: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Lodging)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Lodging))
           }
          def lodging=(_lodging); end
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Receipt]))
           }
          def receipt; end
          sig {
            params(_receipt: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Receipt])).returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails::Receipt]))
           }
          def receipt=(_receipt); end
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
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
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Card associated with this transaction.
        sig { returns(String) }
        def card; end
        sig { params(_card: String).returns(String) }
        def card=(_card); end
        # The currency of the capture. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::MerchantData))
         }
        def merchant_data; end
        sig {
          params(_merchant_data: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::MerchantData)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::MerchantData))
         }
        def merchant_data=(_merchant_data); end
        # Additional purchase information that is optionally provided by the merchant.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails))
         }
        def purchase_details; end
        sig {
          params(_purchase_details: T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateForceCaptureParams::PurchaseDetails))
         }
        def purchase_details=(_purchase_details); end
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
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # City where the seller is located
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Country where the seller is located
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Name of the seller
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
          sig { returns(T.nilable(String)) }
          def network_id; end
          sig { params(_network_id: T.nilable(String)).returns(T.nilable(String)) }
          def network_id=(_network_id); end
          # Postal code where the seller is located
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State where the seller is located
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # An ID assigned by the seller to the location of the sale.
          sig { returns(T.nilable(String)) }
          def terminal_id; end
          sig { params(_terminal_id: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_terminal_id); end
          # URL provided by the merchant on a 3DS request
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
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
              def driver_id; end
              sig { params(_driver_id: T.nilable(String)).returns(T.nilable(String)) }
              def driver_id=(_driver_id); end
              # Odometer reading.
              sig { returns(T.nilable(Integer)) }
              def odometer; end
              sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def odometer=(_odometer); end
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              sig { returns(T.nilable(String)) }
              def unspecified_id; end
              sig { params(_unspecified_id: T.nilable(String)).returns(T.nilable(String)) }
              def unspecified_id=(_unspecified_id); end
              # User ID.
              sig { returns(T.nilable(String)) }
              def user_id; end
              sig { params(_user_id: T.nilable(String)).returns(T.nilable(String)) }
              def user_id=(_user_id); end
              # Vehicle number.
              sig { returns(T.nilable(String)) }
              def vehicle_number; end
              sig { params(_vehicle_number: T.nilable(String)).returns(T.nilable(String)) }
              def vehicle_number=(_vehicle_number); end
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
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                sig { returns(T.nilable(String)) }
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def local_amount_decimal; end
                sig { params(_local_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def local_amount_decimal=(_local_amount_decimal); end
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def national_amount_decimal; end
                sig {
                  params(_national_amount_decimal: T.nilable(String)).returns(T.nilable(String))
                 }
                def national_amount_decimal=(_national_amount_decimal); end
                sig {
                  params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                 }
                def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
              end
              # Breakdown of fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel; end
              sig {
                params(_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel=(_fuel); end
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel; end
              sig {
                params(_non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel=(_non_fuel); end
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax=(_tax); end
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data; end
            sig {
              params(_cardholder_prompt_data: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data=(_cardholder_prompt_data); end
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            def purchase_type; end
            sig { params(_purchase_type: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_type=(_purchase_type); end
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown; end
            sig {
              params(_reported_breakdown: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown=(_reported_breakdown); end
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            def service_type; end
            sig { params(_service_type: T.nilable(String)).returns(T.nilable(String)) }
            def service_type=(_service_type); end
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
              def arrival_airport_code; end
              sig { params(_arrival_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def arrival_airport_code=(_arrival_airport_code); end
              # The airline carrier code.
              sig { returns(T.nilable(String)) }
              def carrier; end
              sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
              def carrier=(_carrier); end
              # The three-letter IATA airport code that the flight departed from.
              sig { returns(T.nilable(String)) }
              def departure_airport_code; end
              sig { params(_departure_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def departure_airport_code=(_departure_airport_code); end
              # The flight number.
              sig { returns(T.nilable(String)) }
              def flight_number; end
              sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
              def flight_number=(_flight_number); end
              # The flight's service class.
              sig { returns(T.nilable(String)) }
              def service_class; end
              sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
              def service_class=(_service_class); end
              # Whether a stopover is allowed on this flight.
              sig { returns(T.nilable(T::Boolean)) }
              def stopover_allowed; end
              sig {
                params(_stopover_allowed: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def stopover_allowed=(_stopover_allowed); end
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
            def departure_at; end
            sig { params(_departure_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def departure_at=(_departure_at); end
            # The name of the passenger.
            sig { returns(T.nilable(String)) }
            def passenger_name; end
            sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
            def passenger_name=(_passenger_name); end
            # Whether the ticket is refundable.
            sig { returns(T.nilable(T::Boolean)) }
            def refundable; end
            sig { params(_refundable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refundable=(_refundable); end
            # The legs of the trip.
            sig {
              returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]))
             }
            def segments; end
            sig {
              params(_segments: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment])).returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight::Segment]))
             }
            def segments=(_segments); end
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            def travel_agency; end
            sig { params(_travel_agency: T.nilable(String)).returns(T.nilable(String)) }
            def travel_agency=(_travel_agency); end
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
            def industry_product_code; end
            sig { params(_industry_product_code: T.nilable(String)).returns(T.nilable(String)) }
            def industry_product_code=(_industry_product_code); end
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def quantity_decimal; end
            sig { params(_quantity_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def quantity_decimal=(_quantity_decimal); end
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            sig { returns(T.nilable(String)) }
            def unit; end
            sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
            def unit=(_unit); end
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def unit_cost_decimal; end
            sig { params(_unit_cost_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def unit_cost_decimal=(_unit_cost_decimal); end
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
            def check_in_at; end
            sig { params(_check_in_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def check_in_at=(_check_in_at); end
            # The number of nights stayed at the lodging.
            sig { returns(T.nilable(Integer)) }
            def nights; end
            sig { params(_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def nights=(_nights); end
            sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
            def initialize(check_in_at: nil, nights: nil); end
          end
          class Receipt < Stripe::RequestParams
            # Attribute for param field description
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # Attribute for param field quantity
            sig { returns(T.nilable(String)) }
            def quantity; end
            sig { params(_quantity: T.nilable(String)).returns(T.nilable(String)) }
            def quantity=(_quantity); end
            # Attribute for param field total
            sig { returns(T.nilable(Integer)) }
            def total; end
            sig { params(_total: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def total=(_total); end
            # Attribute for param field unit_cost
            sig { returns(T.nilable(Integer)) }
            def unit_cost; end
            sig { params(_unit_cost: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def unit_cost=(_unit_cost); end
            sig {
              params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
             }
            def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
          end
          # Fleet-specific information for transactions using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet))
           }
          def fleet; end
          sig {
            params(_fleet: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fleet))
           }
          def fleet=(_fleet); end
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight))
           }
          def flight; end
          sig {
            params(_flight: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Flight))
           }
          def flight=(_flight); end
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fuel))
           }
          def fuel; end
          sig {
            params(_fuel: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fuel)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Fuel))
           }
          def fuel=(_fuel); end
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Lodging))
           }
          def lodging; end
          sig {
            params(_lodging: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Lodging)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Lodging))
           }
          def lodging=(_lodging); end
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]))
           }
          def receipt; end
          sig {
            params(_receipt: T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Receipt])).returns(T.nilable(T::Array[::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails::Receipt]))
           }
          def receipt=(_receipt); end
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
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
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Card associated with this unlinked refund transaction.
        sig { returns(String) }
        def card; end
        sig { params(_card: String).returns(String) }
        def card=(_card); end
        # The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::MerchantData))
         }
        def merchant_data; end
        sig {
          params(_merchant_data: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::MerchantData)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::MerchantData))
         }
        def merchant_data=(_merchant_data); end
        # Additional purchase information that is optionally provided by the merchant.
        sig {
          returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails))
         }
        def purchase_details; end
        sig {
          params(_purchase_details: T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails)).returns(T.nilable(::Stripe::Issuing::Transaction::CreateUnlinkedRefundParams::PurchaseDetails))
         }
        def purchase_details=(_purchase_details); end
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