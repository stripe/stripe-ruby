# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module SharedPayment
      class GrantedTokenService < StripeService
        # Creates a new test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to create SharedPaymentGrantedTokens for testing their integration
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/shared_payment/granted_tokens",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Revokes a test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to revoke SharedPaymentGrantedTokens for testing their integration
        def update(shared_payment_granted_token, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/shared_payment/granted_tokens/%<shared_payment_granted_token>s/revoke", { shared_payment_granted_token: CGI.escape(shared_payment_granted_token) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
