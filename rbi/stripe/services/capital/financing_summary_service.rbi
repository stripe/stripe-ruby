# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingSummaryService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      # Retrieve the financing state for the account that was authenticated in the request.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingSummaryService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingSummary)
       }
      def retrieve(params = {}, opts = {}); end
    end
  end
end