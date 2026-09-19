# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerCashBalanceTransactionService < StripeService
    # Returns a list of transactions that modified the customer's [cash balance](https://docs.stripe.com/docs/payments/customer-balance).
    sig {
      params(id: String, params: T.any(::Stripe::CustomerCashBalanceTransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(id, params = {}, opts = {}); end

    # Retrieves a specific cash balance transaction, which updated the customer's [cash balance](https://docs.stripe.com/docs/payments/customer-balance).
    sig {
      params(customer_id: String, id: String, params: T.any(::Stripe::CustomerCashBalanceTransactionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::CustomerCashBalanceTransaction)
     }
    def retrieve(customer_id, id, params = {}, opts = {}); end
  end
end