# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # ReceivedDebit resource
      class ReceivedDebit < APIResource
        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(Integer) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ExternalAmount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(Integer) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The reason for the failure of the ReceivedDebit.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information that elaborates on the `failed` status of a ReceivedDebit.
          # It is only present when the ReceivedDebit status is `failed`.
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
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BalanceTransfer < ::Stripe::StripeObject
          # Open Enum. The type of balance transfer that originated the ReceivedDebit.
          sig { returns(String) }
          def type; end
          # The ID of the topup object that originated the ReceivedDebit.
          sig { returns(T.nilable(String)) }
          def topup; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BankTransfer < ::Stripe::StripeObject
          class UsBankAccount < ::Stripe::StripeObject
            # The name of the bank the debit originated from.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # Open Enum. The bank network the debit was originated on.
            sig { returns(String) }
            def network; end
            # The routing number of the bank that originated the debit.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Financial Address that was debited.
          sig { returns(String) }
          def financial_address; end
          # Open Enum. Indicates the origin type through which this debit was initiated.
          sig { returns(String) }
          def origin_type; end
          # Open Enum. The type of the payment method used to originate the debit.
          sig { returns(String) }
          def payment_method_type; end
          # The statement descriptor set by the originator of the debit.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          # The payment method used to originate the debit.
          sig { returns(UsBankAccount) }
          def us_bank_account; end
          def self.inner_class_types
            @inner_class_types = {us_bank_account: UsBankAccount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CardSpend < ::Stripe::StripeObject
          class Authorization < ::Stripe::StripeObject
            class Amount < ::Stripe::StripeObject
              # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
              sig { returns(Integer) }
              def value; end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              def currency; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Amount associated with this issuing authorization.
            sig { returns(Amount) }
            def amount; end
            # The reference to the v1 issuing authorization ID.
            sig { returns(String) }
            def issuing_authorization_v1; end
            def self.inner_class_types
              @inner_class_types = {amount: Amount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CardTransaction < ::Stripe::StripeObject
            class Amount < ::Stripe::StripeObject
              # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
              sig { returns(Integer) }
              def value; end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              def currency; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Amount associated with this issuing transaction.
            sig { returns(Amount) }
            def amount; end
            # The reference to the v1 issuing transaction ID.
            sig { returns(String) }
            def issuing_transaction_v1; end
            def self.inner_class_types
              @inner_class_types = {amount: Amount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Issuing Authorization for this card_spend. Contains the reference id and the amount.
          sig { returns(T.nilable(Authorization)) }
          def authorization; end
          # The list of card spend transactions. These contain the transaction reference ID and the amount.
          sig { returns(T::Array[CardTransaction]) }
          def card_transactions; end
          # The reference to the card object that resulted in the debit.
          sig { returns(String) }
          def card_v1_id; end
          def self.inner_class_types
            @inner_class_types = {authorization: Authorization, card_transactions: CardTransaction}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StripeBalancePayment < ::Stripe::StripeObject
          # ID of the debit agreement associated with this payment.
          sig { returns(T.nilable(String)) }
          def debit_agreement; end
          # Statement descriptor for the Stripe Balance Payment.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount and currency of the ReceivedDebit.
        sig { returns(Amount) }
        def amount; end
        # The time at which the ReceivedDebit was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # Freeform string sent by the originator of the ReceivedDebit.
        sig { returns(T.nilable(String)) }
        def description; end
        # The amount and currency of the original/external debit request.
        sig { returns(T.nilable(ExternalAmount)) }
        def external_amount; end
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
        # Open enum, the type of the received debit.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # This object stores details about the balance transfer object that resulted in the ReceivedDebit.
        sig { returns(T.nilable(BalanceTransfer)) }
        def balance_transfer; end
        # This object stores details about the originating banking transaction that resulted in the ReceivedDebit. Present if `type` field value is `bank_transfer`.
        sig { returns(T.nilable(BankTransfer)) }
        def bank_transfer; end
        # This object stores details about the issuing transactions that resulted in the ReceivedDebit. Present if `type` field value is `card_spend`.
        sig { returns(T.nilable(CardSpend)) }
        def card_spend; end
        # This object stores details about the Stripe Balance Payment that resulted in the ReceivedDebit.
        sig { returns(T.nilable(StripeBalancePayment)) }
        def stripe_balance_payment; end
      end
    end
  end
end