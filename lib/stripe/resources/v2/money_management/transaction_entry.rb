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
            # If applicable, the ID of the Adjustment that created this Transaction.
            attr_reader :adjustment
            # When available, the ID of the CurrencyConversion that created this Transaction.
            attr_reader :currency_conversion
            # If applicable, the ID of the FeeBatch that created this Transaction.
            attr_reader :fee_batch
            # If applicable, the ID of the InboundTransfer that created this Transaction.
            attr_reader :inbound_transfer
            # If applicable, the ID of the OutboundPayment that created this Transaction.
            attr_reader :outbound_payment
            # If applicable, the ID of the OutboundTransfer that created this Transaction.
            attr_reader :outbound_transfer
            # If applicable, the ID of the ReceivedCredit that created this Transaction.
            attr_reader :received_credit
            # If applicable, the ID of the ReceivedDebit that created this Transaction.
            attr_reader :received_debit
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
