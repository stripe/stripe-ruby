# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Reporting
      class ReportRunCreateParams < ::Stripe::RequestParams
        class ResultOptions < ::Stripe::RequestParams
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
    end
  end
end
