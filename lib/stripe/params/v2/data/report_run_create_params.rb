# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportRunCreateParams < ::Stripe::RequestParams
        class Report < ::Stripe::RequestParams
          # The unique identifier of the `Report`.
          attr_accessor :id
          # The human-readable name of the `Report`.
          attr_accessor :name

          def initialize(id: nil, name: nil)
            @id = id
            @name = name
          end
        end

        class ResultOptions < ::Stripe::RequestParams
          # If set, the generated result file is compressed into a ZIP archive before
          # it is stored. This applies only to downloadable file results.
          attr_accessor :compress_file

          def initialize(compress_file: nil)
            @compress_file = compress_file
          end
        end
        # The file format for the result.
        attr_accessor :format
        # A map of parameter names to values, specifying how the report should be customized.
        # The accepted parameters depend on the specific `Report` being run.
        attr_accessor :parameters
        # A reference to the `Report` to run, by ID or name.
        attr_accessor :report
        # Optional settings that customize the generated result file.
        attr_accessor :result_options

        def initialize(format: nil, parameters: nil, report: nil, result_options: nil)
          @format = format
          @parameters = parameters
          @report = report
          @result_options = result_options
        end
      end
    end
  end
end
