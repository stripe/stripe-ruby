# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Sigma
    class ScheduledQueryRunService < StripeService
      # Returns a list of scheduled query runs.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/sigma/scheduled_query_runs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an scheduled query run.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/sigma/scheduled_query_runs/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
