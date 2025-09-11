# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # An InboundTransfer object, representing a money movement from a
      # user owned PaymentMethod to a FinancialAccount belonging to the same user.
      class InboundTransfer < APIResource
        OBJECT_NAME = "v2.money_management.inbound_transfer"
        def self.object_name
          "v2.money_management.inbound_transfer"
        end

        class From < Stripe::StripeObject
          class PaymentMethod < Stripe::StripeObject
            # The type of object this destination represents. For a us bank account, we expect us_bank_account.
            attr_reader :type
            # The destination US bank account identifier. eg "usba_***".
            attr_reader :us_bank_account
          end
          # The amount in specified currency that was debited from the Payment Method.
          attr_reader :debited
          # The Payment Method object used to create the InboundTransfer.
          attr_reader :payment_method
        end

        class To < Stripe::StripeObject
          # The amount by which the FinancialAccount balance is credited.
          attr_reader :credited
          # The FinancialAccount that funds will land in.
          attr_reader :financial_account
        end

        class TransferHistory < Stripe::StripeObject
          class BankDebitFailed < Stripe::StripeObject
            # Open Enum. The return reason for the failed InboundTransfer.
            attr_reader :failure_reason
          end

          class BankDebitReturned < Stripe::StripeObject
            # Open Enum. The return reason for the returned InboundTransfer.
            attr_reader :return_reason
          end
          # Creation time of the HistoryEntry in RFC 3339 format and UTC.
          attr_reader :created
          # Effective at time of the HistoryEntry in RFC 3339 format and UTC.
          attr_reader :effective_at
          # A unique ID for the HistoryEntry.
          attr_reader :id
          # Open Enum. The Level of the HistoryEntry.
          attr_reader :level
          # Open Enum. The type of the HistoryEntry.
          attr_reader :type
          # The history entry for a failed InboundTransfer.
          attr_reader :bank_debit_failed
          # The history entry for a processing InboundTransfer.
          attr_reader :bank_debit_processing
          # The history entry for a queued InboundTransfer.
          attr_reader :bank_debit_queued
          # The history entry for a returned InboundTransfer.
          attr_reader :bank_debit_returned
          # The history entry for a succeeded InboundTransfer.
          attr_reader :bank_debit_succeeded
        end
        # The amount in specified currency that will land in the FinancialAccount balance.
        attr_reader :amount
        # Creation time of the InboundTransfer. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # A freeform text field provided by user, containing metadata.
        attr_reader :description
        # A nested object containing information about the origin of the InboundTransfer.
        attr_reader :from
        # Unique identifier for the InboundTransfer.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        attr_reader :receipt_url
        # A nested object containing information about the destination of the InboundTransfer.
        attr_reader :to
        # A list of history objects, representing changes in the state of the InboundTransfer.
        attr_reader :transfer_history
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
