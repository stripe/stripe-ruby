# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class BatchJobCreateParams < ::Stripe::RequestParams
        # The API endpoint to batch (e.g., /v1/customers/:id for batch customer updates).
        sig { returns(String) }
        def endpoint; end
        sig { params(_endpoint: String).returns(String) }
        def endpoint=(_endpoint); end
        sig { params(endpoint: String).void }
        def initialize(endpoint: nil); end
      end
    end
  end
end