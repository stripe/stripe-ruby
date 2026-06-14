# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      class WorkflowService < StripeService
        # Invokes an on-demand Workflow with parameters, to launch a new Workflow Run.
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::Extend::WorkflowInvokeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Extend::WorkflowRun)
         }
        def invoke(id, params = {}, opts = {}); end

        # List all Workflows.
        sig {
          params(params: T.any(::Stripe::V2::Extend::WorkflowListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of a Workflow by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Extend::WorkflowRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Extend::Workflow)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end