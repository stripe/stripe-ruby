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
        # The set of output columns requested for inclusion in the report run.
        attr_reader :columns
        # Connected account ID by which to filter the report run.
        attr_reader :connected_account
        # Currency of objects to be included in the report run.
        attr_reader :currency
        # Ending timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after the user specified `interval_start` and 1 second before this report's last `data_available_end` value.
        attr_reader :interval_end
        # Starting timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after this report's `data_available_start` and 1 second before the user specified `interval_end` value.
        attr_reader :interval_start
        # Payout ID by which to filter the report run.
        attr_reader :payout
        # Category of balance transactions to be included in the report run.
        attr_reader :reporting_category
        # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
        attr_reader :timezone
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return Report Runs that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Parameters < Stripe::RequestParams
          # The set of report columns to include in the report output. If omitted, the Report Type is run with its default column set.
          attr_accessor :columns
          # Connected account ID to filter for in the report run.
          attr_accessor :connected_account
          # Currency of objects to be included in the report run.
          attr_accessor :currency
          # Ending timestamp of data to be included in the report run (exclusive).
          attr_accessor :interval_end
          # Starting timestamp of data to be included in the report run.
          attr_accessor :interval_start
          # Payout ID by which to filter the report run.
          attr_accessor :payout
          # Category of balance transactions to be included in the report run.
          attr_accessor :reporting_category
          # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
          attr_accessor :timezone

          def initialize(
            columns: nil,
            connected_account: nil,
            currency: nil,
            interval_end: nil,
            interval_start: nil,
            payout: nil,
            reporting_category: nil,
            timezone: nil
          )
            @columns = columns
            @connected_account = connected_account
            @currency = currency
            @interval_end = interval_end
            @interval_start = interval_start
            @payout = payout
            @reporting_category = reporting_category
            @timezone = timezone
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://stripe.com/docs/reporting/statements/api) documentation.
        attr_accessor :parameters
        # The ID of the [report type](https://stripe.com/docs/reporting/statements/api#report-types) to run, such as `"balance.summary.1"`.
        attr_accessor :report_type

        def initialize(expand: nil, parameters: nil, report_type: nil)
          @expand = expand
          @parameters = parameters
          @report_type = report_type
        end
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
