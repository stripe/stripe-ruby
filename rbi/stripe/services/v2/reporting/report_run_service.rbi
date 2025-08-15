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
              attr_accessor :items
              sig { params(items: T::Array[String]).void }
              def initialize(items: nil); end
            end
            # Parameter with an array data type.
            sig {
              returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue))
             }
            attr_accessor :array_value
            # Parameter with a string data type.
            sig { returns(T.nilable(String)) }
            attr_accessor :string_value
            # Parameter with a timestamp data type.
            sig { returns(T.nilable(String)) }
            attr_accessor :timestamp_value
            sig {
              params(array_value: T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters::ArrayValue), string_value: T.nilable(String), timestamp_value: T.nilable(String)).void
             }
            def initialize(array_value: nil, string_value: nil, timestamp_value: nil); end
          end
          class ResultOptions < Stripe::RequestParams
            # If set, the generated report file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large reports.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :compress_file
            sig { params(compress_file: T.nilable(T::Boolean)).void }
            def initialize(compress_file: nil); end
          end
          # The unique identifier of the `Report` being requested.
          sig { returns(String) }
          attr_accessor :report
          # A map of parameter names to values, specifying how the report should be customized.
          # The accepted parameters depend on the specific `Report` being run.
          sig {
            returns(T::Hash[String, ::Stripe::V2::Reporting::ReportRunService::CreateParams::ReportParameters])
           }
          attr_accessor :report_parameters
          # Optional settings to customize the results of the `ReportRun`.
          sig {
            returns(T.nilable(::Stripe::V2::Reporting::ReportRunService::CreateParams::ResultOptions))
           }
          attr_accessor :result_options
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