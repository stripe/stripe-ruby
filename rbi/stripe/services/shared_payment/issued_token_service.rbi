# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    class IssuedTokenService < StripeService
      # Creates a new SharedPaymentIssuedToken object
      sig {
        params(params: T.any(::Stripe::SharedPayment::IssuedTokenCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::IssuedToken)
       }
      def create(params = {}, opts = {}); end

      # Retrieves an existing SharedPaymentIssuedToken object
      sig {
        params(id: String, params: T.any(::Stripe::SharedPayment::IssuedTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::IssuedToken)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Revokes a SharedPaymentIssuedToken
      sig {
        params(id: String, params: T.any(::Stripe::SharedPayment::IssuedTokenRevokeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::IssuedToken)
       }
      def revoke(id, params = {}, opts = {}); end
    end
  end
end