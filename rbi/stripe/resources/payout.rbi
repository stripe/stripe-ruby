# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A `Payout` object is created when you receive funds from Stripe, or when you
  # initiate a payout to either a bank account or debit card of a [connected
  # Stripe account](https://docs.stripe.com/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
  # and list all payouts. Payouts are made on [varying
  # schedules](https://docs.stripe.com/docs/connect/manage-payout-schedule), depending on your country and
  # industry.
  #
  # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
  class Payout < APIResource
    class TraceId < Stripe::StripeObject
      # Possible values are `pending`, `supported`, and `unsupported`. When `payout.status` is `pending` or `in_transit`, this will be `pending`. When the payout transitions to `paid`, `failed`, or `canceled`, this status will become `supported` or `unsupported` shortly after in most cases. In some cases, this may appear as `pending` for up to 10 days after `arrival_date` until transitioning to `supported` or `unsupported`.
      sig { returns(String) }
      def status; end
      # The trace ID value if `trace_id.status` is `supported`, otherwise `nil`.
      sig { returns(T.nilable(String)) }
      def value; end
    end
    # The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
    sig { returns(Integer) }
    def amount; end
    # The application fee (if any) for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    def application_fee; end
    # The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    # Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
    sig { returns(Integer) }
    def arrival_date; end
    # Returns `true` if the payout is created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    sig { returns(T::Boolean) }
    def automatic; end
    # ID of the balance transaction that describes the impact of this payout on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    def balance_transaction; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # ID of the bank account or card the payout is sent to.
    sig { returns(T.nilable(T.any(String, T.any(Stripe::BankAccount, Stripe::Card)))) }
    def destination; end
    # If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    def failure_balance_transaction; end
    # Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://stripe.com/docs/api#payout_failures).
    sig { returns(T.nilable(String)) }
    def failure_code; end
    # Message that provides the reason for a payout failure, if available.
    sig { returns(T.nilable(String)) }
    def failure_message; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
    sig { returns(String) }
    def method; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # If the payout reverses another, this is the ID of the original payout.
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    def original_payout; end
    # ID of the v2 FinancialAccount the funds are sent to.
    sig { returns(T.nilable(String)) }
    def payout_method; end
    # If `completed`, you can use the [Balance Transactions API](https://stripe.com/docs/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
    sig { returns(String) }
    def reconciliation_status; end
    # If the payout reverses, this is the ID of the payout that reverses this payout.
    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    def reversed_by; end
    # The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
    sig { returns(String) }
    def source_type; end
    # Extra information about a payout that displays on the user's bank statement.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    # Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
    sig { returns(String) }
    def status; end
    # A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
    sig { returns(T.nilable(TraceId)) }
    def trace_id; end
    # Can be `bank_account` or `card`.
    sig { returns(String) }
    def type; end
    class ListParams < Stripe::RequestParams
      class ArrivalDate < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return payouts that are expected to arrive during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Payout::ListParams::ArrivalDate, Integer))) }
      def arrival_date; end
      sig {
        params(_arrival_date: T.nilable(T.any(::Stripe::Payout::ListParams::ArrivalDate, Integer))).returns(T.nilable(T.any(::Stripe::Payout::ListParams::ArrivalDate, Integer)))
       }
      def arrival_date=(_arrival_date); end
      # Only return payouts that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Payout::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Payout::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Payout::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # The ID of an external account - only return payouts sent to this external account.
      sig { returns(T.nilable(String)) }
      def destination; end
      sig { params(_destination: T.nilable(String)).returns(T.nilable(String)) }
      def destination=(_destination); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # Only return payouts that have the given status: `pending`, `paid`, `failed`, or `canceled`.
      sig { returns(T.nilable(String)) }
      def status; end
      sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
      def status=(_status); end
      sig {
        params(arrival_date: T.nilable(T.any(::Stripe::Payout::ListParams::ArrivalDate, Integer)), created: T.nilable(T.any(::Stripe::Payout::ListParams::Created, Integer)), destination: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
       }
      def initialize(
        arrival_date: nil,
        created: nil,
        destination: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # A positive integer in cents representing how much to payout.
      sig { returns(Integer) }
      def amount; end
      sig { params(_amount: Integer).returns(Integer) }
      def amount=(_amount); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The ID of a bank account or a card to send the payout to. If you don't provide a destination, we use the default external account for the specified currency.
      sig { returns(T.nilable(String)) }
      def destination; end
      sig { params(_destination: T.nilable(String)).returns(T.nilable(String)) }
      def destination=(_destination); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The method used to send this payout, which is `standard` or `instant`. We support `instant` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
      sig { returns(T.nilable(String)) }
      def method; end
      sig { params(_method: T.nilable(String)).returns(T.nilable(String)) }
      def method=(_method); end
      # The ID of a v2 FinancialAccount to send funds to.
      sig { returns(T.nilable(String)) }
      def payout_method; end
      sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
      def payout_method=(_payout_method); end
      # The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of `bank_account`, `card`, or `fpx`.
      sig { returns(T.nilable(String)) }
      def source_type; end
      sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
      def source_type=(_source_type); end
      # A string that displays on the recipient's bank or card statement (up to 22 characters). A `statement_descriptor` that's longer than 22 characters return an error. Most banks truncate this information and display it inconsistently. Some banks might not display it at all.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      sig {
        params(amount: Integer, currency: String, description: T.nilable(String), destination: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), method: T.nilable(String), payout_method: T.nilable(String), source_type: T.nilable(String), statement_descriptor: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        method: nil,
        payout_method: nil,
        source_type: nil,
        statement_descriptor: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(expand: nil, metadata: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ReverseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
       }
      def initialize(expand: nil, metadata: nil); end
    end
    # You can cancel a previously created payout if its status is pending. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    sig {
      params(params: T.any(::Stripe::Payout::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def cancel(params = {}, opts = {}); end

    # You can cancel a previously created payout if its status is pending. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    sig {
      params(payout: String, params: T.any(::Stripe::Payout::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def self.cancel(payout, params = {}, opts = {}); end

    # To send funds to your own bank account, create a new payout object. Your [Stripe balance](https://docs.stripe.com/api#balance) must cover the payout amount. If it doesn't, you receive an “Insufficient Funds” error.
    #
    # If your API key is in test mode, money won't actually be sent, though every other action occurs as if you're in live mode.
    #
    # If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The [balance object](https://docs.stripe.com/api#balance_object) details available and pending amounts by source type.
    sig {
      params(params: T.any(::Stripe::Payout::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.
    sig {
      params(params: T.any(::Stripe::Payout::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is manual and in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    sig {
      params(params: T.any(::Stripe::Payout::ReverseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def reverse(params = {}, opts = {}); end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is manual and in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    sig {
      params(payout: String, params: T.any(::Stripe::Payout::ReverseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def self.reverse(payout, params = {}, opts = {}); end

    # Updates the specified payout by setting the values of the parameters you pass. We don't change parameters that you don't provide. This request only accepts the metadata as arguments.
    sig {
      params(payout: String, params: T.any(::Stripe::Payout::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Payout)
     }
    def self.update(payout, params = {}, opts = {}); end
  end
end