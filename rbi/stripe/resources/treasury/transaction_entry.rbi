# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # TransactionEntries represent individual units of money movements within a single [Transaction](https://stripe.com/docs/api#transactions).
    class TransactionEntry < APIResource
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
      sig { returns(BalanceImpact) }
      # Change to a FinancialAccount's balance
      attr_reader :balance_impact
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(Integer) }
      # When the TransactionEntry will impact the FinancialAccount's balance.
      attr_reader :effective_at
      sig { returns(String) }
      # The FinancialAccount associated with this object.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # Token of the flow associated with the TransactionEntry.
      attr_reader :flow
      sig { returns(T.nilable(FlowDetails)) }
      # Details of the flow associated with the TransactionEntry.
      attr_reader :flow_details
      sig { returns(String) }
      # Type of the flow associated with the TransactionEntry.
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
      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      # The Transaction associated with this object.
      attr_reader :transaction
      sig { returns(String) }
      # The specific money movement that generated the TransactionEntry.
      attr_reader :type
    end
  end
end