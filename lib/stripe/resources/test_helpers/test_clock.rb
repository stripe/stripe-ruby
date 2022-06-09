# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class TestClock < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "test_helpers.test_clock"

      def advance(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s/advance", { test_clock: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.advance(test_clock, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/test_helpers/test_clocks/%<test_clock>s/advance", { test_clock: CGI.escape(test_clock) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
