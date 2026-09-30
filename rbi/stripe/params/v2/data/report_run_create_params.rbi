# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class ReportRunCreateParams < ::Stripe::RequestParams
        class Report < ::Stripe::RequestParams
          # The unique identifier of the `Report`.
          sig { returns(T.nilable(String)) }
          def id; end
          sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_id); end
          # The human-readable name of the `Report`.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(id: T.nilable(String), name: T.nilable(String)).void }
          def initialize(id: nil, name: nil); end
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
        # The file format for the result.
        sig { returns(String) }
        def format; end
        sig { params(_format: String).returns(String) }
        def format=(_format); end
        # A map of parameter names to values, specifying how the report should be customized.
        # The accepted parameters depend on the specific `Report` being run.
        sig { returns(T::Hash[String, T.untyped]) }
        def parameters; end
        sig { params(_parameters: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped]) }
        def parameters=(_parameters); end
        # A reference to the `Report` to run, by ID or name.
        sig { returns(::Stripe::V2::Data::ReportRunCreateParams::Report) }
        def report; end
        sig {
          params(_report: ::Stripe::V2::Data::ReportRunCreateParams::Report).returns(::Stripe::V2::Data::ReportRunCreateParams::Report)
         }
        def report=(_report); end
        # Optional settings that customize the generated result file.
        sig { returns(T.nilable(::Stripe::V2::Data::ReportRunCreateParams::ResultOptions)) }
        def result_options; end
        sig {
          params(_result_options: T.nilable(::Stripe::V2::Data::ReportRunCreateParams::ResultOptions)).returns(T.nilable(::Stripe::V2::Data::ReportRunCreateParams::ResultOptions))
         }
        def result_options=(_result_options); end
        sig {
          params(format: String, parameters: T::Hash[String, T.untyped], report: ::Stripe::V2::Data::ReportRunCreateParams::Report, result_options: T.nilable(::Stripe::V2::Data::ReportRunCreateParams::ResultOptions)).void
         }
        def initialize(format: nil, parameters: nil, report: nil, result_options: nil); end
      end
    end
  end
end