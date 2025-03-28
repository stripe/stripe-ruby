# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class TestClockService < StripeService
      class DeleteParams < Stripe::RequestParams

      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
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
        params(test_clock: String, params: T.any(::Stripe::TestHelpers::TestClockService::AdvanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def advance(test_clock, params = {}, opts = {}); end

      # Creates a new test clock that can be attached to new customers and quotes.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClockService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def create(params = {}, opts = {}); end

      # Deletes a test clock.
      sig {
        params(test_clock: String, params: T.any(::Stripe::TestHelpers::TestClockService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def delete(test_clock, params = {}, opts = {}); end

      # Returns a list of your test clocks.
      sig {
        params(params: T.any(::Stripe::TestHelpers::TestClockService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a test clock.
      sig {
        params(test_clock: String, params: T.any(::Stripe::TestHelpers::TestClockService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TestHelpers::TestClock)
       }
      def retrieve(test_clock, params = {}, opts = {}); end
    end
  end
end