# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class CustomerService < StripeService
      attr_reader :consumer_wallets
      attr_reader :payment_tokens
      # Retrieves the details of a Crypto Customer.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::CustomerRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::Customer)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end