# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class QueryRunService < StripeService
        # Submits a SQL query for execution against a dataset and returns a `QueryRun` object
        # to track progress and retrieve results.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/data/query_runs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the status and results of a previously created `QueryRun`.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/data/query_runs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
