# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
    class ReceivedDebit < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.received_debit"
      def self.object_name
        "treasury.received_debit"
      end

      class InitiatingPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_reader :line2
            # ZIP or postal code.
            attr_reader :postal_code
            # State, county, province, or region.
            attr_reader :state
          end
          # Attribute for field address
          attr_reader :address
          # Email address.
          attr_reader :email
          # Full name.
          attr_reader :name
        end

        class FinancialAccount < Stripe::StripeObject
          # The FinancialAccount ID.
          attr_reader :id
          # The rails the ReceivedCredit was sent over. A FinancialAccount can only send funds over `stripe`.
          attr_reader :network
        end

        class UsBankAccount < Stripe::StripeObject
          # Bank name.
          attr_reader :bank_name
          # The last four digits of the bank account number.
          attr_reader :last4
          # The routing number for the bank account.
          attr_reader :routing_number
        end
        # Set when `type` is `balance`.
        attr_reader :balance
        # Attribute for field billing_details
        attr_reader :billing_details
        # Attribute for field financial_account
        attr_reader :financial_account
        # Set when `type` is `issuing_card`. This is an [Issuing Card](https://stripe.com/docs/api#issuing_cards) ID.
        attr_reader :issuing_card
        # Polymorphic type matching the originating money movement's source. This can be an external account, a Stripe balance, or a FinancialAccount.
        attr_reader :type
        # Attribute for field us_bank_account
        attr_reader :us_bank_account
      end

      class LinkedFlows < Stripe::StripeObject
        # The DebitReversal created as a result of this ReceivedDebit being reversed.
        attr_reader :debit_reversal
        # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
        attr_reader :inbound_transfer
        # Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
        attr_reader :issuing_authorization
        # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
        attr_reader :issuing_transaction
        # Set if the ReceivedDebit was created due to a [Payout](https://stripe.com/docs/api#payouts) object.
        attr_reader :payout
      end

      class ReversalDetails < Stripe::StripeObject
        # Time before which a ReceivedDebit can be reversed.
        attr_reader :deadline
        # Set if a ReceivedDebit can't be reversed.
        attr_reader :restricted_reason
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The FinancialAccount that funds were pulled from.
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return ReceivedDebits that have the given status: `succeeded` or `failed`.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @financial_account = financial_account
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class InitiatingPaymentMethodDetails < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # The bank account holder's name.
            attr_accessor :account_holder_name
            # The bank account number.
            attr_accessor :account_number
            # The bank account's routing number.
            attr_accessor :routing_number

            def initialize(account_holder_name: nil, account_number: nil, routing_number: nil)
              @account_holder_name = account_holder_name
              @account_number = account_number
              @routing_number = routing_number
            end
          end
          # The source type.
          attr_accessor :type
          # Optional fields for `us_bank_account`.
          attr_accessor :us_bank_account

          def initialize(type: nil, us_bank_account: nil)
            @type = type
            @us_bank_account = us_bank_account
          end
        end
        # Amount (in cents) to be transferred.
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The FinancialAccount to pull funds from.
        attr_accessor :financial_account
        # Initiating payment method details for the object.
        attr_accessor :initiating_payment_method_details
        # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
        attr_accessor :network

        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          expand: nil,
          financial_account: nil,
          initiating_payment_method_details: nil,
          network: nil
        )
          @amount = amount
          @currency = currency
          @description = description
          @expand = expand
          @financial_account = financial_account
          @initiating_payment_method_details = initiating_payment_method_details
          @network = network
        end
      end
      # Amount (in cents) transferred.
      attr_reader :amount
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
      attr_reader :failure_code
      # The FinancialAccount that funds were pulled from.
      attr_reader :financial_account
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field initiating_payment_method_details
      attr_reader :initiating_payment_method_details
      # Attribute for field linked_flows
      attr_reader :linked_flows
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The network used for the ReceivedDebit.
      attr_reader :network
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Details describing when a ReceivedDebit might be reversed.
      attr_reader :reversal_details
      # Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
      attr_reader :status
      # The Transaction associated with this object.
      attr_reader :transaction

      # Returns a list of ReceivedDebits.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/received_debits",
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = ReceivedDebit
        def self.resource_class
          "ReceivedDebit"
        end

        # Use this endpoint to simulate a test mode ReceivedDebit initiated by a third party. In live mode, you can't directly create ReceivedDebits initiated by third parties.
        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/treasury/received_debits",
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
