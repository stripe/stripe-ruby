# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class CustomerService < StripeService
      class FundCashBalanceParams < Stripe::RequestParams
        # Amount to be used for this test cash balance transaction. A positive integer representing how much to fund in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to fund $1.00 or 100 to fund ¥100, a zero-decimal currency).
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A description of the test funding. This simulates free-text references supplied by customers when making bank transfers to their cash balance. You can use this to test how Stripe's [reconciliation algorithm](https://stripe.com/docs/payments/customer-balance/reconciliation) applies to different user inputs.
        sig { returns(T.nilable(String)) }
        attr_accessor :reference
        sig {
          params(amount: Integer, currency: String, expand: T.nilable(T::Array[String]), reference: T.nilable(String)).void
         }
        def initialize(amount: nil, currency: nil, expand: nil, reference: nil); end
      end
      # Create an incoming testmode bank transfer
      sig {
        params(customer: String, params: T.any(::Stripe::TestHelpers::CustomerService::FundCashBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CustomerCashBalanceTransaction)
       }
      def fund_cash_balance(customer, params = {}, opts = {}); end
    end
  end
end