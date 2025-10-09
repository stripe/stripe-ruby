# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class OrderSubmitParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # `expected_total` should always be set to the order's `amount_total` field. If they don't match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
    sig { returns(Integer) }
    def expected_total; end
    sig { params(_expected_total: Integer).returns(Integer) }
    def expected_total=(_expected_total); end
    sig { params(expand: T.nilable(T::Array[String]), expected_total: Integer).void }
    def initialize(expand: nil, expected_total: nil); end
  end
end