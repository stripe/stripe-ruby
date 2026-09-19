# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class TestClockService < StripeService
      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      def advance(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/test_helpers/test_clocks/%<id>s/advance", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a new test clock that can be attached to new customers and quotes.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/test_helpers/test_clocks",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a test clock.
      def delete(id, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/test_helpers/test_clocks/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of your test clocks.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/test_helpers/test_clocks",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a test clock.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/test_helpers/test_clocks/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
