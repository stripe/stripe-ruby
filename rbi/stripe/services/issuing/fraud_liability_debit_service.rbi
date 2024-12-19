# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class FraudLiabilityDebitService < StripeService
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
        # Only return Issuing Fraud Liability Debits that were created during the given date interval.
        sig {
          returns(T.any(::Stripe::Issuing::FraudLiabilityDebitService::ListParams::Created, Integer))
         }
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

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after

        sig {
          params(created: T.any(::Stripe::Issuing::FraudLiabilityDebitService::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::FraudLiabilityDebitService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing FraudLiabilityDebit object.
      sig {
        params(fraud_liability_debit: String, params: T.any(::Stripe::Issuing::FraudLiabilityDebitService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::FraudLiabilityDebit)
       }
      def retrieve(fraud_liability_debit, params = {}, opts = {}); end
    end
  end
end