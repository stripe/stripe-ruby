# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class OrderSubmitParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # `expected_total` should always be set to the order's `amount_total` field. If they don't match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
    attr_accessor :expected_total

    def initialize(expand: nil, expected_total: nil)
      @expand = expand
      @expected_total = expected_total
    end
  end
end
