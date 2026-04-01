# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Reporting
        # The `QueryRun` object represents an ad-hoc SQL execution. Once created, Stripe processes the query. When
        # the query has finished running, the object provides a reference to the results.
        class QueryRun < APIResource
          OBJECT_NAME = "v2.data.reporting.query_run"
          def self.object_name
            "v2.data.reporting.query_run"
          end

          class StatusDetails < ::Stripe::StripeObject
            # Error code categorizing the reason the `QueryRun` failed.
            attr_reader :error_code
            # Error message with additional details about the failure.
            attr_reader :error_message

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Result < ::Stripe::StripeObject
            class File < ::Stripe::StripeObject
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
              # The content type of the file.
              attr_reader :content_type
              # A pre-signed URL that allows secure, time-limited access to download the file.
              attr_reader :download_url
              # The total size of the file in bytes.
              attr_reader :size

              def self.inner_class_types
                @inner_class_types = { download_url: DownloadUrl }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { size: :int64_string }
              end
            end
            # The type of the `ReportRun` or `QueryRun` result.
            attr_reader :type
            # Contains metadata about the file produced by the `ReportRun` or `QueryRun`, including
            # its content type, size, and a URL to download its contents.
            attr_reader :file

            def self.inner_class_types
              @inner_class_types = { file: File }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { file: { kind: :object, fields: { size: :int64_string } } }
            end
          end

          class ResultOptions < ::Stripe::StripeObject
            # If set, the generated results file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large results.
            attr_reader :compress_file

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Time at which the object was created.
          attr_reader :created
          # The unique identifier of the `QueryRun` object.
          attr_reader :id
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # Additional details about the current state of the `QueryRun`. Populated when the `QueryRun`
          # is in the `failed` state, providing more information about why the query failed.
          attr_reader :status_details
          # Details how to retrieve the results of a successfully completed `QueryRun`.
          attr_reader :result
          # The options specified for customizing the output of the `QueryRun`.
          attr_reader :result_options
          # The SQL that was executed.
          attr_reader :sql
          # The current status of the `QueryRun`.
          attr_reader :status
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          attr_reader :livemode

          def self.inner_class_types
            @inner_class_types = {
              status_details: StatusDetails,
              result: Result,
              result_options: ResultOptions,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              result: {
                kind: :object,
                fields: { file: { kind: :object, fields: { size: :int64_string } } },
              },
            }
          end
        end
      end
    end
  end
end
