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
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction
      sig { returns(T.any(String, Stripe::CustomerCashBalanceTransaction)) }
      attr_reader :linked_transaction
    end
    class AppliedToPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
    class Funded < Stripe::StripeObject
      class BankTransfer < Stripe::StripeObject
        class EuBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :bic
          sig { returns(T.nilable(String)) }
          attr_reader :iban_last4
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        class GbBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_number_last4
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
          sig { returns(T.nilable(String)) }
          attr_reader :sort_code
        end
        class JpBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :sender_bank
          sig { returns(T.nilable(String)) }
          attr_reader :sender_branch
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        class UsBankTransfer < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :network
          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end
        sig { returns(EuBankTransfer) }
        attr_reader :eu_bank_transfer
        sig { returns(GbBankTransfer) }
        attr_reader :gb_bank_transfer
        sig { returns(JpBankTransfer) }
        attr_reader :jp_bank_transfer
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsBankTransfer) }
        attr_reader :us_bank_transfer
      end
      sig { returns(BankTransfer) }
      attr_reader :bank_transfer
    end
    class RefundedFromPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Refund)) }
      attr_reader :refund
    end
    class TransferredToBalance < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction
    end
    class UnappliedFromPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
    sig { returns(AdjustedForOverdraft) }
    # Attribute for field adjusted_for_overdraft
    attr_reader :adjusted_for_overdraft
    sig { returns(AppliedToPayment) }
    # Attribute for field applied_to_payment
    attr_reader :applied_to_payment
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.any(String, Stripe::Customer)) }
    # The customer whose available cash balance changed as a result of this transaction.
    attr_reader :customer
    sig { returns(Integer) }
    # The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    attr_reader :ending_balance
    sig { returns(Funded) }
    # Attribute for field funded
    attr_reader :funded
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(Integer) }
    # The amount by which the cash balance changed, represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
    attr_reader :net_amount
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(RefundedFromPayment) }
    # Attribute for field refunded_from_payment
    attr_reader :refunded_from_payment
    sig { returns(TransferredToBalance) }
    # Attribute for field transferred_to_balance
    attr_reader :transferred_to_balance
    sig { returns(String) }
    # The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https://stripe.com/docs/payments/customer-balance#types) to learn more about these types.
    attr_reader :type
    sig { returns(UnappliedFromPayment) }
    # Attribute for field unapplied_from_payment
    attr_reader :unapplied_from_payment
  end
end