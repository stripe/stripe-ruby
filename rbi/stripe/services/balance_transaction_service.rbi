# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceTransactionService < StripeService
    # Returns a list of transactions that have contributed to the Stripe account balance (for example, charges, transfers, and so on). The transactions return in sorted order, with the most recent transactions appearing first.
    #
    # The previous name of this endpoint was “Balance history,” and it used the path /v1/balance/history.
    sig {
      params(params: T.any(::Stripe::BalanceTransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the balance transaction with the given ID.
    #
    # Note that this endpoint previously used the path /v1/balance/history/:id.
    sig {
      params(id: String, params: T.any(::Stripe::BalanceTransactionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::BalanceTransaction)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end