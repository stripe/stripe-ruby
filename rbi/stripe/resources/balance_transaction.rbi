# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Balance transactions represent funds moving through your Stripe account.
  # Stripe creates them for every type of transaction that enters or leaves your Stripe account balance.
  #
  # Related guide: [Balance transaction types](https://stripe.com/docs/reports/balance-transaction-types)
  class BalanceTransaction < APIResource
    class FeeDetail < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.nilable(String)) }
      attr_reader :application
      sig { returns(String) }
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(Integer) }
    # Gross amount of this transaction (in cents (or local equivalent)). A positive value represents funds charged to another party, and a negative value represents funds sent to another party.
    attr_reader :amount
    sig { returns(Integer) }
    # The date that the transaction's net funds become available in the Stripe balance.
    attr_reader :available_on
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(Float)) }
    # If applicable, this transaction uses an exchange rate. If money converts from currency A to currency B, then the `amount` in currency A, multipled by the `exchange_rate`, equals the `amount` in currency B. For example, if you charge a customer 10.00 EUR, the PaymentIntent's `amount` is `1000` and `currency` is `eur`. If this converts to 12.34 USD in your Stripe account, the BalanceTransaction's `amount` is `1234`, its `currency` is `usd`, and the `exchange_rate` is `1.234`.
    attr_reader :exchange_rate
    sig { returns(Integer) }
    # Fees (in cents (or local equivalent)) paid for this transaction. Represented as a positive integer when assessed.
    attr_reader :fee
    sig { returns(T::Array[FeeDetail]) }
    # Detailed breakdown of fees (in cents (or local equivalent)) paid for this transaction.
    attr_reader :fee_details
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(Integer) }
    # Net impact to a Stripe balance (in cents (or local equivalent)). A positive value represents incrementing a Stripe balance, and a negative value decrementing a Stripe balance. You can calculate the net impact of a transaction on a balance by `amount` - `fee`
    attr_reader :net
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # Learn more about how [reporting categories](https://stripe.com/docs/reports/reporting-categories) can help you understand balance transactions from an accounting perspective.
    attr_reader :reporting_category
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::ApplicationFee, Stripe::Charge, Stripe::ConnectCollectionTransfer, Stripe::CustomerCashBalanceTransaction, Stripe::Dispute, Stripe::ApplicationFeeRefund, Stripe::Issuing::Authorization, Stripe::Issuing::Dispute, Stripe::Issuing::Transaction, Stripe::Payout, Stripe::Refund, Stripe::ReserveTransaction, Stripe::TaxDeductedAtSource, Stripe::Topup, Stripe::Transfer, Stripe::Reversal))))
     }
    # This transaction relates to the Stripe object.
    attr_reader :source
    sig { returns(String) }
    # The transaction's net funds status in the Stripe balance, which are either `available` or `pending`.
    attr_reader :status
    sig { returns(String) }
    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. Learn more about [balance transaction types and what they represent](https://stripe.com/docs/reports/balance-transaction-types). To classify transactions for accounting purposes, consider `reporting_category` instead.
    attr_reader :type
  end
end