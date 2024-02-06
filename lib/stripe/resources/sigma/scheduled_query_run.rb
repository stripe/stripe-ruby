# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Sigma
    # If you have [scheduled a Sigma query](https://stripe.com/docs/sigma/scheduled-queries), you'll
    # receive a `sigma.scheduled_query_run.created` webhook each time the query
    # runs. The webhook contains a `ScheduledQueryRun` object, which you can use to
    # retrieve the query results.
    class ScheduledQueryRun < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "scheduled_query_run"

      def self.resource_url
        "/v1/sigma/scheduled_query_runs"
      end

      # Returns a list of scheduled query runs.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/sigma/scheduled_query_runs",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
