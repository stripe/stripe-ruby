# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class CustomerPaymentTokenService < StripeService
      # Lists the Payment Tokens for a Crypto Customer.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::CustomerPaymentTokenListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(id, params = {}, opts = {}); end
    end
  end
end