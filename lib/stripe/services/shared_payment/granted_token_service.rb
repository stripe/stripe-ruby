# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    class GrantedTokenService < StripeService
      # Retrieves an existing SharedPaymentGrantedToken object
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/shared_payment/granted_tokens/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
