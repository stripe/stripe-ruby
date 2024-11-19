# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Sigma
    # If you have [scheduled a Sigma query](https://stripe.com/docs/sigma/scheduled-queries), you'll
    # receive a `sigma.scheduled_query_run.created` webhook each time the query
    # runs. The webhook contains a `ScheduledQueryRun` object, which you can use to
    # retrieve the query results.
    class ScheduledQueryRun < APIResource
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(Integer) }
      # When the query was run, Sigma contained a snapshot of your Stripe data at this time.
      attr_reader :data_load_time
      sig { returns(Error) }
      # Attribute for field error
      attr_reader :error
      sig { returns(T.nilable(Stripe::File)) }
      # The file object representing the results of the query.
      attr_reader :file
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Integer) }
      # Time at which the result expires and is no longer available for download.
      attr_reader :result_available_until
      sig { returns(String) }
      # SQL for the query.
      attr_reader :sql
      sig { returns(String) }
      # The query's execution status, which will be `completed` for successful runs, and `canceled`, `failed`, or `timed_out` otherwise.
      attr_reader :status
      sig { returns(String) }
      # Title of the query.
      attr_reader :title
    end
  end
end