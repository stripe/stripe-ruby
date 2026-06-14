# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ApprovalRequestService < StripeService
        # POST /v2/core/approval_requests/:id/cancel
        # Cancels a pending approval request.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ApprovalRequestCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ApprovalRequest)
         }
        def cancel(id, params = {}, opts = {}); end

        # POST /v2/core/approval_requests/:id/execute
        # Executes an approved approval request.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ApprovalRequestExecuteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ApprovalRequest)
         }
        def execute(id, params = {}, opts = {}); end

        # GET /v2/core/approval_requests
        # Lists approval requests with optional filtering.
        sig {
          params(params: T.any(::Stripe::V2::Core::ApprovalRequestListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # GET /v2/core/approval_requests/:id
        # Retrieves an approval request by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ApprovalRequestRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ApprovalRequest)
         }
        def retrieve(id, params = {}, opts = {}); end

        # POST /v2/core/approval_requests/:id/submit
        # Moves a pending approval request into the reviewer queue for auto-execution upon approval.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ApprovalRequestSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ApprovalRequest)
         }
        def submit(id, params = {}, opts = {}); end
      end
    end
  end
end