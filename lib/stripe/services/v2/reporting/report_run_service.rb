# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Reporting
      class ReportRunService < StripeService
        # Initiates the generation of a `ReportRun` based on the specified report template
        # and user-provided parameters. It's the starting point for obtaining report data,
        # and returns a `ReportRun` object which can be used to track the progress and retrieve
        # the results of the report.
        #
        # ** raises RateLimitError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/reporting/report_runs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Fetches the current state and details of a previously created `ReportRun`. If the `ReportRun`
        # has succeeded, the endpoint will provide details for how to retrieve the results.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/reporting/report_runs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
