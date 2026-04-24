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

        def initialize(action_groups: nil, actions: nil, limit: nil)
          @action_groups = action_groups
          @actions = actions
          @limit = limit
        end
      end
    end
  end
end
