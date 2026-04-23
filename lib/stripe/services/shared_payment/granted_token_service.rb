# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    class GrantedTokenService < StripeService
      # Retrieves an existing SharedPaymentGrantedToken object
      def retrieve(shared_payment_granted_token, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/shared_payment/granted_tokens/%<shared_payment_granted_token>s", { shared_payment_granted_token: CGI.escape(shared_payment_granted_token) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
