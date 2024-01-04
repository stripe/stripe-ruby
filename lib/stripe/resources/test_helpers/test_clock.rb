# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    # A test clock enables deterministic control over objects in testmode. With a test clock, you can create
    # objects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances,
    # you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
    class TestClock < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "test_helpers.test_clock"

      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      def advance(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s/advance", { test_clock: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      def self.advance(test_clock, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s/advance", { test_clock: CGI.escape(test_clock) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
