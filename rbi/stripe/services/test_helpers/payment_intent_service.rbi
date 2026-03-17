# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class PaymentIntentService < StripeService
      # Simulate an incoming crypto deposit for a testmode PaymentIntent with payment_method_options[crypto][mode]=deposit. The transaction_hash parameter determines whether the simulated deposit succeeds or fails. Learn more about [testing your integration](https://docs.stripe.com/docs/payments/deposit-mode-stablecoin-payments#test-your-integration).
      sig {
        params(intent: String, params: T.any(::Stripe::TestHelpers::PaymentIntentSimulateCryptoDepositParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentIntent)
       }
      def simulate_crypto_deposit(intent, params = {}, opts = {}); end
    end
  end
end