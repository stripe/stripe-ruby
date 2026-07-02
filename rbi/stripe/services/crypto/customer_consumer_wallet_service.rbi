# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class CustomerConsumerWalletService < StripeService
      # Lists the Consumer Wallets for a Crypto Customer.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::CustomerConsumerWalletListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(id, params = {}, opts = {}); end
    end
  end
end