# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Use ReceivedCredits API to retrieve information on when, where, and how funds are sent into your FinancialAccount.
      class ReceivedCredit < APIResource
        OBJECT_NAME = "v2.money_management.received_credit"
        def self.object_name
          "v2.money_management.received_credit"
        end

        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_reader :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ExternalAmount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_reader :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Hash that provides additional information regarding the reason behind a `failed` ReceivedCredit status. It is only present when the ReceivedCredit status is `failed`.
          attr_reader :failed
          # Hash that provides additional information regarding the reason behind a `returned` ReceivedCredit status. It is only present when the ReceivedCredit status is `returned`.
          attr_reader :returned

          def self.inner_class_types
            @inner_class_types = { failed: Failed, returned: Returned }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when the ReceivedCredit was marked as `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :failed_at
          # Timestamp describing when the ReceivedCredit changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :returned_at
          # Timestamp describing when the ReceivedCredit was marked as `succeeded`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BalanceTransfer < ::Stripe::StripeObject
          # The ID of the account that owns the source object originated the ReceivedCredit.
          attr_reader :from_account
          # Open Enum. The type of Stripe Money Movement that originated the ReceivedCredit.
          attr_reader :type
          # The ID of the outbound payment object that originated the ReceivedCredit.
          attr_reader :outbound_payment
          # The ID of the outbound transfer object that originated the ReceivedCredit.
          attr_reader :outbound_transfer
          # The ID of the payout object that originated the ReceivedCredit.
          attr_reader :payout_v1
          # The ID of the v1 transfer object that originated the ReceivedCredit.
          attr_reader :transfer

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
            attr_reader :account_holder_name
            # The bank name the transfer was received from.
            attr_reader :bank_name
            # The last 4 digits of the account number that originated the transfer.
            attr_reader :last4
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            attr_reader :network
            # The sort code of the account that originated the transfer.
            attr_reader :sort_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class SepaBankAccount < ::Stripe::StripeObject
            # The account holder name of the bank account the transfer was received from.
            attr_reader :account_holder_name
            # The bank name the transfer was received from.
            attr_reader :bank_name
            # The BIC of the SEPA account.
            attr_reader :bic
            # The origination country of the bank transfer.
            attr_reader :country
            # The IBAN that originated the transfer.
            attr_reader :iban
            # The money transmission network used to send funds for this ReceivedCredit.
            attr_reader :network

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UsBankAccount < ::Stripe::StripeObject
            # The bank name the transfer was received from.
            attr_reader :bank_name
            # The last 4 digits of the account number that originated the transfer.
            attr_reader :last4
            # Open Enum. The money transmission network used to send funds for this ReceivedCredit.
            attr_reader :network
            # The routing number of the account that originated the transfer.
            attr_reader :routing_number

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Financial Address on which funds for ReceivedCredit were received.
          attr_reader :financial_address
          # Open Enum. Indicates the origin of source from which external funds originated from.
          attr_reader :origin_type
          # Freeform string set by originator of the external ReceivedCredit.
          attr_reader :statement_descriptor
          # Hash containing the transaction bank details. Present if `origin_type` field value is `gb_bank_account`.
          attr_reader :gb_bank_account
          # Hash containing the transaction bank details. Present if `origin_type` field value is `sepa_bank_account`.
          attr_reader :sepa_bank_account
          # Hash containing the transaction bank details. Present if `origin_type` field value is `us_bank_account`.
          attr_reader :us_bank_account

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

        class CardSpend < ::Stripe::StripeObject
          class Dispute < ::Stripe::StripeObject
            # The reference to the v1 issuing dispute ID.
            attr_reader :issuing_dispute_v1

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Refund < ::Stripe::StripeObject
            # The reference to the v1 issuing transaction ID.
            attr_reader :issuing_transaction_v1

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The reference to the issuing card object.
          attr_reader :card_v1_id
          # Hash containing information about the Dispute that triggered this credit.
          attr_reader :dispute
          # Hash containing information about the Refund that triggered this credit.
          attr_reader :refund

          def self.inner_class_types
            @inner_class_types = { dispute: Dispute, refund: Refund }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StripeBalancePayment < ::Stripe::StripeObject
          # Statement descriptor for the Stripe Balance Payment.
          attr_reader :statement_descriptor

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the ReceivedCredit.
        attr_reader :amount
        # Time at which the ReceivedCredit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Freeform string set by originator of the ReceivedCredit.
        attr_reader :description
        # The amount and currency of the original/external credit request.
        attr_reader :external_amount
        # Financial Account ID on which funds for ReceivedCredit were received.
        attr_reader :financial_account
        # Unique identifier for the ReceivedCredit.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe’s money transmission licenses.
        attr_reader :receipt_url
        # Open Enum. The status of the ReceivedCredit.
        attr_reader :status
        # This hash contains detailed information that elaborates on the specific status of the ReceivedCredit. e.g the reason behind a failure if the status is marked as `failed`.
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        attr_reader :status_transitions
        # Open Enum. The type of flow that caused the ReceivedCredit.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # This object stores details about the originating Stripe transaction that resulted in the ReceivedCredit. Present if `type` field value is `balance_transfer`.
        attr_reader :balance_transfer
        # This object stores details about the originating banking transaction that resulted in the ReceivedCredit. Present if `type` field value is `bank_transfer`.
        attr_reader :bank_transfer
        # This object stores details about the originating issuing card spend that resulted in the ReceivedCredit. Present if `type` field value is `card_spend`.
        attr_reader :card_spend
        # This object stores details about the stripe balance pay refund that resulted in the ReceivedCredit. Present if `type` field value is `stripe_balance_payment`.
        attr_reader :stripe_balance_payment

        def self.inner_class_types
          @inner_class_types = {
            amount: Amount,
            external_amount: ExternalAmount,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            balance_transfer: BalanceTransfer,
            bank_transfer: BankTransfer,
            card_spend: CardSpend,
            stripe_balance_payment: StripeBalancePayment,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
