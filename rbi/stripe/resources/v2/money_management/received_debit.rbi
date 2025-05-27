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
            attr_reader :reason
          end
          # Information that elaborates on the `failed` status of a ReceivedDebit.
          # It is only present when the ReceivedDebit status is `failed`.
          sig { returns(Failed) }
          attr_reader :failed
        end
        class StatusTransitions < Stripe::StripeObject
          # The time when the ReceivedDebit was marked as `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          attr_reader :canceled_at
          # The time when the ReceivedDebit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          attr_reader :failed_at
          # The time when the ReceivedDebit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
          sig { returns(T.nilable(String)) }
          attr_reader :succeeded_at
        end
        class BankTransfer < Stripe::StripeObject
          class UsBankAccount < Stripe::StripeObject
            # The name of the bank the debit originated from.
            sig { returns(T.nilable(String)) }
            attr_reader :bank_name
            # Open Enum. The bank network the debit was originated on.
            sig { returns(String) }
            attr_reader :network
            # The routing number of the bank that originated the debit.
            sig { returns(T.nilable(String)) }
            attr_reader :routing_number
          end
          # The Financial Address that was debited.
          sig { returns(String) }
          attr_reader :financial_address
          # Open Enum. The type of the payment method used to originate the debit.
          sig { returns(String) }
          attr_reader :payment_method_type
          # The statement descriptor set by the originator of the debit.
          sig { returns(T.nilable(String)) }
          attr_reader :statement_descriptor
          # The payment method used to originate the debit.
          sig { returns(UsBankAccount) }
          attr_reader :us_bank_account
        end
        # Amount and currency of the ReceivedDebit.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # The time at which the ReceivedDebit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        attr_reader :created
        # Freeform string sent by the originator of the ReceivedDebit.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Financial Account on which funds for ReceivedDebit were debited.
        sig { returns(String) }
        attr_reader :financial_account
        # Unique identifier for the ReceivedDebit.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # A link to the Stripe-hosted receipt for this ReceivedDebit.
        sig { returns(T.nilable(String)) }
        attr_reader :receipt_url
        # Open Enum. The status of the ReceivedDebit.
        sig { returns(String) }
        attr_reader :status
        # Detailed information about the status of the ReceivedDebit.
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
        # The time at which the ReceivedDebit transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        attr_reader :status_transitions
        # Open Enum. The type of the ReceivedDebit.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # This object stores details about the originating banking transaction that resulted in the ReceivedDebit. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        attr_reader :bank_transfer
      end
    end
  end
end