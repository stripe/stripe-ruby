# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class AdjustmentListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Filter for Adjustments linked to a Flow.
        sig { returns(T.nilable(String)) }
        def adjusted_flow; end
        sig { params(_adjusted_flow: T.nilable(String)).returns(T.nilable(String)) }
        def adjusted_flow=(_adjusted_flow); end
        # Set of filters to query Adjustments within a range of `created` timestamps.
        sig { returns(T.nilable(::Stripe::V2::MoneyManagement::AdjustmentListParams::Created)) }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::MoneyManagement::AdjustmentListParams::Created)).returns(T.nilable(::Stripe::V2::MoneyManagement::AdjustmentListParams::Created))
         }
        def created=(_created); end
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(adjusted_flow: T.nilable(String), created: T.nilable(::Stripe::V2::MoneyManagement::AdjustmentListParams::Created), limit: T.nilable(Integer)).void
         }
        def initialize(adjusted_flow: nil, created: nil, limit: nil); end
      end
    end
  end
end