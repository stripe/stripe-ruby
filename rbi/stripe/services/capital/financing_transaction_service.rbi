# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingTransactionService < StripeService
      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingTransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a financing transaction for a financing offer.
      sig {
        params(financing_transaction: String, params: T.any(::Stripe::Capital::FinancingTransactionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingTransaction)
       }
      def retrieve(financing_transaction, params = {}, opts = {}); end
    end
  end
end