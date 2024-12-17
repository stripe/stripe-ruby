# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Customers with certain payments enabled have a cash balance, representing funds that were paid
  # by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
  # represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
  # to payments, and refunds to the customer.
  class CustomerCashBalanceTransaction < APIResource
    class AdjustedForOverdraft < Stripe::StripeObject
      # The [Balance Transaction](https://stripe.com/docs/api/balance_transactions/object) that corresponds to funds taken out of your Stripe balance.
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction
      # The [Cash Balance Transaction](https://stripe.com/docs/api/cash_balance_transactions/object) that brought the customer balance negative, triggering the clawback of funds.
      sig { returns(T.any(String, Stripe::CustomerCashBalanceTransaction)) }
      attr_reader :linked_transaction
    end
    class AppliedToPayment < Stripe::StripeObject
      # The [Payment Intent](https://stripe.com/docs/api/payment_intents/object) that funds were applied to.
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
    class Funded < Stripe::StripeObject
      class BankTransfer < Stripe::StripeObject
        class EuBankTransfer < Stripe::StripeObject
          # The BIC of the bank of the sender of the funding.
          sig { returns(T.nilable(String)) }
          attr_reader :bic
          # The last 4 digits of the IBAN of the sender of the funding.
          sig { returns(T.nilable(String)) }
          attr_reader :iban_last4
          # The full name of the sender, as supplied by the sending bank.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        class GbBankTransfer < Stripe::StripeObject
          # The last 4 digits of the account number of the sender of the funding.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number_last4
          # The full name of the sender, as supplied by the sending bank.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
          # The sort code of the bank of the sender of the funding
          sig { returns(T.nilable(String)) }
          attr_reader :sort_code
        end
        class JpBankTransfer < Stripe::StripeObject
          # The name of the bank of the sender of the funding.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_bank
          # The name of the bank branch of the sender of the funding.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_branch
          # The full name of the sender, as supplied by the sending bank.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        class UsBankTransfer < Stripe::StripeObject
          # The banking network used for this funding.
          sig { returns(String) }
          attr_reader :network
          # The full name of the sender, as supplied by the sending bank.
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        # Attribute for field eu_bank_transfer
        sig { returns(EuBankTransfer) }
        attr_reader :eu_bank_transfer
        # Attribute for field gb_bank_transfer
        sig { returns(GbBankTransfer) }
        attr_reader :gb_bank_transfer
        # Attribute for field jp_bank_transfer
        sig { returns(JpBankTransfer) }
        attr_reader :jp_bank_transfer
        # The user-supplied reference field on the bank transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_transfer
        sig { returns(UsBankTransfer) }
        attr_reader :us_bank_transfer
      end
      # Attribute for field bank_transfer
      sig { returns(BankTransfer) }
      attr_reader :bank_transfer
    end
    class RefundedFromPayment < Stripe::StripeObject
      # The [Refund](https://stripe.com/docs/api/refunds/object) that moved these funds into the customer's cash balance.
      sig { returns(T.any(String, Stripe::Refund)) }
      attr_reader :refund
    end
    class TransferredToBalance < Stripe::StripeObject
      # The [Balance Transaction](https://stripe.com/docs/api/balance_transactions/object) that corresponds to funds transferred to your Stripe balance.
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction
    end
    class UnappliedFromPayment < Stripe::StripeObject
      # The [Payment Intent](https://stripe.com/docs/api/payment_intents/object) that funds were unapplied from.
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
    # Attribute for field adjusted_for_overdraft
    sig { returns(AdjustedForOverdraft) }
    attr_reader :adjusted_for_overdraft
    # Attribute for field applied_to_payment
    sig { returns(AppliedToPayment) }
    attr_reader :applied_to_payment
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # The customer whose available cash balance changed as a result of this transaction.
    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer
    # The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    sig { returns(Integer) }
    attr_reader :ending_balance
    # Attribute for field funded
    sig { returns(Funded) }
    attr_reader :funded
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # The amount by which the cash balance changed, represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
    sig { returns(Integer) }
    attr_reader :net_amount
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field refunded_from_payment
    sig { returns(RefundedFromPayment) }
    attr_reader :refunded_from_payment
    # Attribute for field transferred_to_balance
    sig { returns(TransferredToBalance) }
    attr_reader :transferred_to_balance
    # The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https://stripe.com/docs/payments/customer-balance#types) to learn more about these types.
    sig { returns(String) }
    attr_reader :type
    # Attribute for field unapplied_from_payment
    sig { returns(UnappliedFromPayment) }
    attr_reader :unapplied_from_payment
  end
end