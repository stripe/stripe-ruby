# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ConfirmationTokenService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Retrieves an existing ConfirmationToken object
    sig {
      params(confirmation_token: String, params: T.any(::Stripe::ConfirmationTokenService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ConfirmationToken)
     }
    def retrieve(confirmation_token, params = {}, opts = {}); end
  end
end