# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      class StatusTransitions < Stripe::StripeObject
        # Time at which this transaction posted. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def posted_at; end
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def void_at; end
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      sig { returns(String) }
      def account; end
      # The amount of this transaction, in cents (or local equivalent).
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The description of this transaction.
      sig { returns(String) }
      def description; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The status of the transaction.
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def transacted_at; end
      # The token of the transaction refresh that last updated or created this transaction.
      sig { returns(String) }
      def transaction_refresh; end
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def updated; end
      class ListParams < Stripe::RequestParams
        class TransactedAt < Stripe::RequestParams
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
        class TransactionRefresh < Stripe::RequestParams
          # Return results where the transactions were created or updated by a refresh that took place after this refresh (non-inclusive).
          sig { returns(String) }
          def after; end
          sig { params(_after: String).returns(String) }
          def after=(_after); end
          sig { params(after: String).void }
          def initialize(after: nil); end
        end
        # The ID of the Financial Connections Account whose transactions will be retrieved.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
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
        # A filter on the list based on the object `transacted_at` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options:
        sig {
          returns(T.nilable(T.any(::Stripe::FinancialConnections::Transaction::ListParams::TransactedAt, Integer)))
         }
        def transacted_at; end
        sig {
          params(_transacted_at: T.nilable(T.any(::Stripe::FinancialConnections::Transaction::ListParams::TransactedAt, Integer))).returns(T.nilable(T.any(::Stripe::FinancialConnections::Transaction::ListParams::TransactedAt, Integer)))
         }
        def transacted_at=(_transacted_at); end
        # A filter on the list based on the object `transaction_refresh` field. The value can be a dictionary with the following options:
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::Transaction::ListParams::TransactionRefresh))
         }
        def transaction_refresh; end
        sig {
          params(_transaction_refresh: T.nilable(::Stripe::FinancialConnections::Transaction::ListParams::TransactionRefresh)).returns(T.nilable(::Stripe::FinancialConnections::Transaction::ListParams::TransactionRefresh))
         }
        def transaction_refresh=(_transaction_refresh); end
        sig {
          params(account: String, ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), transacted_at: T.nilable(T.any(::Stripe::FinancialConnections::Transaction::ListParams::TransactedAt, Integer)), transaction_refresh: T.nilable(::Stripe::FinancialConnections::Transaction::ListParams::TransactionRefresh)).void
         }
        def initialize(
          account: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          transacted_at: nil,
          transaction_refresh: nil
        ); end
      end
      # Returns a list of Financial Connections Transaction objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Transaction::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end