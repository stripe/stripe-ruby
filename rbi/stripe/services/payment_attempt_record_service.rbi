# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordService < StripeService
    class ListParams < Stripe::RequestParams
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
      # The ID of the Payment Record.
      sig { returns(String) }
      def payment_record; end
      sig { params(_payment_record: String).returns(String) }
      def payment_record=(_payment_record); end
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_record: String).void
       }
      def initialize(expand: nil, limit: nil, payment_record: nil); end
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
    # List all the Payment Attempt Records attached to the specified Payment Record.
    sig {
      params(params: T.any(::Stripe::PaymentAttemptRecordService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves a Payment Attempt Record with the given ID
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentAttemptRecord)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end