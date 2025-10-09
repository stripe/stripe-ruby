# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionService < StripeService
        # Returns a list of Transactions that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::TransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Transaction by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::TransactionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::Transaction)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end