# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ActivityLogListParams < ::Stripe::RequestParams
        # Filter results to only include activity logs for the specified action group types.
        attr_accessor :action_groups
        # Filter results to only include activity logs for the specified action types.
        attr_accessor :actions
        # Maximum number of results to return per page.
        attr_accessor :limit
        # Controls which activity logs an organization-level request returns. Specify `@self` to return logs recorded in the organization context and `@organization_members` to return logs recorded in accounts that belong to the organization. Specify both values to return logs from both sources. Defaults to `["@self"]` when omitted. Cannot be empty.
        attr_accessor :logs_from

        def initialize(action_groups: nil, actions: nil, limit: nil, logs_from: nil)
          @action_groups = action_groups
          @actions = actions
          @limit = limit
          @logs_from = logs_from
        end
      end
    end
  end
end
