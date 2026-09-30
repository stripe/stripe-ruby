# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportRunService < StripeService
        # Initiates the generation of a `ReportRun` based on the specified `Report` and
        # caller-provided parameters. Returns a `ReportRun` object which can be used to track
        # the progress and retrieve the results of the report.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/data/report_runs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Fetches the current state and details of a previously created `ReportRun`. If the
        # `ReportRun` has succeeded, the endpoint provides details for how to retrieve the results.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/data/report_runs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
