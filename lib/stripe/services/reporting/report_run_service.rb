# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reporting
    class ReportRunService < StripeService
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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Creates a new object and begin running the report. (Certain report types require a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).)
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/reporting/report_runs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Report Runs, with the most recent appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reporting/report_runs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing Report Run.
      def retrieve(report_run, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/reporting/report_runs/%<report_run>s", { report_run: CGI.escape(report_run) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
