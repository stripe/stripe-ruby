# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class TestClockService < StripeService
      class DeleteParams < Stripe::RequestParams; end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The initial frozen time for this test clock.
        attr_accessor :frozen_time
        # The name for this test clock.
        attr_accessor :name

        def initialize(expand: nil, frozen_time: nil, name: nil)
          @expand = expand
          @frozen_time = frozen_time
          @name = name
        end
      end

      class AdvanceParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The time to advance the test clock. Must be after the test clock's current frozen time. Cannot be more than two intervals in the future from the shortest subscription in this test clock. If there are no subscriptions in this test clock, it cannot be more than two years in the future.
        attr_accessor :frozen_time

        def initialize(expand: nil, frozen_time: nil)
          @expand = expand
          @frozen_time = frozen_time
        end
      end

      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      def advance(test_clock, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s/advance", { test_clock: CGI.escape(test_clock) }),
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
      def delete(test_clock, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s", { test_clock: CGI.escape(test_clock) }),
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
      def retrieve(test_clock, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s", { test_clock: CGI.escape(test_clock) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
