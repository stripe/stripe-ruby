# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # TransactionEntries model funds moving between availability states for a given Transaction.
      class TransactionEntry < APIResource
        OBJECT_NAME = "v2.money_management.transaction_entry"
        def self.object_name
          "v2.money_management.transaction_entry"
        end

        class BalanceImpact < ::Stripe::StripeObject
          # The change to the available balance.
          attr_reader :available
          # The change to the `inbound_pending` balance.
          attr_reader :inbound_pending
          # The change to the `outbound_pending` balance.
          attr_reader :outbound_pending

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
            attr_reader :account
            # If applicable, the ID of the Adjustment that created this Transaction.
            attr_reader :adjustment
            # If applicable, the ID of the Application Fee that created this Transaction.
            attr_reader :application_fee
            # If applicable, the ID of the Application Fee Refund that created this Transaction.
            attr_reader :application_fee_refund
            # If applicable, the ID of the Charge that created this Transaction.
            attr_reader :charge
            # When available, the ID of the CurrencyConversion that created this Transaction.
            attr_reader :currency_conversion
            # If applicable, the ID of the DebitDispute that created this Transaction.
            attr_reader :debit_dispute
            # If applicable, the ID of the Dispute that created this Transaction.
            attr_reader :dispute
            # If applicable, the ID of the EarnedCredit that created this Transaction.
            attr_reader :earned_credit
            # If applicable, the ID of the FeeBatch that created this Transaction.
            attr_reader :fee_batch
            # If applicable, the ID of the InboundTransfer that created this Transaction.
            attr_reader :inbound_transfer
            # If applicable, the ID of the Issuing authorization that created this Transaction.
            attr_reader :issuing_authorization
            # If applicable, the ID of the Issuing dispute that created this Transaction.
            attr_reader :issuing_dispute
            # If applicable, the ID of the Issuing transaction that created this Transaction.
            attr_reader :issuing_transaction
            # If applicable, the ID of the OutboundPayment that created this Transaction.
            attr_reader :outbound_payment
            # If applicable, the ID of the OutboundTransfer that created this Transaction.
            attr_reader :outbound_transfer
            # If applicable, the ID of the Payout that created this Transaction.
            attr_reader :payout
            # If applicable, the ID of the ReceivedCredit that created this Transaction.
            attr_reader :received_credit
            # If applicable, the ID of the ReceivedDebit that created this Transaction.
            attr_reader :received_debit
            # If applicable, the ID of the Refund that created this Transaction.
            attr_reader :refund
            # If applicable, the ID of the Reserve Hold that created this Transaction.
            attr_reader :reserve_hold
            # If applicable, the ID of the Reserve Release that created this Transaction.
            attr_reader :reserve_release
            # If applicable, the ID of the TaxFund that created this Transaction.
            attr_reader :tax_fund
            # If applicable, the ID of the Topup that created this Transaction.
            attr_reader :topup
            # If applicable, the ID of the Transfer that created this Transaction.
            attr_reader :transfer
            # If applicable, the ID of the Transfer Reversal that created this Transaction.
            attr_reader :transfer_reversal
            # If applicable, the ID of the Treasury CreditReversal that created this Transaction.
            attr_reader :treasury_credit_reversal
            # If applicable, the ID of the Treasury DebitReversal that created this Transaction.
            attr_reader :treasury_debit_reversal
            # If applicable, the ID of the Treasury InboundTransfer that created this Transaction.
            attr_reader :treasury_inbound_transfer
            # If applicable, the ID of the Treasury IssuingAuthorization that created this Transaction.
            attr_reader :treasury_issuing_authorization
            # If applicable, the ID of the Treasury OutboundPayment that created this Transaction.
            attr_reader :treasury_outbound_payment
            # If applicable, the ID of the Treasury OutboundTransfer that created this Transaction.
            attr_reader :treasury_outbound_transfer
            # If applicable, the ID of the Treasury ReceivedCredit that created this Transaction.
            attr_reader :treasury_received_credit
            # If applicable, the ID of the Treasury ReceivedDebit that created this Transaction.
            attr_reader :treasury_received_debit
            # Open Enum. The type of flow that created the Transaction. When available, the flow's ID is provided in the corresponding field.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. The category of this TransactionEntry's parent Transaction.
          attr_reader :category
          # The ID of the FinancialAccount affected by this Transaction.
          attr_reader :financial_account
          # Details about the flow object that created the Transaction this entry belongs to, such as an
          # InboundTransfer or OutboundPayment. `transaction_details.flow.type` identifies the kind of object.
          # The corresponding field contains its ID, when available: for an InboundTransfer,
          # `transaction_details.flow.inbound_transfer` contains the InboundTransfer's ID. To list entries for
          # the parent Transaction, pass the TransactionEntry's `transaction` ID to the `transaction` parameter
          # on List Transaction Entries.
          attr_reader :flow

          def self.inner_class_types
            @inner_class_types = { flow: Flow }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The change to the FinancialAccount's balance that takes effect at this TransactionEntry's `effective_at` timestamp.
        attr_reader :balance_impact
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # Time at which the TransactionEntry affects the FinancialAccount balance. This can be in the past or future.
        attr_reader :effective_at
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the Transaction that this TransactionEntry belongs to.
        attr_reader :transaction
        # Details copied from the Transaction that this TransactionEntry belongs to.
        attr_reader :transaction_details
        # The v1 Treasury transaction entry associated with this transaction entry.
        attr_reader :treasury_transaction_entry

        def self.inner_class_types
          @inner_class_types = {
            balance_impact: BalanceImpact,
            transaction_details: TransactionDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
