# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.transaction"
      def self.object_name
        "treasury.transaction"
      end

      class BalanceImpact < Stripe::StripeObject
        attr_reader :cash, :inbound_pending, :outbound_pending
      end

      class FlowDetails < Stripe::StripeObject
        attr_reader :credit_reversal, :debit_reversal, :inbound_transfer, :issuing_authorization, :outbound_payment, :outbound_transfer, :received_credit, :received_debit, :type
      end

      class StatusTransitions < Stripe::StripeObject
        attr_reader :posted_at, :void_at
      end
      # Amount (in cents) transferred.
      attr_reader :amount
      # Change to a FinancialAccount's balance
      attr_reader :balance_impact
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
      attr_reader :entries
      # The FinancialAccount associated with this object.
      attr_reader :financial_account
      # ID of the flow that created the Transaction.
      attr_reader :flow
      # Details of the flow that created the Transaction.
      attr_reader :flow_details
      # Type of the flow that created the Transaction.
      attr_reader :flow_type
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Status of the Transaction.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions

      # Retrieves a list of Transaction objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/transactions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
