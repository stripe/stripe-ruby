# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class WorkflowRunListParams < ::Stripe::RequestParams
        # Restrict page size to no more than this number.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # When retrieving Workflow Runs, include only those with the specified status values. If not specified, all Runs are returned.
        sig { returns(T::Array[String]) }
        def status; end
        sig { params(_status: T::Array[String]).returns(T::Array[String]) }
        def status=(_status); end
        # When retrieving Workflow Runs, include only those associated with the Workflows specified. If not specified, all Runs are returned.
        sig { returns(T::Array[String]) }
        def workflow; end
        sig { params(_workflow: T::Array[String]).returns(T::Array[String]) }
        def workflow=(_workflow); end
        sig {
          params(limit: T.nilable(Integer), status: T::Array[String], workflow: T::Array[String]).void
         }
        def initialize(limit: nil, status: nil, workflow: nil); end
      end
    end
  end
end