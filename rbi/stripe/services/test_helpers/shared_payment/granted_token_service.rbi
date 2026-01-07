# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module SharedPayment
      class GrantedTokenService < StripeService
        # Creates a new test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to create SharedPaymentGrantedTokens for testing their integration
        sig {
          params(params: T.any(::Stripe::TestHelpers::SharedPayment::GrantedTokenCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::GrantedToken)
         }
        def create(params = {}, opts = {}); end

        # Revokes a test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to revoke SharedPaymentGrantedTokens for testing their integration
        sig {
          params(shared_payment_granted_token: String, params: T.any(::Stripe::TestHelpers::SharedPayment::GrantedTokenRevokeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SharedPayment::GrantedToken)
         }
        def revoke(shared_payment_granted_token, params = {}, opts = {}); end
      end
    end
  end
end