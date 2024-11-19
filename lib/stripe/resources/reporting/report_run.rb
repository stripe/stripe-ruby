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
      def self.object_name
        "reporting.report_run"
      end

      class Parameters < Stripe::StripeObject
        attr_reader :columns, :connected_account, :currency, :interval_end, :interval_start, :payout, :reporting_category, :timezone
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # If something should go wrong during the run, a message about the failure (populated when
      #  `status=failed`).
      attr_reader :error
      # Unique identifier for the object.
      attr_reader :id
      # `true` if the report is run on live mode data and `false` if it is run on test mode data.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field parameters
      attr_reader :parameters
      # The ID of the [report type](https://stripe.com/docs/reports/report-types) to run, such as `"balance.summary.1"`.
      attr_reader :report_type
      # The file object representing the result of the report run (populated when
      #  `status=succeeded`).
      attr_reader :result
      # Status of this report run. This will be `pending` when the run is initially created.
      #  When the run finishes, this will be set to `succeeded` and the `result` field will be populated.
      #  Rarely, we may encounter an error, at which point this will be set to `failed` and the `error` field will be populated.
      attr_reader :status
      # Timestamp at which this run successfully finished (populated when
      #  `status=succeeded`). Measured in seconds since the Unix epoch.
      attr_reader :succeeded_at

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
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/reporting/report_runs",
          params: params,
          opts: opts
        )
      end
    end
  end
end
