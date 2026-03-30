# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      module Reporting
        # The `QueryRun` object represents an ad-hoc SQL execution. Once created, Stripe processes the query. When
        # the query has finished running, the object provides a reference to the results.
        class QueryRun < APIResource
          class StatusDetails < ::Stripe::StripeObject
            # Error code categorizing the reason the `QueryRun` failed.
            sig { returns(T.nilable(String)) }
            def error_code; end
            # Error message with additional details about the failure.
            sig { returns(T.nilable(String)) }
            def error_message; end
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
                @inner_class_types = {download_url: DownloadUrl}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {size: :int64_string}
              end
            end
            # The type of the `ReportRun` or `QueryRun` result.
            sig { returns(String) }
            def type; end
            # Contains metadata about the file produced by the `ReportRun` or `QueryRun`, including
            # its content type, size, and a URL to download its contents.
            sig { returns(T.nilable(File)) }
            def file; end
            def self.inner_class_types
              @inner_class_types = {file: File}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {file: {kind: :object, fields: {size: :int64_string}}}
            end
          end
          class ResultOptions < ::Stripe::StripeObject
            # If set, the generated results file will be compressed into a ZIP folder.
            # This is useful for reducing file size and download time for large results.
            sig { returns(T.nilable(T::Boolean)) }
            def compress_file; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Time at which the object was created.
          sig { returns(String) }
          def created; end
          # The unique identifier of the `QueryRun` object.
          sig { returns(String) }
          def id; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # Additional details about the current state of the `QueryRun`. Populated when the `QueryRun`
          # is in the `failed` state, providing more information about why the query failed.
          sig { returns(T::Hash[String, StatusDetails]) }
          def status_details; end
          # Details how to retrieve the results of a successfully completed `QueryRun`.
          sig { returns(T.nilable(Result)) }
          def result; end
          # The options specified for customizing the output of the `QueryRun`.
          sig { returns(T.nilable(ResultOptions)) }
          def result_options; end
          # The SQL that was executed.
          sig { returns(String) }
          def sql; end
          # The current status of the `QueryRun`.
          sig { returns(String) }
          def status; end
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
        end
      end
    end
  end
end