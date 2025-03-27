# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # An InboundTransfer object, representing a money movement from a
      # user owned PaymentMethod to a FinancialAccount belonging to the same user.
      class InboundTransfer < APIResource
        class From < Stripe::StripeObject
          class PaymentMethod < Stripe::StripeObject
            # The type of object this destination represents. For a us bank account, we expect us_bank_account.
            sig { returns(String) }
            attr_reader :type
            # The destination US bank account identifier. eg "usba_***".
            sig { returns(T.nilable(String)) }
            attr_reader :us_bank_account
          end
          # The amount in specified currency that was debited from the Payment Method.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :debited
          # The Payment Method object used to create the InboundTransfer.
          sig { returns(PaymentMethod) }
          attr_reader :payment_method
        end
        class To < Stripe::StripeObject
          # The amount by which the FinancialAccount balance is credited.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :credited
          # The FinancialAccount that funds will land in.
          sig { returns(String) }
          attr_reader :financial_account
        end
        class TransferHistory < Stripe::StripeObject
          class BankDebitFailed < Stripe::StripeObject
            # Open Enum. The return reason for the failed InboundTransfer.
            sig { returns(String) }
            attr_reader :failure_reason
          end
          class BankDebitProcessing < Stripe::StripeObject; end
          class BankDebitQueued < Stripe::StripeObject; end
          class BankDebitReturned < Stripe::StripeObject
            # Open Enum. The return reason for the returned InboundTransfer.
            sig { returns(String) }
            attr_reader :return_reason
          end
          class BankDebitSucceeded < Stripe::StripeObject; end
          # Creation time of the HistoryEntry in RFC 3339 format and UTC.
          sig { returns(String) }
          attr_reader :created
          # Effective at time of the HistoryEntry in RFC 3339 format and UTC.
          sig { returns(String) }
          attr_reader :effective_at
          # A unique ID for the HistoryEntry.
          sig { returns(String) }
          attr_reader :id
          # Open Enum. The Level of the HistoryEntry.
          sig { returns(String) }
          attr_reader :level
          # Open Enum. The type of the HistoryEntry.
          sig { returns(String) }
          attr_reader :type
          # The history entry for a failed InboundTransfer.
          sig { returns(T.nilable(BankDebitFailed)) }
          attr_reader :bank_debit_failed
          # The history entry for a processing InboundTransfer.
          sig { returns(T.nilable(BankDebitProcessing)) }
          attr_reader :bank_debit_processing
          # The history entry for a queued InboundTransfer.
          sig { returns(T.nilable(BankDebitQueued)) }
          attr_reader :bank_debit_queued
          # The history entry for a returned InboundTransfer.
          sig { returns(T.nilable(BankDebitReturned)) }
          attr_reader :bank_debit_returned
          # The history entry for a succeeded InboundTransfer.
          sig { returns(T.nilable(BankDebitSucceeded)) }
          attr_reader :bank_debit_succeeded
        end
        # The amount in specified currency that will land in the FinancialAccount balance.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # Creation time of the InboundTransfer. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # A freeform text field provided by user, containing metadata.
        sig { returns(String) }
        attr_reader :description
        # A nested object containing information about the origin of the InboundTransfer.
        sig { returns(From) }
        attr_reader :from
        # Unique identifier for the InboundTransfer.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        sig { returns(String) }
        attr_reader :receipt_url
        # A nested object containing information about the destination of the InboundTransfer.
        sig { returns(To) }
        attr_reader :to
        # A list of history objects, representing changes in the state of the InboundTransfer.
        sig { returns(T::Array[TransferHistory]) }
        attr_reader :transfer_history
      end
    end
  end
end