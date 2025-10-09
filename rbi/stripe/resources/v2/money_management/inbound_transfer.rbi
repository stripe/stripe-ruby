# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # An InboundTransfer object, representing a money movement from a
      # user owned PaymentMethod to a FinancialAccount belonging to the same user.
      class InboundTransfer < APIResource
        class From < ::Stripe::StripeObject
          class PaymentMethod < ::Stripe::StripeObject
            # The type of object this destination represents. For a us bank account, we expect us_bank_account.
            sig { returns(String) }
            def type; end
            # The destination US bank account identifier. eg "usba_***".
            sig { returns(T.nilable(String)) }
            def us_bank_account; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount in specified currency that was debited from the Payment Method.
          sig { returns(::Stripe::V2::Amount) }
          def debited; end
          # The Payment Method object used to create the InboundTransfer.
          sig { returns(PaymentMethod) }
          def payment_method; end
          def self.inner_class_types
            @inner_class_types = {payment_method: PaymentMethod}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          # The amount by which the FinancialAccount balance is credited.
          sig { returns(::Stripe::V2::Amount) }
          def credited; end
          # The FinancialAccount that funds will land in.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TransferHistory < ::Stripe::StripeObject
          class BankDebitFailed < ::Stripe::StripeObject
            # Open Enum. The return reason for the failed InboundTransfer.
            sig { returns(String) }
            def failure_reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class BankDebitReturned < ::Stripe::StripeObject
            # Open Enum. The return reason for the returned InboundTransfer.
            sig { returns(String) }
            def return_reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Creation time of the HistoryEntry in RFC 3339 format and UTC.
          sig { returns(String) }
          def created; end
          # Effective at time of the HistoryEntry in RFC 3339 format and UTC.
          sig { returns(String) }
          def effective_at; end
          # A unique ID for the HistoryEntry.
          sig { returns(String) }
          def id; end
          # Open Enum. The Level of the HistoryEntry.
          sig { returns(String) }
          def level; end
          # Open Enum. The type of the HistoryEntry.
          sig { returns(String) }
          def type; end
          # The history entry for a failed InboundTransfer.
          sig { returns(T.nilable(BankDebitFailed)) }
          def bank_debit_failed; end
          # The history entry for a processing InboundTransfer.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def bank_debit_processing; end
          # The history entry for a queued InboundTransfer.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def bank_debit_queued; end
          # The history entry for a returned InboundTransfer.
          sig { returns(T.nilable(BankDebitReturned)) }
          def bank_debit_returned; end
          # The history entry for a succeeded InboundTransfer.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def bank_debit_succeeded; end
          def self.inner_class_types
            @inner_class_types = {
              bank_debit_failed: BankDebitFailed,
              bank_debit_returned: BankDebitReturned,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount in specified currency that will land in the FinancialAccount balance.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Creation time of the InboundTransfer. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # A freeform text field provided by user, containing metadata.
        sig { returns(String) }
        def description; end
        # A nested object containing information about the origin of the InboundTransfer.
        sig { returns(From) }
        def from; end
        # Unique identifier for the InboundTransfer.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # A nested object containing information about the destination of the InboundTransfer.
        sig { returns(To) }
        def to; end
        # A list of history objects, representing changes in the state of the InboundTransfer.
        sig { returns(T::Array[TransferHistory]) }
        def transfer_history; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end