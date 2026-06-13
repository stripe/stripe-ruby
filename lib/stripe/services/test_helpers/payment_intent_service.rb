# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class PaymentIntentService < StripeService
      # Simulate an incoming crypto deposit for a testmode PaymentIntent with payment_method_options[crypto][mode]=deposit. The transaction_hash parameter determines whether the simulated deposit succeeds or fails. Learn more about [testing your integration](https://docs.stripe.com/docs/payments/deposit-mode-stablecoin-payments#test-your-integration).
      def simulate_crypto_deposit(intent, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/test_helpers/payment_intents/%<intent>s/simulate_crypto_deposit", { intent: CGI.escape(intent) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
