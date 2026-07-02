# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampTransactionLimitsService < StripeService
      # Retrieves the remaining onramp limit for a crypto customer.
      def retrieve(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/crypto/onramp_transaction_limits",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
