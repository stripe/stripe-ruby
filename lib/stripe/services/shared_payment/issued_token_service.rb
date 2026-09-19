# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    class IssuedTokenService < StripeService
      # Creates a new SharedPaymentIssuedToken object
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/shared_payment/issued_tokens",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an existing SharedPaymentIssuedToken object
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/shared_payment/issued_tokens/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Revokes a SharedPaymentIssuedToken
      def revoke(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/shared_payment/issued_tokens/%<id>s/revoke", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
