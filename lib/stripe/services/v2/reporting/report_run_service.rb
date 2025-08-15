# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Reporting
      class ReportRunService < StripeService
        class CreateParams < Stripe::RequestParams
          class ReportParameters < Stripe::RequestParams
            class ArrayValue < Stripe::RequestParams
              # The list of string values in the array.
              attr_accessor :items

              def initialize(items: nil)
                @items = items
              end
            end
            # Parameter with an array data type.
            attr_accessor :array_value
            # Parameter with a string data type.
            attr_accessor :string_value
            # Parameter with a timestamp data type.
            attr_accessor :timestamp_value

            def initialize(array_value: nil, string_value: nil, timestamp_value: nil)
              @array_value = array_value
              @string_value = string_value
              @timestamp_value = timestamp_value
            end
          end

          class ResultOptions < Stripe::RequestParams
            # If set, the generated report file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large reports.
            attr_accessor :compress_file

            def initialize(compress_file: nil)
              @compress_file = compress_file
            end
          end
          # The unique identifier of the `Report` being requested.
          attr_accessor :report
          # A map of parameter names to values, specifying how the report should be customized.
          # The accepted parameters depend on the specific `Report` being run.
          attr_accessor :report_parameters
          # Optional settings to customize the results of the `ReportRun`.
          attr_accessor :result_options

          def initialize(report: nil, report_parameters: nil, result_options: nil)
            @report = report
            @report_parameters = report_parameters
            @result_options = result_options
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

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
