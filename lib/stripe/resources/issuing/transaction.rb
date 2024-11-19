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
        attr_reader :atm_fee, :cashback_amount
      end

      class MerchantData < Stripe::StripeObject
        attr_reader :category, :category_code, :city, :country, :name, :network_id, :postal_code, :state, :terminal_id, :url
      end

      class NetworkData < Stripe::StripeObject
        attr_reader :authorization_code, :processing_date, :transaction_id
      end

      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            attr_reader :driver_id, :odometer, :unspecified_id, :user_id, :vehicle_number
          end

          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              attr_reader :gross_amount_decimal
            end

            class NonFuel < Stripe::StripeObject
              attr_reader :gross_amount_decimal
            end

            class Tax < Stripe::StripeObject
              attr_reader :local_amount_decimal, :national_amount_decimal
            end
            attr_reader :fuel, :non_fuel, :tax
          end
          attr_reader :cardholder_prompt_data, :purchase_type, :reported_breakdown, :service_type
        end

        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            attr_reader :arrival_airport_code, :carrier, :departure_airport_code, :flight_number, :service_class, :stopover_allowed
          end
          attr_reader :departure_at, :passenger_name, :refundable, :segments, :travel_agency
        end

        class Fuel < Stripe::StripeObject
          attr_reader :industry_product_code, :quantity_decimal, :type, :unit, :unit_cost_decimal
        end

        class Lodging < Stripe::StripeObject
          attr_reader :check_in_at, :nights
        end

        class Receipt < Stripe::StripeObject
          attr_reader :description, :quantity, :total, :unit_cost
        end
        attr_reader :fleet, :flight, :fuel, :lodging, :receipt, :reference
      end

      class Treasury < Stripe::StripeObject
        attr_reader :received_credit, :received_debit
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
      # Attribute for field settlement
      attr_reader :settlement
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
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/transactions/%<id>s", { id: CGI.escape(id) }),
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
