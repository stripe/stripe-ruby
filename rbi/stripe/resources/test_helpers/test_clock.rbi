# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    # A test clock enables deterministic control over objects in testmode. With a test clock, you can create
    # objects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances,
    # you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
    class TestClock < APIResource
      class StatusDetails < Stripe::StripeObject
        class Advancing < Stripe::StripeObject
          # The `frozen_time` that the Test Clock is advancing towards.
          sig { returns(Integer) }
          attr_reader :target_frozen_time
        end
        # Attribute for field advancing
        sig { returns(Advancing) }
        attr_reader :advancing
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Time at which this clock is scheduled to auto delete.
      sig { returns(Integer) }
      attr_reader :deletes_after
      # Time at which all objects belonging to this clock are frozen.
      sig { returns(Integer) }
      attr_reader :frozen_time
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # The custom name supplied at creation.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The status of the Test Clock.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
      class DeleteParams < Stripe::RequestParams

      end
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The initial frozen time for this test clock.
        sig { returns(Integer) }
        attr_accessor :frozen_time
        # The name for this test clock.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(expand: T.nilable(T::Array[String]), frozen_time: Integer, name: T.nilable(String)).void
         }
        def initialize(expand: nil, frozen_time: nil, name: nil); end
      end
      class AdvanceParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The time to advance the test clock. Must be after the test clock's current frozen time. Cannot be more than two intervals in the future from the shortest subscription in this test clock. If there are no subscriptions in this test clock, it cannot be more than two years in the future.
        sig { returns(Integer) }
        attr_accessor :frozen_time
        sig { params(expand: T.nilable(T::Array[String]), frozen_time: Integer).void }
        def initialize(expand: nil, frozen_time: nil); end
      end
      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClock::AdvanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def advance(params = {}, opts = {}); end

      # Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to Ready.
      sig {
        params(test_clock: String, params: T.any(::Stripe::TestHelpers::TestClock::AdvanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def self.advance(test_clock, params = {}, opts = {}); end

      # Creates a new test clock that can be attached to new customers and quotes.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClock::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a test clock.
      sig {
        params(test_clock: String, params: T.any(::Stripe::TestHelpers::TestClock::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def self.delete(test_clock, params = {}, opts = {}); end

      # Deletes a test clock.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClock::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def delete(params = {}, opts = {}); end

      # Returns a list of your test clocks.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClock::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end