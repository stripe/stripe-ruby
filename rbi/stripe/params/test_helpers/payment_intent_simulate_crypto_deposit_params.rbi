# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class PaymentIntentSimulateCryptoDepositParams < ::Stripe::RequestParams
      # The buyer's wallet address from which the crypto deposit is originating.
      sig { returns(String) }
      def buyer_wallet; end
      sig { params(_buyer_wallet: String).returns(String) }
      def buyer_wallet=(_buyer_wallet); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The blockchain network of the simulated crypto deposit.
      sig { returns(String) }
      def network; end
      sig { params(_network: String).returns(String) }
      def network=(_network); end
      # The token currency of the simulated crypto deposit.
      sig { returns(String) }
      def token_currency; end
      sig { params(_token_currency: String).returns(String) }
      def token_currency=(_token_currency); end
      # A testmode transaction hash that determines the outcome of the simulated deposit.
      sig { returns(String) }
      def transaction_hash; end
      sig { params(_transaction_hash: String).returns(String) }
      def transaction_hash=(_transaction_hash); end
      sig {
        params(buyer_wallet: String, expand: T.nilable(T::Array[String]), network: String, token_currency: String, transaction_hash: String).void
       }
      def initialize(
        buyer_wallet: nil,
        expand: nil,
        network: nil,
        token_currency: nil,
        transaction_hash: nil
      ); end
    end
  end
end