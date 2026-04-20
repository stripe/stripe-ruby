# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    class GrantedTokenService < StripeService
      # Retrieves an existing SharedPaymentGrantedToken object
      sig {
        params(shared_payment_granted_token: String, params: T.any(::Stripe::SharedPayment::GrantedTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::GrantedToken)
       }
      def retrieve(shared_payment_granted_token, params = {}, opts = {}); end
    end
  end
end