# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Use ReceivedDebits API to retrieve information on when, where, and how funds are debited from your FinancialAccount.
      class ReceivedDebit < APIResource
        OBJECT_NAME = "v2.money_management.received_debit"
        def self.object_name
          "v2.money_management.received_debit"
        end

        class BankTransfer < ::Stripe::StripeObject
          class OriginatingBankAccount < ::Stripe::StripeObject
            class Aba < ::Stripe::StripeObject
              # The name of the account holder that originated the debit, as provided by the ACH network.
              attr_reader :account_holder_name
              # The name of the bank the debit originated from.
              attr_reader :bank_name
              # The routing number of the bank that originated the debit.
              attr_reader :routing_number

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Details of the originating account. Present when type is `aba`.
            attr_reader :aba
            # The credential type identifying the originating bank account.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { aba: Aba }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UsBankAccount < ::Stripe::StripeObject
            # The name of the bank the debit originated from.
            attr_reader :bank_name
            # Open Enum. The bank network the debit was originated on.
            attr_reader :network
            # The routing number of the bank that originated the debit.
            attr_reader :routing_number

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Financial Address that was debited.
          attr_reader :financial_address
          # The bank network the debit was originated on.
          attr_reader :network
          # The originating bank account's credential details.
          attr_reader :originating_bank_account
          # Deprecated: Use `bank_transfer.originating_bank_account.type` instead.
          # Open Enum. The type of the payment method used to originate the debit.
          attr_reader :payment_method_type
          # The statement descriptor set by the originator of the debit.
          attr_reader :statement_descriptor
          # Deprecated: Use `bank_transfer.originating_bank_account.aba` instead.
          # Object containing details of the US Bank Account that originated the debit.
          # Present when the debit was originated via ACH.
          attr_reader :us_bank_account

          def self.inner_class_types
            @inner_class_types = {
              originating_bank_account: OriginatingBankAccount,
              us_bank_account: UsBankAccount,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The reason for the failure of the ReceivedDebit.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information that elaborates on the `failed` status of a ReceivedDebit.
          # It is only present when the ReceivedDebit status is `failed`.
          attr_reader :failed

          def self.inner_class_types
            @inner_class_types = { failed: Failed }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time when the ReceivedDebit was marked as `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          attr_reader :canceled_at
          # The time when the ReceivedDebit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          attr_reader :failed_at
          # The time when the ReceivedDebit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount and currency of the ReceivedDebit.
        attr_reader :amount
        # This object stores details about the originating banking transaction that resulted in the ReceivedDebit. Present if `type` field value is `bank_transfer`.
        attr_reader :bank_transfer
        # The time at which the ReceivedDebit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # Freeform string sent by the originator of the ReceivedDebit.
        attr_reader :description
        # Financial Account on which funds for ReceivedDebit were debited.
        attr_reader :financial_account
        # Unique identifier for the ReceivedDebit.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A link to the Stripe-hosted receipt for this ReceivedDebit.
        attr_reader :receipt_url
        # Open Enum. The status of the ReceivedDebit.
        attr_reader :status
        # Detailed information about the status of the ReceivedDebit.
        attr_reader :status_details
        # The time at which the ReceivedDebit transitioned to a particular status.
        attr_reader :status_transitions
        # Open Enum. The type of the ReceivedDebit.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            bank_transfer: BankTransfer,
            status_details: StatusDetails,
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
