# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # ReceivedDebit resource
      class ReceivedDebit < APIResource
        class StatusDetails < Stripe::StripeObject
          class Failed < Stripe::StripeObject
            # Open Enum. The reason for the failure of the ReceivedDebit.
            sig { returns(String) }
            def reason; end
          end
          # Information that elaborates on the `failed` status of a ReceivedDebit.
          # It is only present when the ReceivedDebit status is `failed`.
          sig { returns(Failed) }
          def failed; end
        end
        class StatusTransitions < Stripe::StripeObject
          # The time when the ReceivedDebit was marked as `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # The time when the ReceivedDebit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # The time when the ReceivedDebit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
        end
        class BankTransfer < Stripe::StripeObject
          class UsBankAccount < Stripe::StripeObject
            # The name of the bank the debit originated from.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # Open Enum. The bank network the debit was originated on.
            sig { returns(String) }
            def network; end
            # The routing number of the bank that originated the debit.
            sig { returns(T.nilable(String)) }
            def routing_number; end
          end
          # The Financial Address that was debited.
          sig { returns(String) }
          def financial_address; end
          # Open Enum. The type of the payment method used to originate the debit.
          sig { returns(String) }
          def payment_method_type; end
          # The statement descriptor set by the originator of the debit.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          # The payment method used to originate the debit.
          sig { returns(UsBankAccount) }
          def us_bank_account; end
        end
        # Amount and currency of the ReceivedDebit.
        sig { returns(Stripe::V2::Amount) }
        def amount; end
        # The time at which the ReceivedDebit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # Freeform string sent by the originator of the ReceivedDebit.
        sig { returns(T.nilable(String)) }
        def description; end
        # Financial Account on which funds for ReceivedDebit were debited.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the ReceivedDebit.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A link to the Stripe-hosted receipt for this ReceivedDebit.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # Open Enum. The status of the ReceivedDebit.
        sig { returns(String) }
        def status; end
        # Detailed information about the status of the ReceivedDebit.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # The time at which the ReceivedDebit transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # Open Enum. The type of the ReceivedDebit.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # This object stores details about the originating banking transaction that resulted in the ReceivedDebit. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        def bank_transfer; end
      end
    end
  end
end