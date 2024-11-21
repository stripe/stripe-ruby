# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
      # Possible values are `pending`, `supported`, and `unsupported`. When `payout.status` is `pending` or `in_transit`, this will be `pending`. When the payout transitions to `paid`, `failed`, or `canceled`, this status will become `supported` or `unsupported` shortly after in most cases. In some cases, this may appear as `pending` for up to 10 days after `arrival_date` until transitioning to `supported` or `unsupported`.
      sig { returns(String) }
      attr_reader :status
      # The trace ID value if `trace_id.status` is `supported`, otherwise `nil`.
      sig { returns(T.nilable(String)) }
      attr_reader :value
    end
    # The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
    sig { returns(Integer) }
    attr_reader :amount

    # The application fee (if any) for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    attr_reader :application_fee

    # The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    # Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
    sig { returns(Integer) }
    attr_reader :arrival_date

    # Returns `true` if the payout is created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    sig { returns(T::Boolean) }
    attr_reader :automatic

    # ID of the balance transaction that describes the impact of this payout on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # ID of the bank account or card the payout is sent to.
    sig { returns(T.nilable(T.any(String, T.any(Stripe::BankAccount, Stripe::Card)))) }
    attr_reader :destination

    # If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :failure_balance_transaction

    # Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://stripe.com/docs/api#payout_failures).
    sig { returns(T.nilable(String)) }
    attr_reader :failure_code

    # Message that provides the reason for a payout failure, if available.
    sig { returns(T.nilable(String)) }
    attr_reader :failure_message

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
    sig { returns(String) }
    attr_reader :method

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # If the payout reverses another, this is the ID of the original payout.
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    attr_reader :original_payout

    # If `completed`, you can use the [Balance Transactions API](https://stripe.com/docs/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
    sig { returns(String) }
    attr_reader :reconciliation_status

    # If the payout reverses, this is the ID of the payout that reverses this payout.
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    attr_reader :reversed_by

    # The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
    sig { returns(String) }
    attr_reader :source_type

    # Extra information about a payout that displays on the user's bank statement.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    # Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
    sig { returns(String) }
    attr_reader :status

    # A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
    sig { returns(T.nilable(TraceId)) }
    attr_reader :trace_id

    # Can be `bank_account` or `card`.
    sig { returns(String) }
    attr_reader :type
  end
end