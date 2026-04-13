# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # TransactionEntries represent individual money movements across different states within a Transaction.
      class TransactionEntry < APIResource
        OBJECT_NAME = "v2.money_management.transaction_entry"
        def self.object_name
          "v2.money_management.transaction_entry"
        end

        class BalanceImpact < ::Stripe::StripeObject
          # Impact to the available balance.
          attr_reader :available
          # Impact to the inbound_pending balance.
          attr_reader :inbound_pending
          # Impact to the outbound_pending balance.
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
            # If applicable, the ID of the Adjustment that created this Transaction.
            attr_reader :adjustment
            # If applicable, the ID of the Application Fee that created this Transaction.
            attr_reader :application_fee
            # If applicable, the ID of the Application Fee Refund that created this Transaction.
            attr_reader :application_fee_refund
            # If applicable, the ID of the Charge that created this Transaction.
            attr_reader :charge
            # In the future, this will be the ID of the currency conversion that created this Transaction. For now, this field is always null.
            attr_reader :currency_conversion
            # If applicable, the ID of the Dispute that created this Transaction.
            attr_reader :dispute
            # If applicable, the ID of the FeeTransaction that created this Transaction.
            attr_reader :fee_transaction
            # If applicable, the ID of the InboundTransfer that created this Transaction.
            attr_reader :inbound_transfer
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
            # Open Enum. Type of the flow that created the Transaction. The field matching this value will contain the ID of the flow.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Closed Enum for now, and will be turned into an Open Enum soon. A descriptive category used to classify the Transaction.
          attr_reader :category
          # Indicates the FinancialAccount affected by this Transaction.
          attr_reader :financial_account
          # Details about the Flow object that created the Transaction.
          attr_reader :flow

          def self.inner_class_types
            @inner_class_types = { flow: Flow }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The delta to the FinancialAccount's balance.
        attr_reader :balance_impact
        # Time at which the object was created.
        attr_reader :created
        # Time at which the entry impacted (or will impact if it's in the future) the FinancialAccount balance.
        attr_reader :effective_at
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The Transaction that this TransactionEntry belongs to.
        attr_reader :transaction
        # Details copied from the transaction that this TransactionEntry belongs to.
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
