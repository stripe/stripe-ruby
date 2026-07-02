# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class CustomerConsumerWalletService < StripeService
      # Lists the Consumer Wallets for a Crypto Customer.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/crypto/customers/%<id>s/crypto_consumer_wallets", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
