# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class QueryRunListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Only return runs created after this time.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Only return runs created at or after this time.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Only return runs created before this time.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Only return runs created at or before this time.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # If supplied, only return query runs created within this time range.
        sig { returns(T.nilable(::Stripe::V2::Data::QueryRunListParams::Created)) }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::Data::QueryRunListParams::Created)).returns(T.nilable(::Stripe::V2::Data::QueryRunListParams::Created))
         }
        def created=(_created); end
        # The maximum number of results per page. Defaults to 10. Maximum is 100.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # If supplied, only return query runs that have any of these statuses.
        sig { returns(T.nilable(T::Array[String])) }
        def statuses; end
        sig { params(_statuses: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def statuses=(_statuses); end
        sig {
          params(created: T.nilable(::Stripe::V2::Data::QueryRunListParams::Created), limit: T.nilable(Integer), statuses: T.nilable(T::Array[String])).void
         }
        def initialize(created: nil, limit: nil, statuses: nil); end
      end
    end
  end
end