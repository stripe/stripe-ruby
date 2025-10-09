# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # ReceivedDebit resource
      class ReceivedDebit < APIResource
        OBJECT_NAME = "v2.money_management.received_debit"
        def self.object_name
          "v2.money_management.received_debit"
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

        class BankTransfer < ::Stripe::StripeObject
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
          # Open Enum. Indicates the origin type through which this debit was initiated.
          attr_reader :origin_type
          # Open Enum. The type of the payment method used to originate the debit.
          attr_reader :payment_method_type
          # The statement descriptor set by the originator of the debit.
          attr_reader :statement_descriptor
          # The payment method used to originate the debit.
          attr_reader :us_bank_account

          def self.inner_class_types
            @inner_class_types = { us_bank_account: UsBankAccount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount and currency of the ReceivedDebit.
        attr_reader :amount
        # The time at which the ReceivedDebit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # Freeform string sent by the originator of the ReceivedDebit.
        attr_reader :description
        # Financial Account on which funds for ReceivedDebit were debited.
        attr_reader :financial_account
        # Unique identifier for the ReceivedDebit.
        attr_reader :id
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
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # This object stores details about the originating banking transaction that resulted in the ReceivedDebit. Present if `type` field value is `bank_transfer`.
        attr_reader :bank_transfer

        def self.inner_class_types
          @inner_class_types = {
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            bank_transfer: BankTransfer,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
