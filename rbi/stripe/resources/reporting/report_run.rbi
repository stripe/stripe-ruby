# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
      class Parameters < Stripe::StripeObject
        # The set of output columns requested for inclusion in the report run.
        sig { returns(T::Array[String]) }
        def columns; end
        # Connected account ID by which to filter the report run.
        sig { returns(String) }
        def connected_account; end
        # Currency of objects to be included in the report run.
        sig { returns(String) }
        def currency; end
        # Ending timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after the user specified `interval_start` and 1 second before this report's last `data_available_end` value.
        sig { returns(Integer) }
        def interval_end; end
        # Starting timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after this report's `data_available_start` and 1 second before the user specified `interval_end` value.
        sig { returns(Integer) }
        def interval_start; end
        # Payout ID by which to filter the report run.
        sig { returns(String) }
        def payout; end
        # Category of balance transactions to be included in the report run.
        sig { returns(String) }
        def reporting_category; end
        # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
        sig { returns(String) }
        def timezone; end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # If something should go wrong during the run, a message about the failure (populated when
      #  `status=failed`).
      sig { returns(T.nilable(String)) }
      def error; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # `true` if the report is run on live mode data and `false` if it is run on test mode data.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Attribute for field parameters
      sig { returns(Parameters) }
      def parameters; end
      # The ID of the [report type](https://stripe.com/docs/reports/report-types) to run, such as `"balance.summary.1"`.
      sig { returns(String) }
      def report_type; end
      # The file object representing the result of the report run (populated when
      #  `status=succeeded`).
      sig { returns(T.nilable(Stripe::File)) }
      def result; end
      # Status of this report run. This will be `pending` when the run is initially created.
      #  When the run finishes, this will be set to `succeeded` and the `result` field will be populated.
      #  Rarely, we may encounter an error, at which point this will be set to `failed` and the `error` field will be populated.
      sig { returns(String) }
      def status; end
      # Timestamp at which this run successfully finished (populated when
      #  `status=succeeded`). Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def succeeded_at; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return Report Runs that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Reporting::ReportRun::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Reporting::ReportRun::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Reporting::ReportRun::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(created: T.nilable(T.any(::Stripe::Reporting::ReportRun::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Parameters < Stripe::RequestParams
          # The set of report columns to include in the report output. If omitted, the Report Type is run with its default column set.
          sig { returns(T.nilable(T::Array[String])) }
          def columns; end
          sig { params(_columns: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def columns=(_columns); end
          # Connected account ID to filter for in the report run.
          sig { returns(T.nilable(String)) }
          def connected_account; end
          sig { params(_connected_account: T.nilable(String)).returns(T.nilable(String)) }
          def connected_account=(_connected_account); end
          # Currency of objects to be included in the report run.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Ending timestamp of data to be included in the report run (exclusive).
          sig { returns(T.nilable(Integer)) }
          def interval_end; end
          sig { params(_interval_end: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_end=(_interval_end); end
          # Starting timestamp of data to be included in the report run.
          sig { returns(T.nilable(Integer)) }
          def interval_start; end
          sig { params(_interval_start: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_start=(_interval_start); end
          # Payout ID by which to filter the report run.
          sig { returns(T.nilable(String)) }
          def payout; end
          sig { params(_payout: T.nilable(String)).returns(T.nilable(String)) }
          def payout=(_payout); end
          # Category of balance transactions to be included in the report run.
          sig { returns(T.nilable(String)) }
          def reporting_category; end
          sig { params(_reporting_category: T.nilable(String)).returns(T.nilable(String)) }
          def reporting_category=(_reporting_category); end
          # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
          sig { returns(T.nilable(String)) }
          def timezone; end
          sig { params(_timezone: T.nilable(String)).returns(T.nilable(String)) }
          def timezone=(_timezone); end
          sig {
            params(columns: T.nilable(T::Array[String]), connected_account: T.nilable(String), currency: T.nilable(String), interval_end: T.nilable(Integer), interval_start: T.nilable(Integer), payout: T.nilable(String), reporting_category: T.nilable(String), timezone: T.nilable(String)).void
           }
          def initialize(
            columns: nil,
            connected_account: nil,
            currency: nil,
            interval_end: nil,
            interval_start: nil,
            payout: nil,
            reporting_category: nil,
            timezone: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://stripe.com/docs/reporting/statements/api) documentation.
        sig { returns(T.nilable(::Stripe::Reporting::ReportRun::CreateParams::Parameters)) }
        def parameters; end
        sig {
          params(_parameters: T.nilable(::Stripe::Reporting::ReportRun::CreateParams::Parameters)).returns(T.nilable(::Stripe::Reporting::ReportRun::CreateParams::Parameters))
         }
        def parameters=(_parameters); end
        # The ID of the [report type](https://stripe.com/docs/reporting/statements/api#report-types) to run, such as `"balance.summary.1"`.
        sig { returns(String) }
        def report_type; end
        sig { params(_report_type: String).returns(String) }
        def report_type=(_report_type); end
        sig {
          params(expand: T.nilable(T::Array[String]), parameters: T.nilable(::Stripe::Reporting::ReportRun::CreateParams::Parameters), report_type: String).void
         }
        def initialize(expand: nil, parameters: nil, report_type: nil); end
      end
      # Creates a new object and begin running the report. (Certain report types require a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).)
      sig {
        params(params: T.any(::Stripe::Reporting::ReportRun::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Reporting::ReportRun)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of Report Runs, with the most recent appearing first.
      sig {
        params(params: T.any(::Stripe::Reporting::ReportRun::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end