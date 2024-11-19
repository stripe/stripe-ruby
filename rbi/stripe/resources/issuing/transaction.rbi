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
        sig { returns(T.nilable(Integer)) }
        attr_reader :atm_fee
        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end
      class MerchantData < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :category
        sig { returns(String) }
        attr_reader :category_code
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :name
        sig { returns(String) }
        attr_reader :network_id
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class NetworkData < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        sig { returns(T.nilable(String)) }
        attr_reader :processing_date
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :driver_id
            sig { returns(T.nilable(Integer)) }
            attr_reader :odometer
            sig { returns(T.nilable(String)) }
            attr_reader :unspecified_id
            sig { returns(T.nilable(String)) }
            attr_reader :user_id
            sig { returns(T.nilable(String)) }
            attr_reader :vehicle_number
          end
          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end
            class NonFuel < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end
            class Tax < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :local_amount_decimal
              sig { returns(T.nilable(String)) }
              attr_reader :national_amount_decimal
            end
            sig { returns(T.nilable(Fuel)) }
            attr_reader :fuel
            sig { returns(T.nilable(NonFuel)) }
            attr_reader :non_fuel
            sig { returns(T.nilable(Tax)) }
            attr_reader :tax
          end
          sig { returns(T.nilable(CardholderPromptData)) }
          attr_reader :cardholder_prompt_data
          sig { returns(T.nilable(String)) }
          attr_reader :purchase_type
          sig { returns(T.nilable(ReportedBreakdown)) }
          attr_reader :reported_breakdown
          sig { returns(T.nilable(String)) }
          attr_reader :service_type
        end
        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :arrival_airport_code
            sig { returns(T.nilable(String)) }
            attr_reader :carrier
            sig { returns(T.nilable(String)) }
            attr_reader :departure_airport_code
            sig { returns(T.nilable(String)) }
            attr_reader :flight_number
            sig { returns(T.nilable(String)) }
            attr_reader :service_class
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :stopover_allowed
          end
          sig { returns(T.nilable(Integer)) }
          attr_reader :departure_at
          sig { returns(T.nilable(String)) }
          attr_reader :passenger_name
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :refundable
          sig { returns(T.nilable(T::Array[Segment])) }
          attr_reader :segments
          sig { returns(T.nilable(String)) }
          attr_reader :travel_agency
        end
        class Fuel < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :industry_product_code
          sig { returns(T.nilable(String)) }
          attr_reader :quantity_decimal
          sig { returns(String) }
          attr_reader :type
          sig { returns(String) }
          attr_reader :unit
          sig { returns(String) }
          attr_reader :unit_cost_decimal
        end
        class Lodging < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :check_in_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :nights
        end
        class Receipt < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :description
          sig { returns(T.nilable(Float)) }
          attr_reader :quantity
          sig { returns(T.nilable(Integer)) }
          attr_reader :total
          sig { returns(T.nilable(Integer)) }
          attr_reader :unit_cost
        end
        sig { returns(T.nilable(Fleet)) }
        attr_reader :fleet
        sig { returns(T.nilable(Flight)) }
        attr_reader :flight
        sig { returns(T.nilable(Fuel)) }
        attr_reader :fuel
        sig { returns(T.nilable(Lodging)) }
        attr_reader :lodging
        sig { returns(T.nilable(T::Array[Receipt])) }
        attr_reader :receipt
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Treasury < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :received_credit
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end
      sig { returns(Integer) }
      # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount
      sig { returns(T.nilable(AmountDetails)) }
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_details
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Authorization))) }
      # The `Authorization` object that led to this transaction.
      attr_reader :authorization
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this transaction.
      attr_reader :balance_transaction
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      # The card used to make this transaction.
      attr_reader :card
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      # The cardholder to whom this transaction belongs.
      attr_reader :cardholder
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Dispute))) }
      # If you've disputed the transaction, the ID of the dispute.
      attr_reader :dispute
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(Integer) }
      # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
      attr_reader :merchant_amount
      sig { returns(String) }
      # The currency with which the merchant is taking payment.
      attr_reader :merchant_currency
      sig { returns(MerchantData) }
      # Attribute for field merchant_data
      attr_reader :merchant_data
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(T.nilable(NetworkData)) }
      # Details about the transaction, such as processing dates, set by the card network.
      attr_reader :network_data
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(PurchaseDetails)) }
      # Additional purchase information that is optionally provided by the merchant.
      attr_reader :purchase_details
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Settlement))) }
      # Attribute for field settlement
      attr_reader :settlement
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
      attr_reader :token
      sig { returns(T.nilable(Treasury)) }
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      attr_reader :treasury
      sig { returns(String) }
      # The nature of the transaction.
      attr_reader :type
      sig { returns(T.nilable(String)) }
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
      attr_reader :wallet
    end
  end
end