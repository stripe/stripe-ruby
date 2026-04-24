# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Reporting
        class QueryRunService < StripeService
          # Creates a query run to execute ad-hoc SQL and returns a `QueryRun` object to track progress and retrieve results.
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/data/reporting/query_runs",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Fetches the current state and details of a previously created `QueryRun`. If the `QueryRun`
          # has succeeded, the endpoint will provide details for how to retrieve the results.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/data/reporting/query_runs/%<id>s", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
