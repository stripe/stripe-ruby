# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingTransactionService < StripeService
      class ListParams < Stripe::RequestParams
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this charge.
        sig { returns(T.nilable(String)) }
        def charge; end
        sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
        def charge=(_charge); end
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
        # Returns transactions that were created that apply to this financing offer ID.
        sig { returns(T.nilable(String)) }
        def financing_offer; end
        sig { params(_financing_offer: T.nilable(String)).returns(T.nilable(String)) }
        def financing_offer=(_financing_offer); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only returns transactions that are responsible for reversing this financing transaction ID.
        sig { returns(T.nilable(String)) }
        def reversed_transaction; end
        sig { params(_reversed_transaction: T.nilable(String)).returns(T.nilable(String)) }
        def reversed_transaction=(_reversed_transaction); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this Treasury Transaction.
        sig { returns(T.nilable(String)) }
        def treasury_transaction; end
        sig { params(_treasury_transaction: T.nilable(String)).returns(T.nilable(String)) }
        def treasury_transaction=(_treasury_transaction); end
        sig {
          params(charge: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financing_offer: T.nilable(String), limit: T.nilable(Integer), reversed_transaction: T.nilable(String), starting_after: T.nilable(String), treasury_transaction: T.nilable(String)).void
         }
        def initialize(
          charge: nil,
          ending_before: nil,
          expand: nil,
          financing_offer: nil,
          limit: nil,
          reversed_transaction: nil,
          starting_after: nil,
          treasury_transaction: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingTransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a financing transaction for a financing offer.
      sig {
        params(financing_transaction: String, params: T.any(::Stripe::Capital::FinancingTransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingTransaction)
       }
      def retrieve(financing_transaction, params = {}, opts = {}); end
    end
  end
end