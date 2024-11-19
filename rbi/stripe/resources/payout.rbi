# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Payout` object is created when you receive funds from Stripe, or when you
  # initiate a payout to either a bank account or debit card of a [connected
  # Stripe account](https://stripe.com/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
  # and list all payouts. Payouts are made on [varying
  # schedules](https://stripe.com/docs/connect/manage-payout-schedule), depending on your country and
  # industry.
  #
  # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
  class Payout < APIResource
    class TraceId < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :status
      sig { returns(T.nilable(String)) }
      attr_reader :value
    end
    sig { returns(Integer) }
    # The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
    attr_reader :amount
    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    # The application fee (if any) for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    attr_reader :application_fee
    sig { returns(T.nilable(Integer)) }
    # The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    attr_reader :application_fee_amount
    sig { returns(Integer) }
    # Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
    attr_reader :arrival_date
    sig { returns(T::Boolean) }
    # Returns `true` if the payout is created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    attr_reader :automatic
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # ID of the balance transaction that describes the impact of this payout on your account balance.
    attr_reader :balance_transaction
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(T.any(String, T.any(Stripe::BankAccount, Stripe::Card)))) }
    # ID of the bank account or card the payout is sent to.
    attr_reader :destination
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
    attr_reader :failure_balance_transaction
    sig { returns(T.nilable(String)) }
    # Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://stripe.com/docs/api#payout_failures).
    attr_reader :failure_code
    sig { returns(T.nilable(String)) }
    # Message that provides the reason for a payout failure, if available.
    attr_reader :failure_message
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
    attr_reader :method
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    # If the payout reverses another, this is the ID of the original payout.
    attr_reader :original_payout
    sig { returns(String) }
    # If `completed`, you can use the [Balance Transactions API](https://stripe.com/docs/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
    attr_reader :reconciliation_status
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    # If the payout reverses, this is the ID of the payout that reverses this payout.
    attr_reader :reversed_by
    sig { returns(String) }
    # The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
    attr_reader :source_type
    sig { returns(T.nilable(String)) }
    # Extra information about a payout that displays on the user's bank statement.
    attr_reader :statement_descriptor
    sig { returns(String) }
    # Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
    attr_reader :status
    sig { returns(T.nilable(TraceId)) }
    # A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
    attr_reader :trace_id
    sig { returns(String) }
    # Can be `bank_account` or `card`.
    attr_reader :type
  end
end