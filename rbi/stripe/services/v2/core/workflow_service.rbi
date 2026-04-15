# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class WorkflowService < StripeService
        # Invokes an on-demand Workflow with parameters, to launch a new Workflow Run.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::WorkflowInvokeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::WorkflowRun)
         }
        def invoke(id, params = {}, opts = {}); end

        # List all Workflows.
        sig {
          params(params: T.any(::Stripe::V2::Core::WorkflowListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Workflow by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::WorkflowRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Workflow)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end