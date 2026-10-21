# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class OperationSearchParams < ::Stripe::RequestParams
        # Restrict results to public resource catalogs. Defaults to all catalogs
        # available to the caller.
        sig { returns(T.nilable(T::Array[String])) }
        def catalogs; end
        sig { params(_catalogs: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def catalogs=(_catalogs); end
        # Maximum results. Default: 5, Max: 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # The page token for pagination.
        sig { returns(T.nilable(String)) }
        def page; end
        sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
        def page=(_page); end
        # Natural-language question. Required.
        sig { returns(String) }
        def query; end
        sig { params(_query: String).returns(String) }
        def query=(_query); end
        sig {
          params(catalogs: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
         }
        def initialize(catalogs: nil, limit: nil, page: nil, query: nil); end
      end
    end
  end
end