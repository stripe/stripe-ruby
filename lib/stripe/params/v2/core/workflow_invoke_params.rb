# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class WorkflowInvokeParams < ::Stripe::RequestParams
        # Parameters used to invoke the Workflow Run.
        attr_accessor :input_parameters

        def initialize(input_parameters: nil)
          @input_parameters = input_parameters
        end
      end
    end
  end
end
