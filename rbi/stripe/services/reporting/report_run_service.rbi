# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reporting
    class ReportRunService < StripeService
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return Report Runs that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Reporting::ReportRunService::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(created: T.nilable(T.any(::Stripe::Reporting::ReportRunService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
          attr_accessor :columns
          # Connected account ID to filter for in the report run.
          sig { returns(T.nilable(String)) }
          attr_accessor :connected_account
          # Currency of objects to be included in the report run.
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Ending timestamp of data to be included in the report run (exclusive).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_end
          # Starting timestamp of data to be included in the report run.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_start
          # Payout ID by which to filter the report run.
          sig { returns(T.nilable(String)) }
          attr_accessor :payout
          # Category of balance transactions to be included in the report run.
          sig { returns(T.nilable(String)) }
          attr_accessor :reporting_category
          # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
          sig { returns(T.nilable(String)) }
          attr_accessor :timezone
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
        attr_accessor :expand
        # Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://stripe.com/docs/reporting/statements/api) documentation.
        sig { returns(T.nilable(::Stripe::Reporting::ReportRunService::CreateParams::Parameters)) }
        attr_accessor :parameters
        # The ID of the [report type](https://stripe.com/docs/reporting/statements/api#report-types) to run, such as `"balance.summary.1"`.
        sig { returns(String) }
        attr_accessor :report_type
        sig {
          params(expand: T.nilable(T::Array[String]), parameters: T.nilable(::Stripe::Reporting::ReportRunService::CreateParams::Parameters), report_type: String).void
         }
        def initialize(expand: nil, parameters: nil, report_type: nil); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates a new object and begin running the report. (Certain report types require a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).)
      sig {
        params(params: T.any(::Stripe::Reporting::ReportRunService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Reporting::ReportRun)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of Report Runs, with the most recent appearing first.
      sig {
        params(params: T.any(::Stripe::Reporting::ReportRunService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing Report Run.
      sig {
        params(report_run: String, params: T.any(::Stripe::Reporting::ReportRunService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Reporting::ReportRun)
       }
      def retrieve(report_run, params = {}, opts = {}); end
    end
  end
end