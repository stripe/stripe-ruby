# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class SchemaListParams < ::Stripe::RequestParams
        # If supplied, only return schemas belonging to this dataset.
        sig { returns(T.nilable(String)) }
        def dataset; end
        sig { params(_dataset: T.nilable(String)).returns(T.nilable(String)) }
        def dataset=(_dataset); end
        # Any optional includes (see https://docs.stripe.com/api-includable-response-values).
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # The maximum number of results per page. Defaults to 10. Maximum is 1,000.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # If supplied, only return schemas with this name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        sig {
          params(dataset: T.nilable(String), include: T.nilable(T::Array[String]), limit: T.nilable(Integer), name: T.nilable(String)).void
         }
        def initialize(dataset: nil, include: nil, limit: nil, name: nil); end
      end
    end
  end
end