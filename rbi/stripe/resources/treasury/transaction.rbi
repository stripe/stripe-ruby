# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
    class Transaction < APIResource
      class BalanceImpact < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :cash
        sig { returns(Integer) }
        attr_reader :inbound_pending
        sig { returns(Integer) }
        attr_reader :outbound_pending
      end
      class FlowDetails < Stripe::StripeObject
        sig { returns(Stripe::Treasury::CreditReversal) }
        attr_reader :credit_reversal
        sig { returns(Stripe::Treasury::DebitReversal) }
        attr_reader :debit_reversal
        sig { returns(Stripe::Treasury::InboundTransfer) }
        attr_reader :inbound_transfer
        sig { returns(Stripe::Issuing::Authorization) }
        attr_reader :issuing_authorization
        sig { returns(Stripe::Treasury::OutboundPayment) }
        attr_reader :outbound_payment
        sig { returns(Stripe::Treasury::OutboundTransfer) }
        attr_reader :outbound_transfer
        sig { returns(Stripe::Treasury::ReceivedCredit) }
        attr_reader :received_credit
        sig { returns(Stripe::Treasury::ReceivedDebit) }
        attr_reader :received_debit
        sig { returns(String) }
        attr_reader :type
      end
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end
      sig { returns(Integer) }
      # Amount (in cents) transferred.
      attr_reader :amount
      sig { returns(BalanceImpact) }
      # Change to a FinancialAccount's balance
      attr_reader :balance_impact
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(Stripe::ListObject)) }
      # A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
      attr_reader :entries
      sig { returns(String) }
      # The FinancialAccount associated with this object.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # ID of the flow that created the Transaction.
      attr_reader :flow
      sig { returns(T.nilable(FlowDetails)) }
      # Details of the flow that created the Transaction.
      attr_reader :flow_details
      sig { returns(String) }
      # Type of the flow that created the Transaction.
      attr_reader :flow_type
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # Status of the Transaction.
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
    end
  end
end