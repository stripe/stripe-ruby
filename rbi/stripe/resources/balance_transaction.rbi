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
      # Amount of the fee, in cents.
      sig { returns(Integer) }
      attr_reader :amount
      # ID of the Connect application that earned the fee.
      sig { returns(T.nilable(String)) }
      attr_reader :application
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # Type of the fee, one of: `application_fee`, `payment_method_passthrough_fee`, `stripe_fee` or `tax`.
      sig { returns(String) }
      attr_reader :type
    end
    # Gross amount of this transaction (in cents (or local equivalent)). A positive value represents funds charged to another party, and a negative value represents funds sent to another party.
    sig { returns(Integer) }
    attr_reader :amount
    # The date that the transaction's net funds become available in the Stripe balance.
    sig { returns(Integer) }
    attr_reader :available_on
    # The balance that this transaction impacts.
    sig { returns(String) }
    attr_reader :balance_type
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # If applicable, this transaction uses an exchange rate. If money converts from currency A to currency B, then the `amount` in currency A, multipled by the `exchange_rate`, equals the `amount` in currency B. For example, if you charge a customer 10.00 EUR, the PaymentIntent's `amount` is `1000` and `currency` is `eur`. If this converts to 12.34 USD in your Stripe account, the BalanceTransaction's `amount` is `1234`, its `currency` is `usd`, and the `exchange_rate` is `1.234`.
    sig { returns(T.nilable(Float)) }
    attr_reader :exchange_rate
    # Fees (in cents (or local equivalent)) paid for this transaction. Represented as a positive integer when assessed.
    sig { returns(Integer) }
    attr_reader :fee
    # Detailed breakdown of fees (in cents (or local equivalent)) paid for this transaction.
    sig { returns(T::Array[FeeDetail]) }
    attr_reader :fee_details
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Net impact to a Stripe balance (in cents (or local equivalent)). A positive value represents incrementing a Stripe balance, and a negative value decrementing a Stripe balance. You can calculate the net impact of a transaction on a balance by `amount` - `fee`
    sig { returns(Integer) }
    attr_reader :net
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Learn more about how [reporting categories](https://stripe.com/docs/reports/reporting-categories) can help you understand balance transactions from an accounting perspective.
    sig { returns(String) }
    attr_reader :reporting_category
    # This transaction relates to the Stripe object.
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::ApplicationFee, Stripe::Charge, Stripe::ConnectCollectionTransfer, Stripe::CustomerCashBalanceTransaction, Stripe::Dispute, Stripe::ApplicationFeeRefund, Stripe::Issuing::Authorization, Stripe::Issuing::Dispute, Stripe::Issuing::Transaction, Stripe::Payout, Stripe::Refund, Stripe::ReserveTransaction, Stripe::TaxDeductedAtSource, Stripe::Topup, Stripe::Transfer, Stripe::Reversal))))
     }
    attr_reader :source
    # The transaction's net funds status in the Stripe balance, which are either `available` or `pending`.
    sig { returns(String) }
    attr_reader :status
    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `payout_minimum_balance_hold`, `payout_minimum_balance_release`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `stripe_balance_payment_debit`, `stripe_balance_payment_debit_reversal`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. Learn more about [balance transaction types and what they represent](https://stripe.com/docs/reports/balance-transaction-types). To classify transactions for accounting purposes, consider `reporting_category` instead.
    sig { returns(String) }
    attr_reader :type
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return transactions that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::BalanceTransaction::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return transactions in a certain currency. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # For automatic Stripe payouts only, only returns transactions that were paid out on the specified payout ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :payout
      # Only returns the original transaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Only returns transactions of the given type. One of: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `payout_minimum_balance_hold`, `payout_minimum_balance_release`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `stripe_balance_payment_debit`, `stripe_balance_payment_debit_reversal`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`.
      sig { returns(T.nilable(String)) }
      attr_accessor :type
      sig {
        params(created: T.nilable(T.any(::Stripe::BalanceTransaction::ListParams::Created, Integer)), currency: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payout: T.nilable(String), source: T.nilable(String), starting_after: T.nilable(String), type: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        currency: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payout: nil,
        source: nil,
        starting_after: nil,
        type: nil
      ); end
    end
    # Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.
    #
    # Note that this endpoint was previously called “Balance history” and used the path /v1/balance/history.
    sig {
      params(params: T.any(::Stripe::BalanceTransaction::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end