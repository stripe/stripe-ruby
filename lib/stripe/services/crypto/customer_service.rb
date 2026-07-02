# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class CustomerService < StripeService
      attr_reader :consumer_wallets, :payment_tokens

      def initialize(requestor)
        super
        @consumer_wallets = Stripe::Crypto::CustomerConsumerWalletService.new(@requestor)
        @payment_tokens = Stripe::Crypto::CustomerPaymentTokenService.new(@requestor)
      end

      # Retrieves the details of a Crypto Customer.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/crypto/customers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
