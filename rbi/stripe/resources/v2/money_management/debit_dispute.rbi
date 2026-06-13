# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A DebitDispute represents a dispute raised against a received debit.
      class DebitDispute < APIResource
        class BankTransfer < ::Stripe::StripeObject
          # The bank network the dispute was originated on.
          sig { returns(String) }
          def network; end
          # The reason for the dispute.
          sig { returns(T.nilable(String)) }
          def reason; end
          # The statement descriptor set by the originator of the debit.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
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
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information that elaborates on the `failed` status of a DebitDispute.
          # It is only present when the DebitDispute status is `failed`.
          sig { returns(Failed) }
          def failed; end
          def self.inner_class_types
            @inner_class_types = {failed: Failed}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # The time when the DebitDispute was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-04-23T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # The time when the DebitDispute was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-04-23T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the DebitDispute.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Details about the bank transfer dispute. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        def bank_transfer; end
        # Time at which the DebitDispute was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-03-23T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # The Financial Account associated with the DebitDispute.
        sig { returns(String) }
        def financial_account; end
        # The ID of a DebitDispute.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the ReceivedDebit that was disputed.
        sig { returns(String) }
        def received_debit; end
        # The status of the DebitDispute.
        sig { returns(String) }
        def status; end
        # Detailed information about the status of the DebitDispute.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # The time at which the DebitDispute transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # The type of the DebitDispute.
        sig { returns(String) }
        def type; end
      end
    end
  end
end