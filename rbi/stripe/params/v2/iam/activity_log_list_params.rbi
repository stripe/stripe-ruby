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
        # Controls which activity logs an organization-level request returns. Specify `@self` to return logs recorded in the organization context and `@organization_members` to return logs recorded in accounts that belong to the organization. Specify both values to return logs from both sources. Defaults to `["@self"]` when omitted. Cannot be empty.
        sig { returns(T.nilable(T::Array[String])) }
        def logs_from; end
        sig { params(_logs_from: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def logs_from=(_logs_from); end
        sig {
          params(action_groups: T.nilable(T::Array[String]), actions: T.nilable(T::Array[String]), limit: T.nilable(Integer), logs_from: T.nilable(T::Array[String])).void
         }
        def initialize(action_groups: nil, actions: nil, limit: nil, logs_from: nil); end
      end
    end
  end
end