# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Any use of an [issued card](https://docs.stripe.com/issuing) that results in funds entering or leaving
    # your Stripe account, such as a completed purchase or refund, is represented by an Issuing
    # `Transaction` object.
    #
    # Related guide: [Issued card transactions](https://docs.stripe.com/issuing/purchases/transactions)
    class Transaction < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction"
      def self.object_name
        "issuing.transaction"
      end

      class AmountDetails < ::Stripe::StripeObject
        # The fee charged by the ATM for the cash withdrawal.
        attr_reader :atm_fee
        # The amount of cash requested by the cardholder.
        attr_reader :cashback_amount

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CryptoTransaction < ::Stripe::StripeObject
        class CryptoTransactionConfirmed < ::Stripe::StripeObject
          class Fee < ::Stripe::StripeObject
            # The fee amount.
            attr_reader :amount
            # The fee currency.
            attr_reader :currency
            # The fee type.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The crypto amount for the confirmed transaction.
          attr_reader :amount
          # The upcharged MCC amount, if one was applied.
          attr_reader :amount_mcc_upcharged
          # The blockchain network for the confirmed transaction.
          attr_reader :chain
          # When the transaction was confirmed onchain.
          attr_reader :confirmed_at
          # The currency of the crypto transaction amount.
          attr_reader :currency
          # Fees associated with the transaction.
          attr_reader :fees
          # The source wallet address for the transaction.
          attr_reader :from_address
          # Memo metadata attached to the transaction, if present.
          attr_reader :memo
          # The destination wallet address for the transaction.
          attr_reader :to_address
          # The blockchain transaction hash.
          attr_reader :transaction_hash

          def self.inner_class_types
            @inner_class_types = { fees: Fee }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CryptoTransactionFailed < ::Stripe::StripeObject
          class Fee < ::Stripe::StripeObject
            # The fee amount.
            attr_reader :amount
            # The fee currency.
            attr_reader :currency
            # The fee type.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The crypto amount for the failed transaction.
          attr_reader :amount
          # The upcharged MCC amount, if one was applied.
          attr_reader :amount_mcc_upcharged
          # The blockchain network for the failed transaction.
          attr_reader :chain
          # The currency of the crypto transaction amount.
          attr_reader :currency
          # When the transaction failed.
          attr_reader :failed_at
          # The reason the transaction failed.
          attr_reader :failure_reason
          # Fees associated with the transaction.
          attr_reader :fees
          # The source wallet address for the attempted transaction.
          attr_reader :from_address
          # Memo metadata attached to the transaction, if present.
          attr_reader :memo
          # The destination wallet address for the attempted transaction when one exists.
          attr_reader :to_address
          # The blockchain transaction hash when one exists.
          attr_reader :transaction_hash

          def self.inner_class_types
            @inner_class_types = { fees: Fee }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The confirmed crypto transaction details when `type` is `crypto_transaction_confirmed`; otherwise null.
        attr_reader :crypto_transaction_confirmed
        # The failed crypto transaction details when `type` is `crypto_transaction_failed`; otherwise null.
        attr_reader :crypto_transaction_failed
        # The crypto transaction variant for this array entry.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            crypto_transaction_confirmed: CryptoTransactionConfirmed,
            crypto_transaction_failed: CryptoTransactionFailed,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class MerchantData < ::Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://docs.stripe.com/issuing/merchant-categories) for a list of possible values.
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
        # The identifier of the payment facilitator (PayFac) that processed this authorization, as assigned by the card network. Null when the transaction was not processed through a PayFac.
        attr_reader :payment_facilitator_id
        # Postal code where the seller is located
        attr_reader :postal_code
        # State where the seller is located
        attr_reader :state
        # The identifier of the sub-merchant involved in this authorization, as assigned by the payment facilitator. Null when the transaction was not processed through a PayFac or when no sub-merchant ID was provided.
        attr_reader :sub_merchant_id
        # The seller's tax identification number. Currently populated for French merchants only.
        attr_reader :tax_id
        # An ID assigned by the seller to the location of the sale.
        attr_reader :terminal_id
        # URL provided by the merchant on a 3DS request
        attr_reader :url

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class NetworkData < ::Stripe::StripeObject
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        attr_reader :authorization_code
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        attr_reader :processing_date
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        attr_reader :transaction_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class PurchaseDetails < ::Stripe::StripeObject
        class Fleet < ::Stripe::StripeObject
          class CardholderPromptData < ::Stripe::StripeObject
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

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ReportedBreakdown < ::Stripe::StripeObject
            class Fuel < ::Stripe::StripeObject
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              attr_reader :gross_amount_decimal

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { gross_amount_decimal: :decimal_string }
              end
            end

            class NonFuel < ::Stripe::StripeObject
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              attr_reader :gross_amount_decimal

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { gross_amount_decimal: :decimal_string }
              end
            end

            class Tax < ::Stripe::StripeObject
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              attr_reader :local_amount_decimal
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              attr_reader :national_amount_decimal

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = {
                  local_amount_decimal: :decimal_string,
                  national_amount_decimal: :decimal_string,
                }
              end
            end
            # Breakdown of fuel portion of the purchase.
            attr_reader :fuel
            # Breakdown of non-fuel portion of the purchase.
            attr_reader :non_fuel
            # Information about tax included in this transaction.
            attr_reader :tax

            def self.inner_class_types
              @inner_class_types = { fuel: Fuel, non_fuel: NonFuel, tax: Tax }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                non_fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                tax: {
                  kind: :object,
                  fields: {
                    local_amount_decimal: :decimal_string,
                    national_amount_decimal: :decimal_string,
                  },
                },
              }
            end
          end
          # Answers to prompts presented to cardholder at point of sale.
          attr_reader :cardholder_prompt_data
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          attr_reader :purchase_type
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          attr_reader :reported_breakdown
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          attr_reader :service_type

          def self.inner_class_types
            @inner_class_types = {
              cardholder_prompt_data: CardholderPromptData,
              reported_breakdown: ReportedBreakdown,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              reported_breakdown: {
                kind: :object,
                fields: {
                  fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                  non_fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                  tax: {
                    kind: :object,
                    fields: {
                      local_amount_decimal: :decimal_string,
                      national_amount_decimal: :decimal_string,
                    },
                  },
                },
              },
            }
          end
        end

        class Flight < ::Stripe::StripeObject
          class Segment < ::Stripe::StripeObject
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

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
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

          def self.inner_class_types
            @inner_class_types = { segments: Segment }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Fuel < ::Stripe::StripeObject
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

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              quantity_decimal: :decimal_string,
              unit_cost_decimal: :decimal_string,
            }
          end
        end

        class Lodging < ::Stripe::StripeObject
          # The time of checking into the lodging.
          attr_reader :check_in_at
          # The number of nights stayed at the lodging.
          attr_reader :nights

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Receipt < ::Stripe::StripeObject
          # The description of the item. The maximum length of this field is 26 characters.
          attr_reader :description
          # The quantity of the item.
          attr_reader :quantity
          # The total for this line item in cents.
          attr_reader :total
          # The unit cost of the item in cents.
          attr_reader :unit_cost

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
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

        def self.inner_class_types
          @inner_class_types = {
            fleet: Fleet,
            flight: Flight,
            fuel: Fuel,
            lodging: Lodging,
            receipt: Receipt,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            fleet: {
              kind: :object,
              fields: {
                reported_breakdown: {
                  kind: :object,
                  fields: {
                    fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                    non_fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                    tax: {
                      kind: :object,
                      fields: {
                        local_amount_decimal: :decimal_string,
                        national_amount_decimal: :decimal_string,
                      },
                    },
                  },
                },
              },
            },
            fuel: {
              kind: :object,
              fields: { quantity_decimal: :decimal_string, unit_cost_decimal: :decimal_string },
            },
          }
        end
      end

      class Treasury < ::Stripe::StripeObject
        # The Treasury [ReceivedCredit](https://docs.stripe.com/api/treasury/received_credits) representing this Issuing transaction if it is a refund
        attr_reader :received_credit
        # The Treasury [ReceivedDebit](https://docs.stripe.com/api/treasury/received_debits) representing this Issuing transaction if it is a capture
        attr_reader :received_debit

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      attr_reader :amount
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      attr_reader :amount_details
      # The `Authorization` object that led to this transaction.
      attr_reader :authorization
      # ID of the [balance transaction](https://docs.stripe.com/api/balance_transactions) associated with this transaction.
      attr_reader :balance_transaction
      # The card used to make this transaction.
      attr_reader :card
      # The cardholder to whom this transaction belongs.
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Array of onchain crypto transactions linked to this resource.
      attr_reader :crypto_transactions
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # If you've disputed the transaction, the ID of the dispute.
      attr_reader :dispute
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
      attr_reader :merchant_amount
      # The currency with which the merchant is taking payment.
      attr_reader :merchant_currency
      # Attribute for field merchant_data
      attr_reader :merchant_data
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Details about the transaction, such as processing dates, set by the card network.
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Additional purchase information that is optionally provided by the merchant.
      attr_reader :purchase_details
      # The ID of the [settlement](https://docs.stripe.com/api/issuing/settlements) to which this transaction belongs.
      attr_reader :settlement
      # [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
      attr_reader :token
      # [Treasury](https://docs.stripe.com/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
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

      def self.inner_class_types
        @inner_class_types = {
          amount_details: AmountDetails,
          crypto_transactions: CryptoTransaction,
          merchant_data: MerchantData,
          network_data: NetworkData,
          purchase_details: PurchaseDetails,
          treasury: Treasury,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end

      def self.field_encodings
        @field_encodings = {
          purchase_details: {
            kind: :object,
            fields: {
              fleet: {
                kind: :object,
                fields: {
                  reported_breakdown: {
                    kind: :object,
                    fields: {
                      fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                      non_fuel: { kind: :object, fields: { gross_amount_decimal: :decimal_string } },
                      tax: {
                        kind: :object,
                        fields: {
                          local_amount_decimal: :decimal_string,
                          national_amount_decimal: :decimal_string,
                        },
                      },
                    },
                  },
                },
              },
              fuel: {
                kind: :object,
                fields: { quantity_decimal: :decimal_string, unit_cost_decimal: :decimal_string },
              },
            },
          },
        }
      end
    end
  end
end
