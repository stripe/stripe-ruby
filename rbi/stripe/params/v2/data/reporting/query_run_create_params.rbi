# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      module Reporting
        class QueryRunCreateParams < ::Stripe::RequestParams
          class ResultOptions < ::Stripe::RequestParams
            # If set, the generated results file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large results.
            sig { returns(T.nilable(T::Boolean)) }
            def compress_file; end
            sig { params(_compress_file: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def compress_file=(_compress_file); end
            sig { params(compress_file: T.nilable(T::Boolean)).void }
            def initialize(compress_file: nil); end
          end
          # Optional settings to customize the results of the `QueryRun`.
          sig {
            returns(T.nilable(::Stripe::V2::Data::Reporting::QueryRunCreateParams::ResultOptions))
           }
          def result_options; end
          sig {
            params(_result_options: T.nilable(::Stripe::V2::Data::Reporting::QueryRunCreateParams::ResultOptions)).returns(T.nilable(::Stripe::V2::Data::Reporting::QueryRunCreateParams::ResultOptions))
           }
          def result_options=(_result_options); end
          # The SQL to execute.
          sig { returns(String) }
          def sql; end
          sig { params(_sql: String).returns(String) }
          def sql=(_sql); end
          sig {
            params(result_options: T.nilable(::Stripe::V2::Data::Reporting::QueryRunCreateParams::ResultOptions), sql: String).void
           }
          def initialize(result_options: nil, sql: nil); end
        end
      end
    end
  end
end