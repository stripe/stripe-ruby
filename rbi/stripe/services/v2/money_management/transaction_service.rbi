# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for Transactions created at an exact time.
          sig { returns(String) }
          attr_accessor :created
          # Filter for Transactions created after the specified timestamp.
          sig { returns(String) }
          attr_accessor :created_gt
          # Filter for Transactions created at or after the specified timestamp.
          sig { returns(String) }
          attr_accessor :created_gte
          # Filter for Transactions created before the specified timestamp.
          sig { returns(String) }
          attr_accessor :created_lt
          # Filter for Transactions created at or before the specified timestamp.
          sig { returns(String) }
          attr_accessor :created_lte
          # Filter for Transactions belonging to a FinancialAccount.
          sig { returns(String) }
          attr_accessor :financial_account
          # Filter for Transactions corresponding to a Flow.
          sig { returns(String) }
          attr_accessor :flow
          # The page limit.
          sig { returns(Integer) }
          attr_accessor :limit
          sig {
            params(created: String, created_gt: String, created_gte: String, created_lt: String, created_lte: String, financial_account: String, flow: String, limit: Integer).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            financial_account: nil,
            flow: nil,
            limit: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        # Returns a list of Transactions that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::TransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Transaction by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::Transaction)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end