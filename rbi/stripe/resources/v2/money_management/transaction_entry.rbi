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
            # If applicable, the connected account associated with this Transaction's flow.
            sig { returns(T.nilable(String)) }
            def account; end
            # If applicable, the ID of the Adjustment that created this Transaction.
            sig { returns(T.nilable(String)) }
            def adjustment; end
            # If applicable, the ID of the Application Fee that created this Transaction.
            sig { returns(T.nilable(String)) }
            def application_fee; end
            # If applicable, the ID of the Application Fee Refund that created this Transaction.
            sig { returns(T.nilable(String)) }
            def application_fee_refund; end
            # If applicable, the ID of the Charge that created this Transaction.
            sig { returns(T.nilable(String)) }
            def charge; end
            # When available, the ID of the CurrencyConversion that created this Transaction.
            sig { returns(T.nilable(String)) }
            def currency_conversion; end
            # If applicable, the ID of the DebitDispute that created this Transaction.
            sig { returns(T.nilable(String)) }
            def debit_dispute; end
            # If applicable, the ID of the Dispute that created this Transaction.
            sig { returns(T.nilable(String)) }
            def dispute; end
            # If applicable, the ID of the EarnedCredit that created this Transaction.
            sig { returns(T.nilable(String)) }
            def earned_credit; end
            # If applicable, the ID of the FeeBatch that created this Transaction.
            sig { returns(T.nilable(String)) }
            def fee_batch; end
            # If applicable, the ID of the InboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            def inbound_transfer; end
            # If applicable, the ID of the Issuing authorization that created this Transaction.
            sig { returns(T.nilable(String)) }
            def issuing_authorization; end
            # If applicable, the ID of the Issuing dispute that created this Transaction.
            sig { returns(T.nilable(String)) }
            def issuing_dispute; end
            # If applicable, the ID of the Issuing transaction that created this Transaction.
            sig { returns(T.nilable(String)) }
            def issuing_transaction; end
            # If applicable, the ID of the OutboundPayment that created this Transaction.
            sig { returns(T.nilable(String)) }
            def outbound_payment; end
            # If applicable, the ID of the OutboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            def outbound_transfer; end
            # If applicable, the ID of the Payout that created this Transaction.
            sig { returns(T.nilable(String)) }
            def payout; end
            # If applicable, the ID of the ReceivedCredit that created this Transaction.
            sig { returns(T.nilable(String)) }
            def received_credit; end
            # If applicable, the ID of the ReceivedDebit that created this Transaction.
            sig { returns(T.nilable(String)) }
            def received_debit; end
            # If applicable, the ID of the Refund that created this Transaction.
            sig { returns(T.nilable(String)) }
            def refund; end
            # If applicable, the ID of the Reserve Hold that created this Transaction.
            sig { returns(T.nilable(String)) }
            def reserve_hold; end
            # If applicable, the ID of the Reserve Release that created this Transaction.
            sig { returns(T.nilable(String)) }
            def reserve_release; end
            # If applicable, the ID of the TaxFund that created this Transaction.
            sig { returns(T.nilable(String)) }
            def tax_fund; end
            # If applicable, the ID of the Topup that created this Transaction.
            sig { returns(T.nilable(String)) }
            def topup; end
            # If applicable, the ID of the Transfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            def transfer; end
            # If applicable, the ID of the Transfer Reversal that created this Transaction.
            sig { returns(T.nilable(String)) }
            def transfer_reversal; end
            # If applicable, the ID of the Treasury CreditReversal that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_credit_reversal; end
            # If applicable, the ID of the Treasury DebitReversal that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_debit_reversal; end
            # If applicable, the ID of the Treasury InboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_inbound_transfer; end
            # If applicable, the ID of the Treasury IssuingAuthorization that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_issuing_authorization; end
            # If applicable, the ID of the Treasury OutboundPayment that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_outbound_payment; end
            # If applicable, the ID of the Treasury OutboundTransfer that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_outbound_transfer; end
            # If applicable, the ID of the Treasury ReceivedCredit that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_received_credit; end
            # If applicable, the ID of the Treasury ReceivedDebit that created this Transaction.
            sig { returns(T.nilable(String)) }
            def treasury_received_debit; end
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
        # The v1 Treasury transaction entry associated with this transaction entry.
        sig { returns(T.nilable(String)) }
        def treasury_transaction_entry; end
      end
    end
  end
end