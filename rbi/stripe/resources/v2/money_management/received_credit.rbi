# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use ReceivedCredits API to retrieve information on when, where, and how funds are sent into your FinancialAccount.
      class ReceivedCredit < APIResource
        class StatusDetails < Stripe::StripeObject
          class Failed < Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            sig { returns(String) }
            attr_reader :reason
          end
          class Returned < Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            sig { returns(String) }
            attr_reader :reason
          end
          # Hash that provides additional information regarding the reason behind a `failed` ReceivedCredit status. It is only present when the ReceivedCredit status is `failed`.
          sig { returns(T.nilable(Failed)) }
          attr_reader :failed
          # Hash that provides additional information regarding the reason behind a `returned` ReceivedCredit status. It is only present when the ReceivedCredit status is `returned`.
          sig { returns(T.nilable(Returned)) }
          attr_reader :returned
        end
        class StatusTransitions < Stripe::StripeObject
          # Timestamp describing when the ReceivedCredit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :failed_at
          # Timestamp describing when the ReceivedCredit changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :returned_at
          # Timestamp describing when the ReceivedCredit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :succeeded_at
        end
        class BalanceTransfer < Stripe::StripeObject
          # The ID of the Stripe Money Movement that originated the ReceivedCredit.
          sig { returns(String) }
          attr_reader :payout_v1
          # Open Enum. The type of Stripe Money Movement that originated the ReceivedCredit.
          sig { returns(String) }
          attr_reader :type
        end
        class BankTransfer < Stripe::StripeObject
          class GbBankAccount < Stripe::StripeObject
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            attr_reader :account_holder_name
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            attr_reader :bank_name
            # The last 4 digits of the account number that originated the transfer.
            sig { returns(T.nilable(String)) }
            attr_reader :last4
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            sig { returns(String) }
            attr_reader :network
            # The sort code of the account that originated the transfer.
            sig { returns(T.nilable(String)) }
            attr_reader :sort_code
          end
          class UsBankAccount < Stripe::StripeObject
            # The bank name the transfer was received from.
            sig { returns(T.nilable(String)) }
            attr_reader :bank_name
            # The last 4 digits of the account number that originated the transfer.
            sig { returns(T.nilable(String)) }
            attr_reader :last4
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            sig { returns(String) }
            attr_reader :network
            # The routing number of the account that originated the transfer.
            sig { returns(T.nilable(String)) }
            attr_reader :routing_number
          end
          # Financial Address on which funds for ReceivedCredit were received.
          sig { returns(String) }
          attr_reader :financial_address
          # Open Enum. Indicates the type of source via from which external funds originated.
          sig { returns(String) }
          attr_reader :payment_method_type
          # Freeform string set by originator of the external ReceivedCredit.
          sig { returns(T.nilable(String)) }
          attr_reader :statement_descriptor
          # Hash containing the transaction bank details. Present if `payment_method_type` field value is `gb_bank_account`.
          sig { returns(T.nilable(GbBankAccount)) }
          attr_reader :gb_bank_account
          # Hash containing the transaction bank details. Present if `payment_method_type` field value is `us_bank_account`.
          sig { returns(T.nilable(UsBankAccount)) }
          attr_reader :us_bank_account
        end
        class CardSpend < Stripe::StripeObject
          class Dispute < Stripe::StripeObject
            # The reference to the v1 issuing dispute ID.
            sig { returns(String) }
            attr_reader :issuing_dispute_v1
          end
          class Refund < Stripe::StripeObject
            # The reference to the v1 issuing transaction ID.
            sig { returns(String) }
            attr_reader :issuing_transaction_v1
          end
          # The reference to the issuing card object.
          sig { returns(String) }
          attr_reader :card_v1_id
          # Hash containing information about the Dispute that triggered this credit.
          sig { returns(T.nilable(Dispute)) }
          attr_reader :dispute
          # Hash containing information about the Refund that triggered this credit.
          sig { returns(T.nilable(Refund)) }
          attr_reader :refund
        end
        # The amount and currency of the ReceivedCredit.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # Time at which the ReceivedCredit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # Freeform string set by originator of the ReceivedCredit.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Financial Account ID on which funds for ReceivedCredit were received.
        sig { returns(String) }
        attr_reader :financial_account
        # Unique identifier for the ReceivedCredit.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        sig { returns(T.nilable(String)) }
        attr_reader :receipt_url
        # Open Enum. The status of the ReceivedCredit.
        sig { returns(String) }
        attr_reader :status
        # This hash contains detailed information that elaborates on the specific status of the ReceivedCredit. e.g the reason behind a failure if the status is marked as `failed`.
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        attr_reader :status_transitions
        # Open Enum. The type of flow that caused the ReceivedCredit.
        sig { returns(String) }
        attr_reader :type
        # This object stores details about the originating Stripe transaction that resulted in the ReceivedCredit. Present if `type` field value is `balance_transfer`.
        sig { returns(T.nilable(BalanceTransfer)) }
        attr_reader :balance_transfer
        # This object stores details about the originating banking transaction that resulted in the ReceivedCredit. Present if `type` field value is `external_credit`.
        sig { returns(T.nilable(BankTransfer)) }
        attr_reader :bank_transfer
        # This object stores details about the originating issuing card spend that resulted in the ReceivedCredit. Present if `type` field value is `card_spend`.
        sig { returns(T.nilable(CardSpend)) }
        attr_reader :card_spend
      end
    end
  end
end