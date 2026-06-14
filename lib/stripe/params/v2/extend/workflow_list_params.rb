# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      class WorkflowListParams < ::Stripe::RequestParams
        # Restrict page size to no more than this number.
        attr_accessor :limit
        # When retrieving Workflows, include only those with the specified status values.
        # If not specified, all Workflows in active and inactive status are returned.
        attr_accessor :status

        def initialize(limit: nil, status: nil)
          @limit = limit
          @status = status
        end
      end
    end
  end
end
