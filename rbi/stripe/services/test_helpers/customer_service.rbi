# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class CustomerService < StripeService
      # Create an incoming testmode bank transfer
      sig {
        params(id: String, params: T.any(::Stripe::TestHelpers::CustomerFundCashBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::CustomerCashBalanceTransaction)
       }
      def fund_cash_balance(id, params = {}, opts = {}); end
    end
  end
end