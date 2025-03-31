# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Sigma
    # If you have [scheduled a Sigma query](https://stripe.com/docs/sigma/scheduled-queries), you'll
    # receive a `sigma.scheduled_query_run.created` webhook each time the query
    # runs. The webhook contains a `ScheduledQueryRun` object, which you can use to
    # retrieve the query results.
    class ScheduledQueryRun < APIResource
      class Error < Stripe::StripeObject
        # Information about the run failure.
        sig { returns(String) }
        attr_reader :message
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # When the query was run, Sigma contained a snapshot of your Stripe data at this time.
      sig { returns(Integer) }
      attr_reader :data_load_time
      # Attribute for field error
      sig { returns(Error) }
      attr_reader :error
      # The file object representing the results of the query.
      sig { returns(T.nilable(Stripe::File)) }
      attr_reader :file
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Time at which the result expires and is no longer available for download.
      sig { returns(Integer) }
      attr_reader :result_available_until
      # SQL for the query.
      sig { returns(String) }
      attr_reader :sql
      # The query's execution status, which will be `completed` for successful runs, and `canceled`, `failed`, or `timed_out` otherwise.
      sig { returns(String) }
      attr_reader :status
      # Title of the query.
      sig { returns(String) }
      attr_reader :title
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
      # Returns a list of scheduled query runs.
      sig {
        params(params: T.any(::Stripe::Sigma::ScheduledQueryRun::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end