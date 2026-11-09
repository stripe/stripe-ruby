# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # TransactionEntries model funds moving between availability states for a given Transaction.
      class TransactionEntry < APIResource
        class BalanceImpact < ::Stripe::StripeObject
          # The change to the available balance.
          sig { returns(::Stripe::V2::Amount) }
          def available; end
          # The change to the `inbound_pending` balance.
          sig { returns(::Stripe::V2::Amount) }
          def inbound_pending; end
          # The change to the `outbound_pending` balance.
          sig { returns(::Stripe::V2::Amount) }
          def outbound_pending; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TransactionDetails < ::Stripe::StripeObject
          class Flow < ::Stripe::StripeObject
            # If applicable, the ID of the Adjustment that created this Transaction.
            sig { returns(T.nilable(String)) }
            def adjustment; end
            # When available, the ID of the CurrencyConversion that created this Transaction.
            sig { returns(T.nilable(String)) }
            def currency_conversion; end
            # If applicable, the ID of the FeeBatch that created this Transaction.
            sig { returns(T.nilable(String)) }
            def fee_batch; end
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
            # Open Enum. The type of flow that created the Transaction. When available, the flow's ID is provided in the corresponding field.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. The category of this TransactionEntry's parent Transaction.
          sig { returns(String) }
          def category; end
          # The ID of the FinancialAccount affected by this Transaction.
          sig { returns(String) }
          def financial_account; end
          # Details about the flow object that created the Transaction this entry belongs to, such as an
          # InboundTransfer or OutboundPayment. `transaction_details.flow.type` identifies the kind of object.
          # The corresponding field contains its ID, when available: for an InboundTransfer,
          # `transaction_details.flow.inbound_transfer` contains the InboundTransfer's ID. To list entries for
          # the parent Transaction, pass the TransactionEntry's `transaction` ID to the `transaction` parameter
          # on List Transaction Entries.
          sig { returns(T.nilable(Flow)) }
          def flow; end
          def self.inner_class_types
            @inner_class_types = {flow: Flow}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The change to the FinancialAccount's balance that takes effect at this TransactionEntry's `effective_at` timestamp.
        sig { returns(BalanceImpact) }
        def balance_impact; end
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # Time at which the TransactionEntry affects the FinancialAccount balance. This can be in the past or future.
        sig { returns(String) }
        def effective_at; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Transaction that this TransactionEntry belongs to.
        sig { returns(String) }
        def transaction; end
        # Details copied from the Transaction that this TransactionEntry belongs to.
        sig { returns(TransactionDetails) }
        def transaction_details; end
      end
    end
  end
end