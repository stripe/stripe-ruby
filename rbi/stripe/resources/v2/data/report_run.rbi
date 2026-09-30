# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      # The `ReportRun` resource represents an instance of a `Report` generated with specific
      # parameter values. Once the object is created, Stripe begins processing the report. When
      # the report has finished running, it provides a reference to the results.
      class ReportRun < APIResource
        class Result < ::Stripe::StripeObject
          class File < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              # The name of the column.
              sig { returns(String) }
              def name; end
              # The data type of the column.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class DownloadUrl < ::Stripe::StripeObject
              # The time that the URL expires.
              sig { returns(T.nilable(String)) }
              def expires_at; end
              # The URL that can be used for accessing the file.
              sig { returns(String) }
              def url; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The schema of the result data.
            sig { returns(T::Array[Column]) }
            def columns; end
            # The content type of the file.
            sig { returns(String) }
            def content_type; end
            # A pre-signed URL that allows secure, time-limited access to download the file.
            sig { returns(DownloadUrl) }
            def download_url; end
            # The total size of the file in bytes.
            sig { returns(Integer) }
            def size; end
            def self.inner_class_types
              @inner_class_types = {columns: Column, download_url: DownloadUrl}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {size: :int64_string}
            end
          end
          class Inline < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              # The name of the column.
              sig { returns(String) }
              def name; end
              # The data type of the column.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Row < ::Stripe::StripeObject
              # The column data in this row, keyed by column name.
              sig { returns(T::Hash[String, T.untyped]) }
              def data; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The schema of the result data.
            sig { returns(T::Array[Column]) }
            def columns; end
            # Token for the next page of rows.
            sig { returns(T.nilable(String)) }
            def next_page_url; end
            # Token for the previous page of rows.
            sig { returns(T.nilable(String)) }
            def previous_page_url; end
            # The result rows, each represented as a map of column name to value.
            sig { returns(T::Array[Row]) }
            def rows; end
            def self.inner_class_types
              @inner_class_types = {columns: Column, rows: Row}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The total number of columns in the result.
          sig { returns(T.nilable(Integer)) }
          def col_count; end
          # File result with a download URL. This is the default result type.
          sig { returns(T.nilable(File)) }
          def file; end
          # Inline result with data returned directly. Only present when requested via
          # `include[0]=result.inline`.
          sig { returns(T.nilable(Inline)) }
          def inline; end
          # The total number of data rows in the result, excluding any header row.
          sig { returns(T.nilable(Integer)) }
          def row_count; end
          def self.inner_class_types
            @inner_class_types = {file: File, inline: Inline}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              col_count: :int64_string,
              file: {kind: :object, fields: {size: :int64_string}},
              row_count: :int64_string,
            }
          end
        end
        class ResultOptions < ::Stripe::StripeObject
          # If set, the generated result file is compressed into a ZIP archive before
          # it is stored. This applies only to downloadable file results.
          sig { returns(T.nilable(T::Boolean)) }
          def compress_file; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          # Time at which the run was canceled. Populated when the run is in the `canceled` state.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Error code categorizing the reason the run failed.
          sig { returns(T.nilable(String)) }
          def code; end
          # Error message with additional details about the failure.
          sig { returns(T.nilable(String)) }
          def message; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the `ReportRun` was created.
        sig { returns(String) }
        def created; end
        # The unique identifier of the `ReportRun`.
        sig { returns(String) }
        def id; end
        # Whether the `ReportRun` was executed in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # The human-readable name of the `Report` which was run.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The parameters used to customize the generation of the report.
        sig { returns(T::Hash[String, T.untyped]) }
        def parameters; end
        # Time at which the data used by this report was last refreshed.
        sig { returns(T.nilable(String)) }
        def refreshed_at; end
        # The unique identifier of the `Report` which was run.
        sig { returns(String) }
        def report; end
        # The result of the `ReportRun`, populated when it has completed.
        sig { returns(T.nilable(Result)) }
        def result; end
        # Settings applied to the generated result file.
        sig { returns(T.nilable(ResultOptions)) }
        def result_options; end
        # The fully-resolved SQL that was executed. Only present when requested via
        # `include[0]=sql`.
        sig { returns(T.nilable(String)) }
        def sql; end
        # The current status of the `ReportRun`.
        sig { returns(String) }
        def status; end
        # Additional details about the current state of the `ReportRun`.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
      end
    end
  end
end