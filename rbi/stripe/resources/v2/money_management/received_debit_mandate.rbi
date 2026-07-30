# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A ReceivedDebitMandate represents an authorization from a third party to debit a financial account on a recurring basis.
      class ReceivedDebitMandate < APIResource
        class BankTransfer < ::Stripe::StripeObject
          # The name of the account holder that initiated the debit.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          # The financial address associated with this mandate.
          sig { returns(String) }
          def financial_address; end
          # The bank transfer network for this mandate.
          sig { returns(String) }
          def network; end
          # The bank transfer reference provided by the bank.
          sig { returns(T.nilable(String)) }
          def reference; end
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
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # If the mandate is canceled, this field provides more details on the cancellation reason.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          def self.inner_class_types
            @inner_class_types = {canceled: Canceled}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when the ReceivedDebitMandate changed status to `active`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision.
          sig { returns(T.nilable(String)) }
          def activated_at; end
          # Timestamp describing when the ReceivedDebitMandate changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision for example: 2026-06-03T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp describing when the ReceivedDebitMandate was created.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision for example: 2026-06-03T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def created_at; end
          # Timestamp describing when the ReceivedDebitMandate changed status to `expired`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2026-06-03T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def expired_at; end
          # Timestamp describing when the ReceivedDebitMandate changed status to `pending_cancellation`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision.
          sig { returns(T.nilable(String)) }
          def pending_cancellation_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # This object stores details about the originating bank transfer that resulted in the ReceivedDebitMandate. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        def bank_transfer; end
        # The time at which the ReceivedDebitMandate was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2026-06-03T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # The currency of the ReceivedDebitMandate in ISO 4217 format. This is the currency that debits will be collected in.
        sig { returns(String) }
        def currency; end
        # Financial account ID associated with this mandate.
        sig { returns(String) }
        def financial_account; end
        # The unique identifier for the ReceivedDebitMandate.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The status of the ReceivedDebitMandate.
        sig { returns(String) }
        def status; end
        # Detailed information that elaborates on the specific status of the ReceivedDebitMandate.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Timestamps describing when the mandate changed status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # The type of the ReceivedDebitMandate.
        sig { returns(String) }
        def type; end
      end
    end
  end
end