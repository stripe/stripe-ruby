# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      class WorkflowInvokeParams < ::Stripe::RequestParams
        # Parameters used to invoke the Workflow Run.
        sig { returns(T::Hash[String, T.untyped]) }
        def input_parameters; end
        sig {
          params(_input_parameters: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped])
         }
        def input_parameters=(_input_parameters); end
        sig { params(input_parameters: T::Hash[String, T.untyped]).void }
        def initialize(input_parameters: nil); end
      end
    end
  end
end