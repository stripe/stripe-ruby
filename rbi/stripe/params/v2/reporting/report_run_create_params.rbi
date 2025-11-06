# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      class ReportRunCreateParams < ::Stripe::RequestParams
        class ResultOptions < ::Stripe::RequestParams
          # If set, the generated report file will be compressed into a ZIP folder.
          # This is useful for reducing file size and download time for large reports.
          sig { returns(T.nilable(T::Boolean)) }
          def compress_file; end
          sig { params(_compress_file: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def compress_file=(_compress_file); end
          sig { params(compress_file: T.nilable(T::Boolean)).void }
          def initialize(compress_file: nil); end
        end
        # The unique identifier of the `Report` being requested.
        sig { returns(String) }
        def report; end
        sig { params(_report: String).returns(String) }
        def report=(_report); end
        # A map of parameter names to values, specifying how the report should be customized.
        # The accepted parameters depend on the specific `Report` being run.
        sig { returns(T::Hash[String, T.untyped]) }
        def report_parameters; end
        sig {
          params(_report_parameters: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped])
         }
        def report_parameters=(_report_parameters); end
        # Optional settings to customize the results of the `ReportRun`.
        sig { returns(T.nilable(V2::Reporting::ReportRunCreateParams::ResultOptions)) }
        def result_options; end
        sig {
          params(_result_options: T.nilable(V2::Reporting::ReportRunCreateParams::ResultOptions)).returns(T.nilable(V2::Reporting::ReportRunCreateParams::ResultOptions))
         }
        def result_options=(_result_options); end
        sig {
          params(report: String, report_parameters: T::Hash[String, T.untyped], result_options: T.nilable(V2::Reporting::ReportRunCreateParams::ResultOptions)).void
         }
        def initialize(report: nil, report_parameters: nil, result_options: nil); end
      end
    end
  end
end