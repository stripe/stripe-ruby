# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Retrieves the current account balance, based on the authentication that was used to make the request.
    #  For a sample request, see [Accounting for negative balances](https://stripe.com/docs/connect/account-balances#accounting-for-negative-balances).
    sig {
      params(params: T.any(::Stripe::BalanceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Balance)
     }
    def retrieve(params = {}, opts = {}); end
  end
end