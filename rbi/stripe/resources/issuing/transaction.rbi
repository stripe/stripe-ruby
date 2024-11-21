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

      # Attribute for field settlement
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Settlement))) }
      attr_reader :settlement

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
    end
  end
end