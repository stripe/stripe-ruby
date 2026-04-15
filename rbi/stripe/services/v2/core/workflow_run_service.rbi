# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class WorkflowRunService < StripeService
        # List all Workflow Runs.
        sig {
          params(params: T.any(::Stripe::V2::Core::WorkflowRunListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Workflow Run by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::WorkflowRunRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::WorkflowRun)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end