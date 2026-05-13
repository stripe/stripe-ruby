# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A DebitDispute represents a dispute raised against a received debit.
      class DebitDispute < APIResource
        OBJECT_NAME = "v2.money_management.debit_dispute"
        def self.object_name
          "v2.money_management.debit_dispute"
        end

        class BankTransfer < ::Stripe::StripeObject
          # The bank network the dispute was originated on.
          attr_reader :network
          # The reason for the dispute.
          attr_reader :reason
          # The statement descriptor set by the originator of the debit.
          attr_reader :statement_descriptor

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # The reason for the failure of the DebitDispute.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information that elaborates on the `failed` status of a DebitDispute.
          # It is only present when the DebitDispute status is `failed`.
          attr_reader :failed

          def self.inner_class_types
            @inner_class_types = { failed: Failed }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time when the DebitDispute was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-04-23T13:22:18.123Z`.
          attr_reader :failed_at
          # The time when the DebitDispute was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-04-23T13:22:18.123Z`.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the DebitDispute.
        attr_reader :amount
        # Details about the bank transfer dispute. Present if `type` field value is `bank_transfer`.
        attr_reader :bank_transfer
        # Time at which the DebitDispute was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-03-23T13:22:18.123Z`.
        attr_reader :created
        # The Financial Account associated with the DebitDispute.
        attr_reader :financial_account
        # The ID of a DebitDispute.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the ReceivedDebit that was disputed.
        attr_reader :received_debit
        # The status of the DebitDispute.
        attr_reader :status
        # Detailed information about the status of the DebitDispute.
        attr_reader :status_details
        # The time at which the DebitDispute transitioned to a particular status.
        attr_reader :status_transitions
        # The type of the DebitDispute.
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
