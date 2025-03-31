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
        attr_reader :posted_at
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      sig { returns(String) }
      attr_reader :account
      # The amount of this transaction, in cents (or local equivalent).
      sig { returns(Integer) }
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # The description of this transaction.
      sig { returns(String) }
      attr_reader :description
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The status of the transaction.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :transacted_at
      # The token of the transaction refresh that last updated or created this transaction.
      sig { returns(String) }
      attr_reader :transaction_refresh
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated
      class ListParams < Stripe::RequestParams
        class TransactedAt < Stripe::RequestParams
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
        class TransactionRefresh < Stripe::RequestParams
          # Return results where the transactions were created or updated by a refresh that took place after this refresh (non-inclusive).
          sig { returns(String) }
          attr_accessor :after
          sig { params(after: String).void }
          def initialize(after: nil); end
        end
        # The ID of the Financial Connections Account whose transactions will be retrieved.
        sig { returns(String) }
        attr_accessor :account
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # A filter on the list based on the object `transacted_at` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options:
        sig {
          returns(T.nilable(T.any(::Stripe::FinancialConnections::Transaction::ListParams::TransactedAt, Integer)))
         }
        attr_accessor :transacted_at
        # A filter on the list based on the object `transaction_refresh` field. The value can be a dictionary with the following options:
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::Transaction::ListParams::TransactionRefresh))
         }
        attr_accessor :transaction_refresh
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