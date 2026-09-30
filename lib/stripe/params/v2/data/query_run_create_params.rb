# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class QueryRunCreateParams < ::Stripe::RequestParams
        class Query < ::Stripe::RequestParams
          # Ad-hoc SQL to execute.
          attr_accessor :sql

          def initialize(sql: nil)
            @sql = sql
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
        # The dataset to query.
        attr_accessor :dataset
        # The file format for the result.
        attr_accessor :format
        # The query to execute.
        attr_accessor :query
        # Optional settings that customize the generated result file.
        attr_accessor :result_options

        def initialize(dataset: nil, format: nil, query: nil, result_options: nil)
          @dataset = dataset
          @format = format
          @query = query
          @result_options = result_options
        end
      end
    end
  end
end
