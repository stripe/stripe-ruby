# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # TransactionEntries represent individual units of money movements within a single [Transaction](https://stripe.com/docs/api#transactions).
    class TransactionEntry < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.transaction_entry"
      def self.object_name
        "treasury.transaction_entry"
      end

      class BalanceImpact < Stripe::StripeObject
        attr_reader :cash, :inbound_pending, :outbound_pending
      end

      class FlowDetails < Stripe::StripeObject
        attr_reader :credit_reversal, :debit_reversal, :inbound_transfer, :issuing_authorization, :outbound_payment, :outbound_transfer, :received_credit, :received_debit, :type
      end
      # Change to a FinancialAccount's balance
      attr_reader :balance_impact
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # When the TransactionEntry will impact the FinancialAccount's balance.
      attr_reader :effective_at
      # The FinancialAccount associated with this object.
      attr_reader :financial_account
      # Token of the flow associated with the TransactionEntry.
      attr_reader :flow
      # Details of the flow associated with the TransactionEntry.
      attr_reader :flow_details
      # Type of the flow associated with the TransactionEntry.
      attr_reader :flow_type
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The Transaction associated with this object.
      attr_reader :transaction
      # The specific money movement that generated the TransactionEntry.
      attr_reader :type

      # Retrieves a list of TransactionEntry objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/transaction_entries",
          params: params,
          opts: opts
        )
      end

      def self.resource_url
        "/v1/treasury/transaction_entries"
      end
    end
  end
end
