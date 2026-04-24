# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      class WorkflowRunService < StripeService
        # List all Workflow Runs.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/extend/workflow_runs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of a Workflow Run by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/extend/workflow_runs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
