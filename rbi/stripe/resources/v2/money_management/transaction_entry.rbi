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
          def available; end
          # Impact to the inbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          def inbound_pending; end
          # Impact to the outbound_pending balance.
          sig { returns(Stripe::V2::Amount) }
          def outbound_pending; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TransactionDetails < Stripe::StripeObject
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
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Closed Enum for now, and will be turned into an Open Enum soon. A descriptive category used to classify the Transaction.
          sig { returns(String) }
          def category; end
          # Indicates the FinancialAccount affected by this Transaction.
          sig { returns(String) }
          def financial_account; end
          # Details about the Flow object that created the Transaction.
          sig { returns(Flow) }
          def flow; end
          def self.inner_class_types
            @inner_class_types = {flow: Flow}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The delta to the FinancialAccount's balance.
        sig { returns(BalanceImpact) }
        def balance_impact; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Time at which the entry impacted (or will impact if it's in the future) the FinancialAccount balance.
        sig { returns(String) }
        def effective_at; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The Transaction that this TransactionEntry belongs to.
        sig { returns(String) }
        def transaction; end
        # Details copied from the transaction that this TransactionEntry belongs to.
        sig { returns(TransactionDetails) }
        def transaction_details; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end