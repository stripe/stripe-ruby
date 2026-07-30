# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A ReceivedDebitMandate represents an authorization from a third party to debit a financial account on a recurring basis.
      class ReceivedDebitMandate < APIResource
        OBJECT_NAME = "v2.money_management.received_debit_mandate"
        def self.object_name
          "v2.money_management.received_debit_mandate"
        end

        class BankTransfer < ::Stripe::StripeObject
          # The name of the account holder that initiated the debit.
          attr_reader :account_holder_name
          # The financial address associated with this mandate.
          attr_reader :financial_address
          # The bank transfer network for this mandate.
          attr_reader :network
          # The bank transfer reference provided by the bank.
          attr_reader :reference

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Canceled < ::Stripe::StripeObject
            # The `canceled` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # If the mandate is canceled, this field provides more details on the cancellation reason.
          attr_reader :canceled

          def self.inner_class_types
            @inner_class_types = { canceled: Canceled }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when the ReceivedDebitMandate changed status to `active`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision.
          attr_reader :activated_at
          # Timestamp describing when the ReceivedDebitMandate changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision for example: 2026-06-03T13:22:18.123Z.
          attr_reader :canceled_at
          # Timestamp describing when the ReceivedDebitMandate was created.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision for example: 2026-06-03T13:22:18.123Z.
          attr_reader :created_at
          # Timestamp describing when the ReceivedDebitMandate changed status to `expired`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2026-06-03T13:22:18.123Z.
          attr_reader :expired_at
          # Timestamp describing when the ReceivedDebitMandate changed status to `pending_cancellation`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision.
          attr_reader :pending_cancellation_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # This object stores details about the originating bank transfer that resulted in the ReceivedDebitMandate. Present if `type` field value is `bank_transfer`.
        attr_reader :bank_transfer
        # The time at which the ReceivedDebitMandate was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-06-03T13:22:18.123Z`.
        attr_reader :created
        # The currency of the ReceivedDebitMandate in ISO 4217 format. This is the currency that debits will be collected in.
        attr_reader :currency
        # Financial account ID associated with this mandate.
        attr_reader :financial_account
        # The unique identifier for the ReceivedDebitMandate.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The status of the ReceivedDebitMandate.
        attr_reader :status
        # Detailed information that elaborates on the specific status of the ReceivedDebitMandate.
        attr_reader :status_details
        # Timestamps describing when the mandate changed status.
        attr_reader :status_transitions
        # The type of the ReceivedDebitMandate.
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
