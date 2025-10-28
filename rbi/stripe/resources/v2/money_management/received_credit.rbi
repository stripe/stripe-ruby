# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use ReceivedCredits API to retrieve information on when, where, and how funds are sent into your FinancialAccount.
      class ReceivedCredit < APIResource
        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Hash that provides additional information regarding the reason behind a `failed` ReceivedCredit status. It is only present when the ReceivedCredit status is `failed`.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # Hash that provides additional information regarding the reason behind a `returned` ReceivedCredit status. It is only present when the ReceivedCredit status is `returned`.
          sig { returns(T.nilable(Returned)) }
          def returned; end
          def self.inner_class_types
            @inner_class_types = {failed: Failed, returned: Returned}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when the ReceivedCredit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # Timestamp describing when the ReceivedCredit changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def returned_at; end
          # Timestamp describing when the ReceivedCredit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BalanceTransfer < ::Stripe::StripeObject
          # The ID of the account that owns the source object originated the ReceivedCredit.
          sig { returns(T.nilable(String)) }
          def from_account; end
          # Open Enum. The type of Stripe Money Movement that originated the ReceivedCredit.
          sig { returns(String) }
          def type; end
          # The ID of the outbound payment object that originated the ReceivedCredit.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # The ID of the outbound transfer object that originated the ReceivedCredit.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # The ID of the payout object that originated the ReceivedCredit.
          sig { returns(T.nilable(String)) }
          def payout_v1; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BankTransfer < ::Stripe::StripeObject
          class GbBankAccount < ::Stripe::StripeObject
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The last 4 digits of the account number that originated the transfer.
            sig { returns(T.nilable(String)) }
            def last4; end
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            sig { returns(String) }
            def network; end
            # The sort code of the account that originated the transfer.
            sig { returns(T.nilable(String)) }
            def sort_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SepaBankAccount < ::Stripe::StripeObject
            # The account holder name of the bank account the transfer was received from.
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The BIC of the SEPA account.
            sig { returns(T.nilable(String)) }
            def bic; end
            # The origination country of the bank transfer.
            sig { returns(T.nilable(String)) }
            def country; end
            # The IBAN that originated the transfer.
            sig { returns(T.nilable(String)) }
            def iban; end
            # The money transmission network used to send funds for this ReceivedCredit.
            sig { returns(String) }
            def network; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UsBankAccount < ::Stripe::StripeObject
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The last 4 digits of the account number that originated the transfer.
            sig { returns(T.nilable(String)) }
            def last4; end
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            sig { returns(String) }
            def network; end
            # The routing number of the account that originated the transfer.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Financial Address on which funds for ReceivedCredit were received.
          sig { returns(String) }
          def financial_address; end
          # Open Enum. Indicates the origin of source from which external funds originated from.
          sig { returns(String) }
          def origin_type; end
          # Freeform string set by originator of the external ReceivedCredit.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          # Hash containing the transaction bank details. Present if `origin_type` field value is `gb_bank_account`.
          sig { returns(T.nilable(GbBankAccount)) }
          def gb_bank_account; end
          # Hash containing the transaction bank details. Present if `origin_type` field value is `sepa_bank_account`.
          sig { returns(T.nilable(SepaBankAccount)) }
          def sepa_bank_account; end
          # Hash containing the transaction bank details. Present if `origin_type` field value is `us_bank_account`.
          sig { returns(T.nilable(UsBankAccount)) }
          def us_bank_account; end
          def self.inner_class_types
            @inner_class_types = {
              gb_bank_account: GbBankAccount,
              sepa_bank_account: SepaBankAccount,
              us_bank_account: UsBankAccount,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the ReceivedCredit.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Time at which the ReceivedCredit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Freeform string set by originator of the ReceivedCredit.
        sig { returns(T.nilable(String)) }
        def description; end
        # The amount and currency of the original/external credit request.
        sig { returns(T.nilable(::Stripe::V2::Amount)) }
        def external_amount; end
        # Financial Account ID on which funds for ReceivedCredit were received.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the ReceivedCredit.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # Open Enum. The status of the ReceivedCredit.
        sig { returns(String) }
        def status; end
        # This hash contains detailed information that elaborates on the specific status of the ReceivedCredit. e.g the reason behind a failure if the status is marked as `failed`.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # Open Enum. The type of flow that caused the ReceivedCredit.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # This object stores details about the originating Stripe transaction that resulted in the ReceivedCredit. Present if `type` field value is `balance_transfer`.
        sig { returns(T.nilable(BalanceTransfer)) }
        def balance_transfer; end
        # This object stores details about the originating banking transaction that resulted in the ReceivedCredit. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        def bank_transfer; end
      end
    end
  end
end