# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class QueryRunCreateParams < ::Stripe::RequestParams
        class Query < ::Stripe::RequestParams
          # Ad-hoc SQL to execute.
          sig { returns(T.nilable(String)) }
          def sql; end
          sig { params(_sql: T.nilable(String)).returns(T.nilable(String)) }
          def sql=(_sql); end
          sig { params(sql: T.nilable(String)).void }
          def initialize(sql: nil); end
        end
        class ResultOptions < ::Stripe::RequestParams
          # If set, the generated result file is compressed into a ZIP archive before
          # it is stored. This applies only to downloadable file results.
          sig { returns(T.nilable(T::Boolean)) }
          def compress_file; end
          sig { params(_compress_file: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def compress_file=(_compress_file); end
          sig { params(compress_file: T.nilable(T::Boolean)).void }
          def initialize(compress_file: nil); end
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
          params(dataset: String, format: String, query: ::Stripe::V2::Data::QueryRunCreateParams::Query, result_options: T.nilable(::Stripe::V2::Data::QueryRunCreateParams::ResultOptions)).void
         }
        def initialize(dataset: nil, format: nil, query: nil, result_options: nil); end
      end
    end
  end
end