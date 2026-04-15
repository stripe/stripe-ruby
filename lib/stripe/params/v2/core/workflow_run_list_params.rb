# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class WorkflowRunListParams < ::Stripe::RequestParams
        # Restrict page size to no more than this number.
        attr_accessor :limit
        # When retrieving Workflow Runs, include only those with the specified status values. If not specified, all Runs are returned.
        attr_accessor :status
        # When retrieving Workflow Runs, include only those associated with the Workflows specified. If not specified, all Runs are returned.
        attr_accessor :workflow

        def initialize(limit: nil, status: nil, workflow: nil)
          @limit = limit
          @status = status
          @workflow = workflow
        end
      end
    end
  end
end
