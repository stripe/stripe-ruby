# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class AdjustmentService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for Adjustments linked to a Flow.
          sig { returns(T.nilable(String)) }
          attr_accessor :adjusted_flow
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lte
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig {
            params(adjusted_flow: T.nilable(String), created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer)).void
           }
          def initialize(
            adjusted_flow: nil,
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Returns a list of Adjustments that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::AdjustmentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an Adjustment by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::AdjustmentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::Adjustment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end