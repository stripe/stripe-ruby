# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # TransactionEntries represent individual money movements across different states within a Transaction.
      class TransactionEntry < APIResource
        class BalanceImpact < Stripe::StripeObject
          # Impact to the available balance.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :available
          # Impact to the inbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :inbound_pending
          # Impact to the outbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :outbound_pending
        end
        class TransactionDetails < Stripe::StripeObject
          class Flow < Stripe::StripeObject
            # Open Enum. Type of the flow that created the Transaction. The field matching this value will contain the ID of the flow.
            sig { returns(String) }
            attr_reader :type
            # If applicable, the ID of the Adjustment that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :adjustment
            # If applicable, the ID of the FeeTransaction that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :fee_transaction
            # If applicable, the ID of the InboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :inbound_transfer
            # If applicable, the ID of the OutboundPayment that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :outbound_payment
            # If applicable, the ID of the OutboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :outbound_transfer
            # If applicable, the ID of the ReceivedCredit that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :received_credit
            # If applicable, the ID of the ReceivedDebit that created this Transaction.
            sig { returns(T.nilable(String)) }
            attr_reader :received_debit
          end
          # Closed Enum for now, and will be turned into an Open Enum soon. A descriptive category used to classify the Transaction.
          sig { returns(String) }
          attr_reader :category
          # Indicates the FinancialAccount affected by this Transaction.
          sig { returns(String) }
          attr_reader :financial_account
          # Details about the Flow object that created the Transaction.
          sig { returns(Flow) }
          attr_reader :flow
        end
        # The delta to the FinancialAccount's balance.
        sig { returns(BalanceImpact) }
        attr_reader :balance_impact
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Time at which the entry impacted (or will impact if it's in the future) the FinancialAccount balance.
        sig { returns(String) }
        attr_reader :effective_at
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The Transaction that this TransactionEntry belongs to.
        sig { returns(String) }
        attr_reader :transaction
        # Details copied from the transaction that this TransactionEntry belongs to.
        sig { returns(TransactionDetails) }
        attr_reader :transaction_details
      end
    end
  end
end