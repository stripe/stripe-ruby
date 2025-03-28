# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class MandateService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Retrieves a Mandate object.
    sig {
      params(mandate: String, params: T.any(::Stripe::MandateService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Mandate)
     }
    def retrieve(mandate, params = {}, opts = {}); end
  end
end