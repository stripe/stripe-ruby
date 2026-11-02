# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class QueryRunCreateParams < ::Stripe::RequestParams
        class Query < ::Stripe::RequestParams
          # Ad-hoc SQL to execute. The maximum length is 100,000 characters.
          sig { returns(T.nilable(String)) }
          def sql; end
          sig { params(_sql: T.nilable(String)).returns(T.nilable(String)) }
          def sql=(_sql); end
          sig { params(sql: T.nilable(String)).void }
          def initialize(sql: nil); end
        end
        class ResultOptions < ::Stripe::RequestParams
          # The compression applied to the generated result file. Defaults to `none`. This applies
          # only to downloadable file results.
          sig { returns(T.nilable(String)) }
          def compression; end
          sig { params(_compression: T.nilable(String)).returns(T.nilable(String)) }
          def compression=(_compression); end
          sig { params(compression: T.nilable(String)).void }
          def initialize(compression: nil); end
        end
        # The dataset to query.
        sig { returns(String) }
        def dataset; end
        sig { params(_dataset: String).returns(String) }
        def dataset=(_dataset); end
        # The file format for the result.
        sig { returns(String) }
        def format; end
        sig { params(_format: String).returns(String) }
        def format=(_format); end
        # Named bind parameters for the query. Keys are parameter names referenced in
        # the SQL (without any prefix). Omit this field for a non-parameterized query.
        # Values are strings, integers, or booleans. Fractional numbers, timestamps,
        # and dates should be passed as strings.
        sig { returns(T.nilable(T::Hash[String, T.untyped])) }
        def parameters; end
        sig {
          params(_parameters: T.nilable(T::Hash[String, T.untyped])).returns(T.nilable(T::Hash[String, T.untyped]))
         }
        def parameters=(_parameters); end
        # The query to execute.
        sig { returns(::Stripe::V2::Data::QueryRunCreateParams::Query) }
        def query; end
        sig {
          params(_query: ::Stripe::V2::Data::QueryRunCreateParams::Query).returns(::Stripe::V2::Data::QueryRunCreateParams::Query)
         }
        def query=(_query); end
        # Optional settings that customize the generated result file.
        sig { returns(T.nilable(::Stripe::V2::Data::QueryRunCreateParams::ResultOptions)) }
        def result_options; end
        sig {
          params(_result_options: T.nilable(::Stripe::V2::Data::QueryRunCreateParams::ResultOptions)).returns(T.nilable(::Stripe::V2::Data::QueryRunCreateParams::ResultOptions))
         }
        def result_options=(_result_options); end
        sig {
          params(dataset: String, format: String, parameters: T.nilable(T::Hash[String, T.untyped]), query: ::Stripe::V2::Data::QueryRunCreateParams::Query, result_options: T.nilable(::Stripe::V2::Data::QueryRunCreateParams::ResultOptions)).void
         }
        def initialize(
          dataset: nil,
          format: nil,
          parameters: nil,
          query: nil,
          result_options: nil
        ); end
      end
    end
  end
end