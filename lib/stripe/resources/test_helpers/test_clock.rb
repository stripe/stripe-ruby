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
      def self.object_name
        "test_helpers.test_clock"
      end

      class StatusDetails < Stripe::StripeObject
        class Advancing < Stripe::StripeObject
          # The `frozen_time` that the Test Clock is advancing towards.
          attr_reader :target_frozen_time
        end
        # Attribute for field advancing
        attr_reader :advancing
      end

      class DeleteParams < Stripe::RequestParams; end

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
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Time at which this clock is scheduled to auto delete.
      attr_reader :deletes_after
      # Time at which all objects belonging to this clock are frozen.
      attr_reader :frozen_time
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The custom name supplied at creation.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the Test Clock.
      attr_reader :status
      # Attribute for field status_details
      attr_reader :status_details
      # Always true for a deleted object
      attr_reader :deleted

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

      # Creates a new test clock that can be attached to new customers and quotes.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/test_helpers/test_clocks",
          params: params,
          opts: opts
        )
      end

      # Deletes a test clock.
      def self.delete(test_clock, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s", { test_clock: CGI.escape(test_clock) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a test clock.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/test_helpers/test_clocks/%<test_clock>s", { test_clock: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of your test clocks.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/test_helpers/test_clocks",
          params: params,
          opts: opts
        )
      end
    end
  end
end
