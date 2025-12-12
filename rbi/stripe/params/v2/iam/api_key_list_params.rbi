# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyListParams < ::Stripe::RequestParams
        # Whether to include expired API keys in the response.
        sig { returns(T.nilable(T::Boolean)) }
        def include_expired; end
        sig { params(_include_expired: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def include_expired=(_include_expired); end
        # Limit of items to return per page.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig { params(include_expired: T.nilable(T::Boolean), limit: T.nilable(Integer)).void }
        def initialize(include_expired: nil, limit: nil); end
      end
    end
  end
end