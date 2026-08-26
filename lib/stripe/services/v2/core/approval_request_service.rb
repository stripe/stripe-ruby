# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ApprovalRequestService < StripeService
        # POST /v2/core/approval_requests/:id/cancel
        # Cancels a pending approval request.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/approval_requests/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # GET /v2/core/approval_requests
        # Lists approval requests with optional filtering.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/approval_requests",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # GET /v2/core/approval_requests/:id
        # Retrieves an approval request by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/approval_requests/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # POST /v2/core/approval_requests/:id
        # Updates a pending approval request's mutable fields.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/approval_requests/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
