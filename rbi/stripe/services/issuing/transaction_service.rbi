# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class TransactionService < StripeService
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :gt

          # Minimum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :gte

          # Maximum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :lt

          # Maximum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :lte

          sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return transactions that belong to the given card.
        sig { returns(String) }
        attr_accessor :card

        # Only return transactions that belong to the given cardholder.
        sig { returns(String) }
        attr_accessor :cardholder

        # Only return transactions that were created during the given date interval.
        sig { returns(T.any(::Stripe::Issuing::TransactionService::ListParams::Created, Integer)) }
        attr_accessor :created

        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit

        # Only return transactions that are associated with the given settlement.
        sig { returns(String) }
        attr_accessor :settlement

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after

        # Only return transactions that have the given type. One of `capture` or `refund`.
        sig { returns(String) }
        attr_accessor :type

        sig {
          params(card: String, cardholder: String, created: T.any(::Stripe::Issuing::TransactionService::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, settlement: String, starting_after: String, type: String).void
         }
        def initialize(
          card: nil,
          cardholder: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          settlement: nil,
          starting_after: nil,
          type: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata

        sig { params(expand: T::Array[String], metadata: T.nilable(T::Hash[String, String])).void }
        def initialize(expand: nil, metadata: nil); end
      end
      # Returns a list of Issuing Transaction objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::TransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing Transaction object.
      sig {
        params(transaction: String, params: T.any(::Stripe::Issuing::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
       }
      def retrieve(transaction, params = {}, opts = {}); end

      # Updates the specified Issuing Transaction object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(transaction: String, params: T.any(::Stripe::Issuing::TransactionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Transaction)
       }
      def update(transaction, params = {}, opts = {}); end
    end
  end
end