# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      # The `ReportRun` resource represents an instance of a `Report` generated with specific
      # parameter values. Once the object is created, Stripe begins processing the report. When
      # the report has finished running, it provides a reference to the results.
      class ReportRun < APIResource
        OBJECT_NAME = "v2.data.report_run"
        def self.object_name
          "v2.data.report_run"
        end

        class Result < ::Stripe::StripeObject
          class File < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              # The name of the column.
              attr_reader :name
              # The data type of the column.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class DownloadUrl < ::Stripe::StripeObject
              # The time that the URL expires.
              attr_reader :expires_at
              # The URL that can be used for accessing the file.
              attr_reader :url

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The schema of the result data.
            attr_reader :columns
            # The content type of the file.
            attr_reader :content_type
            # A pre-signed URL that allows secure, time-limited access to download the file.
            attr_reader :download_url
            # The total size of the file in bytes.
            attr_reader :size

            def self.inner_class_types
              @inner_class_types = { columns: Column, download_url: DownloadUrl }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { size: :int64_string }
            end
          end

          class Inline < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              # The name of the column.
              attr_reader :name
              # The data type of the column.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Row < ::Stripe::StripeObject
              # The column data in this row, keyed by column name.
              attr_reader :data

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The schema of the result data.
            attr_reader :columns
            # Token for the next page of rows.
            attr_reader :next_page_url
            # Token for the previous page of rows.
            attr_reader :previous_page_url
            # The result rows, each represented as a map of column name to value.
            attr_reader :rows

            def self.inner_class_types
              @inner_class_types = { columns: Column, rows: Row }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The total number of columns in the result.
          attr_reader :col_count
          # File result with a download URL. This is the default result type.
          attr_reader :file
          # Inline result with data returned directly. Only present when requested via
          # `include[0]=result.inline`.
          attr_reader :inline
          # The total number of data rows in the result, excluding any header row.
          attr_reader :row_count

          def self.inner_class_types
            @inner_class_types = { file: File, inline: Inline }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              col_count: :int64_string,
              file: { kind: :object, fields: { size: :int64_string } },
              row_count: :int64_string,
            }
          end
        end

        class ResultOptions < ::Stripe::StripeObject
          # If set, the generated result file is compressed into a ZIP archive before
          # it is stored. This applies only to downloadable file results.
          attr_reader :compress_file

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          # Time at which the run was canceled. Populated when the run is in the `canceled` state.
          attr_reader :canceled_at
          # Error code categorizing the reason the run failed.
          attr_reader :code
          # Error message with additional details about the failure.
          attr_reader :message

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the `ReportRun` was created.
        attr_reader :created
        # The unique identifier of the `ReportRun`.
        attr_reader :id
        # Whether the `ReportRun` was executed in live mode.
        attr_reader :livemode
        # The human-readable name of the `Report` which was run.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The parameters used to customize the generation of the report.
        attr_reader :parameters
        # Time at which the data used by this report was last refreshed.
        attr_reader :refreshed_at
        # The unique identifier of the `Report` which was run.
        attr_reader :report
        # The result of the `ReportRun`, populated when it has completed.
        attr_reader :result
        # Settings applied to the generated result file.
        attr_reader :result_options
        # The fully-resolved SQL that was executed. Only present when requested via
        # `include[0]=sql`.
        attr_reader :sql
        # The current status of the `ReportRun`.
        attr_reader :status
        # Additional details about the current state of the `ReportRun`.
        attr_reader :status_details

        def self.inner_class_types
          @inner_class_types = {
            result: Result,
            result_options: ResultOptions,
            status_details: StatusDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            result: {
              kind: :object,
              fields: {
                col_count: :int64_string,
                file: { kind: :object, fields: { size: :int64_string } },
                row_count: :int64_string,
              },
            },
          }
        end
      end
    end
  end
end
