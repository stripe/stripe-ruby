# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class TransactionService < StripeService
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
          returns(T.nilable(T.any(::Stripe::FinancialConnections::TransactionService::ListParams::TransactedAt, Integer)))
         }
        attr_accessor :transacted_at
        # A filter on the list based on the object `transaction_refresh` field. The value can be a dictionary with the following options:
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::TransactionService::ListParams::TransactionRefresh))
         }
        attr_accessor :transaction_refresh
        sig {
          params(account: String, ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), transacted_at: T.nilable(T.any(::Stripe::FinancialConnections::TransactionService::ListParams::TransactedAt, Integer)), transaction_refresh: T.nilable(::Stripe::FinancialConnections::TransactionService::ListParams::TransactionRefresh)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a list of Financial Connections Transaction objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::TransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of a Financial Connections Transaction
      sig {
        params(transaction: String, params: T.any(::Stripe::FinancialConnections::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Transaction)
       }
      def retrieve(transaction, params = {}, opts = {}); end
    end
  end
end