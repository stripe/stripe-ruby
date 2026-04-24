# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Reporting
        class QueryRunCreateParams < ::Stripe::RequestParams
          class ResultOptions < ::Stripe::RequestParams
            # If set, the generated results file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large results.
            attr_accessor :compress_file

            def initialize(compress_file: nil)
              @compress_file = compress_file
            end
          end
          # Optional settings to customize the results of the `QueryRun`.
          attr_accessor :result_options
          # The SQL to execute.
          attr_accessor :sql

          def initialize(result_options: nil, sql: nil)
            @result_options = result_options
            @sql = sql
          end
        end
      end
    end
  end
end
