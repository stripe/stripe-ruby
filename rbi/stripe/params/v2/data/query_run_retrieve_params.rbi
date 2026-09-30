# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class QueryRunRetrieveParams < ::Stripe::RequestParams
        # Any optional includes (see https://docs.stripe.com/api-includable-response-values).
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # The maximum number of inline `QueryRun` result rows to return. Defaults to 10. Maximum is 1000.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # The page token for paginating the inline `QueryRun` result rows.
        sig { returns(T.nilable(String)) }
        def page; end
        sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
        def page=(_page); end
        sig {
          params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String)).void
         }
        def initialize(include: nil, limit: nil, page: nil); end
      end
    end
  end
end