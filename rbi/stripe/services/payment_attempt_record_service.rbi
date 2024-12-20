# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordService < StripeService
    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # The ID of the Payment Record.
      sig { returns(String) }
      attr_accessor :payment_record

      sig { params(expand: T::Array[String], payment_record: String).void }
      def initialize(expand: nil, payment_record: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      sig { params(expand: T::Array[String]).void }
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