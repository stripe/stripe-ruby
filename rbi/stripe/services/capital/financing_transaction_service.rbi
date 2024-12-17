# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingTransactionService < StripeService
      class ListParams < Stripe::RequestParams
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this charge.
        sig { returns(String) }
        attr_accessor :charge
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Returns transactions that were created that apply to this financing offer ID.
        sig { returns(String) }
        attr_accessor :financing_offer
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # Only returns transactions that are responsible for reversing this financing transaction ID.
        sig { returns(String) }
        attr_accessor :reversed_transaction
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this Treasury Transaction.
        sig { returns(String) }
        attr_accessor :treasury_transaction
        sig {
          params(charge: String, ending_before: String, expand: T::Array[String], financing_offer: String, limit: Integer, reversed_transaction: String, starting_after: String, treasury_transaction: String).void
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
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
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