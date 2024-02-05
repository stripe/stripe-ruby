# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reporting
    # The Report Run object represents an instance of a report type generated with
    # specific run parameters. Once the object is created, Stripe begins processing the report.
    # When the report has finished running, it will give you a reference to a file
    # where you can retrieve your results. For an overview, see
    # [API Access to Reports](https://stripe.com/docs/reporting/statements/api).
    #
    # Note that certain report types can only be run based on your live-mode data (not test-mode
    # data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
    class ReportRun < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "reporting.report_run"

      # Creates a new object and begin running the report. (Certain report types require a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).)
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/reporting/report_runs",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Report Runs, with the most recent appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/reporting/report_runs",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
