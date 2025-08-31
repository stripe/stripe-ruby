# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use Transactions to view changes to your FinancialAccount balance over time. Every flow that moves money, such as OutboundPayments or ReceivedCredits, will have one or more Transactions that describes how the flow impacted your balance. Note that while the FinancialAccount balance will always be up to date, be aware that Transactions and TransactionEntries are created shortly after to reflect changes.
      class Transaction < APIResource
        class BalanceImpact < Stripe::StripeObject
          # Impact to the available balance.
          sig { returns(Stripe::V2::Amount) }
          def available; end
          # Impact to the inbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          def inbound_pending; end
          # Impact to the outbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          def outbound_pending; end
        end
        class Flow < Stripe::StripeObject
          # Open Enum. Type of the flow that created the Transaction. The field matching this value will contain the ID of the flow.
          sig { returns(String) }
          def type; end
          # If applicable, the ID of the Adjustment that created this Transaction.
          sig { returns(T.nilable(String)) }
          def adjustment; end
          # In the future, this will be the ID of the currency conversion that created this Transaction. For now, this field is always null.
          sig { returns(T.nilable(String)) }
          def currency_conversion; end
          # If applicable, the ID of the FeeTransaction that created this Transaction.
          sig { returns(T.nilable(String)) }
          def fee_transaction; end
          # If applicable, the ID of the InboundTransfer that created this Transaction.
          sig { returns(T.nilable(String)) }
          def inbound_transfer; end
          # If applicable, the ID of the OutboundPayment that created this Transaction.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # If applicable, the ID of the OutboundTransfer that created this Transaction.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # If applicable, the ID of the ReceivedCredit that created this Transaction.
          sig { returns(T.nilable(String)) }
          def received_credit; end
          # If applicable, the ID of the ReceivedDebit that created this Transaction.
          sig { returns(T.nilable(String)) }
          def received_debit; end
        end
        class StatusTransitions < Stripe::StripeObject
          # The time at which the Transaction became posted. Only present if status == posted.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # The time at which the Transaction became void. Only present if status == void.
          sig { returns(T.nilable(String)) }
          def void_at; end
        end
        # The amount of the Transaction.
        sig { returns(Stripe::V2::Amount) }
        def amount; end
        # The delta to the FinancialAccount's balance. The balance_impact for the Transaction is equal to sum of its
        # TransactionEntries that have `effective_at`s in the past.
        sig { returns(BalanceImpact) }
        def balance_impact; end
        # Open Enum. A descriptive category used to classify the Transaction.
        sig { returns(String) }
        def category; end
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Indicates the FinancialAccount affected by this Transaction.
        sig { returns(String) }
        def financial_account; end
        # Details about the Flow object that created the Transaction.
        sig { returns(Flow) }
        def flow; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Closed Enum. Current status of the Transaction.
        # A Transaction is `pending` if either `balance_impact.inbound_pending` or `balance_impact.outbound_pending` is non-zero.
        # A Transaction is `posted` if only `balance_impact.available` is non-zero.
        # A Transaction is `void` if there is no balance impact.
        # `posted` and `void` are terminal states, and no additional entries will be added to the Transaction.
        sig { returns(String) }
        def status; end
        # Timestamps for when the Transaction transitioned to a particular status.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end