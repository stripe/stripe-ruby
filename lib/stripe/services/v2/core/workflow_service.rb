# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class WorkflowService < StripeService
        # Invokes an on-demand Workflow with parameters, to launch a new Workflow Run.
        def invoke(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/workflows/%<id>s/invoke", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Workflows.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/workflows",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of a Workflow by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/workflows/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
