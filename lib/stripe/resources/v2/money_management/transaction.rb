# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A Transaction records how a money movement flow affects your FinancialAccount balance.
      # A flow can create one or more Transactions.
      class Transaction < APIResource
        OBJECT_NAME = "v2.money_management.transaction"
        def self.object_name
          "v2.money_management.transaction"
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

        class Counterparty < ::Stripe::StripeObject
          # Name of the counterparty.
          attr_reader :name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

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

        class RegulatoryReceipt < ::Stripe::StripeObject
          # Current availability of the regulatory receipt.
          attr_reader :status
          # Hosted URL for the receipt.
          attr_reader :url
          # Time until which `url` is valid.
          attr_reader :url_expires_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the Transaction became `posted`. Only present when `status` is `posted`.
          attr_reader :posted_at
          # The time at which the Transaction became `void`. Only present when `status` is `void`.
          attr_reader :void_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the Transaction.
        attr_reader :amount
        # The change to the FinancialAccount's balance. This is the sum of the balance impacts of this Transaction's
        # TransactionEntries with `effective_at` timestamps in the past.
        attr_reader :balance_impact
        # Open Enum. A category used to classify the Transaction.
        attr_reader :category
        # Details about the counterparty to this Transaction.
        attr_reader :counterparty
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # A description of the Transaction. When applicable, the description is copied from the flow object when
        # the Transaction is created. You can update it using the Update Transaction endpoint.
        attr_reader :description
        # The ID of the FinancialAccount affected by this Transaction.
        attr_reader :financial_account
        # Details about the flow object that created the Transaction, such as an InboundTransfer or OutboundPayment.
        # `flow.type` identifies the kind of object. The corresponding field contains its ID, when available:
        # for an InboundTransfer, `flow.inbound_transfer` contains the InboundTransfer's ID. Pass that ID to
        # the `flow` parameter on List Transactions.
        attr_reader :flow
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information
        # about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Hosted transaction receipt that is provided when money movement is considered regulated under Stripe's money transmission licenses. If not applicable, `regulatory_receipt.status` will be `not_applicable` and no URL will be provided unless you opt in by calling `/refresh_regulatory_receipt`.
        attr_reader :regulatory_receipt
        # Closed Enum. The current status of the Transaction.
        # A Transaction is `pending` if either `balance_impact.inbound_pending` or `balance_impact.outbound_pending` is non-zero.
        # A Transaction is `posted` if only `balance_impact.available` is non-zero.
        # A Transaction is `void` if there is no balance impact.
        # `posted` and `void` are terminal states, and no additional TransactionEntries will be added to the Transaction.
        attr_reader :status
        # Timestamps for when the Transaction transitioned to each status.
        attr_reader :status_transitions
        # The v1 Treasury transaction associated with this transaction.
        attr_reader :treasury_transaction

        def self.inner_class_types
          @inner_class_types = {
            balance_impact: BalanceImpact,
            counterparty: Counterparty,
            flow: Flow,
            regulatory_receipt: RegulatoryReceipt,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
