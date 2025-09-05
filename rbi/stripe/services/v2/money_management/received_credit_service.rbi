# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedCreditService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created; end
          sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
          def created=(_created); end
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gt; end
          sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
          def created_gt=(_created_gt); end
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gte; end
          sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
          def created_gte=(_created_gte); end
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lt; end
          sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
          def created_lt=(_created_lt); end
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lte; end
          sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
          def created_lte=(_created_lte); end
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer)).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Retrieves a list of ReceivedCredits.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::ReceivedCreditService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a ReceivedCredit by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::ReceivedCreditService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::ReceivedCredit)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end