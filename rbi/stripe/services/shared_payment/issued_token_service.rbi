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
        params(shared_payment_issued_token: String, params: T.any(::Stripe::SharedPayment::IssuedTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::IssuedToken)
       }
      def retrieve(shared_payment_issued_token, params = {}, opts = {}); end

      # Revokes a SharedPaymentIssuedToken
      sig {
        params(shared_payment_issued_token: String, params: T.any(::Stripe::SharedPayment::IssuedTokenRevokeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::IssuedToken)
       }
      def revoke(shared_payment_issued_token, params = {}, opts = {}); end
    end
  end
end