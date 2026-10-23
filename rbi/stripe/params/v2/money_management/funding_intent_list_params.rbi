# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingIntentListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Return FundingIntents created after this timestamp.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Return FundingIntents created at or after this timestamp.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Return FundingIntents created before this timestamp.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Return FundingIntents created at or before this timestamp.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Filters the results by their creation time.
        sig { returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentListParams::Created)) }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentListParams::Created)).returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentListParams::Created))
         }
        def created=(_created); end
        # The maximum number of results to return.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(created: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentListParams::Created), limit: T.nilable(Integer)).void
         }
        def initialize(created: nil, limit: nil); end
      end
    end
  end
end