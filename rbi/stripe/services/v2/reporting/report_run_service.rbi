# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      class ReportRunService < StripeService
        class CreateParams < Stripe::RequestParams
          class ReportParameters < Stripe::RequestParams
            class ArrayValue < Stripe::RequestParams
              # The list of string values in the array.
              sig { returns(T::Array[String]) }
              def items; end
              sig { params(_items: T::Array[String]).returns(T::Array[String]) }
              def items=(_items); end
              sig { params(items: T::Array[String]).void }
              def initialize(items: nil); end
            end
            # Parameter with an array data type.
            sig {
              returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue))
             }
            def array_value; end
            sig {
              params(_array_value: T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue)).returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue))
             }
            def array_value=(_array_value); end
            # Parameter with a string data type.
            sig { returns(T.nilable(String)) }
            def string_value; end
            sig { params(_string_value: T.nilable(String)).returns(T.nilable(String)) }
            def string_value=(_string_value); end
            # Parameter with a timestamp data type.
            sig { returns(T.nilable(String)) }
            def timestamp_value; end
            sig { params(_timestamp_value: T.nilable(String)).returns(T.nilable(String)) }
            def timestamp_value=(_timestamp_value); end
            sig {
              params(array_value: T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue), string_value: T.nilable(String), timestamp_value: T.nilable(String)).void
             }
            def initialize(array_value: nil, string_value: nil, timestamp_value: nil); end
          end
          class ResultOptions < Stripe::RequestParams
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
          sig {
            returns(T::Hash[String, ::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters])
           }
          def report_parameters; end
          sig {
            params(_report_parameters: T::Hash[String, ::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters]).returns(T::Hash[String, ::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters])
           }
          def report_parameters=(_report_parameters); end
          # Optional settings to customize the results of the `ReportRun`.
          sig {
            returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ResultOptions))
           }
          def result_options; end
          sig {
            params(_result_options: T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ResultOptions)).returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ResultOptions))
           }
          def result_options=(_result_options); end
          sig {
            params(report: String, report_parameters: T::Hash[String, ::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters], result_options: T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ResultOptions)).void
           }
          def initialize(report: nil, report_parameters: nil, result_options: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Initiates the generation of a `ReportRun` based on the specified report template
        # and user-provided parameters. It's the starting point for obtaining report data,
        # and returns a `ReportRun` object which can be used to track the progress and retrieve
        # the results of the report.
        #
        # ** raises RateLimitError
        sig {
          params(params: T.any(::Stripe::V2::Reporting::ReportRunService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Reporting::ReportRun)
         }
        def create(params = {}, opts = {}); end

        # Fetches the current state and details of a previously created `ReportRun`. If the `ReportRun`
        # has succeeded, the endpoint will provide details for how to retrieve the results.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Reporting::ReportRunService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Reporting::ReportRun)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end