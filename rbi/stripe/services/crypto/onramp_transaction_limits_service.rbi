# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampTransactionLimitsService < StripeService
      # Retrieves the remaining onramp limit for a crypto customer.
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampTransactionLimitsRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampTransactionLimits)
       }
      def retrieve(params = {}, opts = {}); end
    end
  end
end