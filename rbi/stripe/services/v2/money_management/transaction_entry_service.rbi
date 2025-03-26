# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionEntryService < StripeService
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
          # The page limit.
          sig { returns(Integer) }
          attr_accessor :limit
          # Filter for TransactionEntries belonging to a Transaction.
          sig { returns(String) }
          attr_accessor :transaction
          sig {
            params(created: String, created_gt: String, created_gte: String, created_lt: String, created_lte: String, limit: Integer, transaction: String).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            transaction: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        # Returns a list of TransactionEntries that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::TransactionEntryService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a TransactionEntry by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::TransactionEntryService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::TransactionEntry)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end