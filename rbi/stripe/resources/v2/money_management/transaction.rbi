# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A Transaction records how a money movement flow affects your FinancialAccount balance.
      # A flow can create one or more Transactions.
      class Transaction < APIResource
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
        class Counterparty < ::Stripe::StripeObject
          # Name of the counterparty.
          sig { returns(T.nilable(String)) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
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
        class RegulatoryReceipt < ::Stripe::StripeObject
          # Current availability of the regulatory receipt.
          sig { returns(String) }
          def status; end
          # Hosted URL for the receipt.
          sig { returns(T.nilable(String)) }
          def url; end
          # Time until which `url` is valid.
          sig { returns(T.nilable(String)) }
          def url_expires_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the Transaction became `posted`. Only present when `status` is `posted`.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # The time at which the Transaction became `void`. Only present when `status` is `void`.
          sig { returns(T.nilable(String)) }
          def void_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the Transaction.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # The change to the FinancialAccount's balance. This is the sum of the balance impacts of this Transaction's
        # TransactionEntries with `effective_at` timestamps in the past.
        sig { returns(BalanceImpact) }
        def balance_impact; end
        # Open Enum. A category used to classify the Transaction.
        sig { returns(String) }
        def category; end
        # Details about the counterparty to this Transaction.
        sig { returns(T.nilable(Counterparty)) }
        def counterparty; end
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # A description of the Transaction. When applicable, the description is copied from the flow object when
        # the Transaction is created. You can update it using the Update Transaction endpoint.
        sig { returns(T.nilable(String)) }
        def description; end
        # The ID of the FinancialAccount affected by this Transaction.
        sig { returns(String) }
        def financial_account; end
        # Details about the flow object that created the Transaction, such as an InboundTransfer or OutboundPayment.
        # `flow.type` identifies the kind of object. The corresponding field contains its ID, when available:
        # for an InboundTransfer, `flow.inbound_transfer` contains the InboundTransfer's ID. Pass that ID to
        # the `flow` parameter on List Transactions.
        sig { returns(T.nilable(Flow)) }
        def flow; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information
        # about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Hosted transaction receipt that is provided when money movement is considered regulated under Stripe's money transmission licenses. If not applicable, `regulatory_receipt.status` will be `not_applicable` and no URL will be provided unless you opt in by calling `/refresh_regulatory_receipt`.
        sig { returns(RegulatoryReceipt) }
        def regulatory_receipt; end
        # Closed Enum. The current status of the Transaction.
        # A Transaction is `pending` if either `balance_impact.inbound_pending` or `balance_impact.outbound_pending` is non-zero.
        # A Transaction is `posted` if only `balance_impact.available` is non-zero.
        # A Transaction is `void` if there is no balance impact.
        # `posted` and `void` are terminal states, and no additional TransactionEntries will be added to the Transaction.
        sig { returns(String) }
        def status; end
        # Timestamps for when the Transaction transitioned to each status.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The v1 Treasury transaction associated with this transaction.
        sig { returns(T.nilable(String)) }
        def treasury_transaction; end
      end
    end
  end
end