# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class TransactionService < StripeService
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
        class StatusTransitions < Stripe::RequestParams
          class PostedAt < Stripe::RequestParams
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
          # Returns Transactions with `posted_at` within the specified range.
          sig {
            returns(T.nilable(T.any(::Stripe::Treasury::TransactionService::ListParams::StatusTransitions::PostedAt, Integer)))
           }
          attr_accessor :posted_at
          sig {
            params(posted_at: T.nilable(T.any(::Stripe::Treasury::TransactionService::ListParams::StatusTransitions::PostedAt, Integer))).void
           }
          def initialize(posted_at: nil); end
        end
        # Only return Transactions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::TransactionService::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # The results are in reverse chronological order by `created` or `posted_at`. The default is `created`.
        sig { returns(T.nilable(String)) }
        attr_accessor :order_by
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return Transactions that have the given status: `open`, `posted`, or `void`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # A filter for the `status_transitions.posted_at` timestamp. When using this filter, `status=posted` and `order_by=posted_at` must also be specified.
        sig {
          returns(T.nilable(::Stripe::Treasury::TransactionService::ListParams::StatusTransitions))
         }
        attr_accessor :status_transitions
        sig {
          params(created: T.nilable(T.any(::Stripe::Treasury::TransactionService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), order_by: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), status_transitions: T.nilable(::Stripe::Treasury::TransactionService::ListParams::StatusTransitions)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          order_by: nil,
          starting_after: nil,
          status: nil,
          status_transitions: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Retrieves a list of Transaction objects.
      sig {
        params(params: T.any(::Stripe::Treasury::TransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing Transaction.
      sig {
        params(id: String, params: T.any(::Stripe::Treasury::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::Transaction)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end