# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class QueryRunCreateParams < ::Stripe::RequestParams
        class Query < ::Stripe::RequestParams
          # Ad-hoc SQL to execute. The maximum length is 100,000 characters.
          attr_accessor :sql

          def initialize(sql: nil)
            @sql = sql
          end
        end

        class ResultOptions < ::Stripe::RequestParams
          # The compression applied to the generated result file. Defaults to `none`. This applies
          # only to downloadable file results.
          attr_accessor :compression

          def initialize(compression: nil)
            @compression = compression
          end
        end
        # The dataset to query.
        attr_accessor :dataset
        # The file format for the result.
        attr_accessor :format
        # Named bind parameters for the query. Keys are parameter names referenced in
        # the SQL (without any prefix). Omit this field for a non-parameterized query.
        # Values are strings, integers, or booleans. Fractional numbers, timestamps,
        # and dates should be passed as strings.
        attr_accessor :parameters
        # The query to execute.
        attr_accessor :query
        # Optional settings that customize the generated result file.
        attr_accessor :result_options

        def initialize(dataset: nil, format: nil, parameters: nil, query: nil, result_options: nil)
          @dataset = dataset
          @format = format
          @parameters = parameters
          @query = query
          @result_options = result_options
        end
      end
    end
  end
end
