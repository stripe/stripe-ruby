# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class DisputeCloseParams < ::Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Whether to close the dispute as `won` or `lost`.
        attr_accessor :status

        def initialize(expand: nil, status: nil)
          @expand = expand
          @status = status
        end
      end
    end
  end
end
