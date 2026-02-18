# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class BatchJobCreateParams < ::Stripe::RequestParams
        # The API endpoint to batch (e.g., /v1/customers/:id for batch customer updates).
        attr_accessor :endpoint

        def initialize(endpoint: nil)
          @endpoint = endpoint
        end
      end
    end
  end
end
