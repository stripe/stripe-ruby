# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ActivityLogListParams < ::Stripe::RequestParams
        # Filter results to only include activity logs for the specified action group types.
        sig { returns(T.nilable(T::Array[String])) }
        def action_groups; end
        sig {
          params(_action_groups: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def action_groups=(_action_groups); end
        # Filter results to only include activity logs for the specified action types.
        sig { returns(T.nilable(T::Array[String])) }
        def actions; end
        sig { params(_actions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def actions=(_actions); end
        # Maximum number of results to return per page.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(action_groups: T.nilable(T::Array[String]), actions: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
         }
        def initialize(action_groups: nil, actions: nil, limit: nil); end
      end
    end
  end
end