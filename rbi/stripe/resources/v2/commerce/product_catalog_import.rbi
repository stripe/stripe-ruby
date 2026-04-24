# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Commerce
      # The product catalog import object tracks the long-running background process that handles uploading, processing and validation.
      class ProductCatalogImport < APIResource
        class StatusDetails < ::Stripe::StripeObject
          class AwaitingUpload < ::Stripe::StripeObject
            class UploadUrl < ::Stripe::StripeObject
              # The timestamp when the upload URL expires.
              sig { returns(String) }
              def expires_at; end
              # The pre-signed URL for uploading the catalog file.
              sig { returns(String) }
              def url; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The pre-signed URL information for uploading the catalog file.
            sig { returns(UploadUrl) }
            def upload_url; end
            def self.inner_class_types
              @inner_class_types = {upload_url: UploadUrl}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Failed < ::Stripe::StripeObject
            # The error code for this product catalog processing failure.
            sig { returns(String) }
            def code; end
            # A message explaining why the import failed.
            sig { returns(String) }
            def failure_message; end
            # The error type for this product catalog processing failure.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Processing < ::Stripe::StripeObject
            # The number of records that failed to process so far.
            sig { returns(Integer) }
            def error_count; end
            # The number of records processed so far.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {error_count: :int64_string, success_count: :int64_string}
            end
          end
          class Succeeded < ::Stripe::StripeObject
            # The total number of records processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {success_count: :int64_string}
            end
          end
          class SucceededWithErrors < ::Stripe::StripeObject
            class ErrorFile < ::Stripe::StripeObject
              class DownloadUrl < ::Stripe::StripeObject
                # The timestamp when the download URL expires.
                sig { returns(String) }
                def expires_at; end
                # The pre-signed URL for downloading the error file.
                sig { returns(String) }
                def url; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The MIME type of the error file.
              sig { returns(String) }
              def content_type; end
              # The pre-signed URL information for downloading the error file.
              sig { returns(DownloadUrl) }
              def download_url; end
              # The size of the error file in bytes.
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
            class Sample < ::Stripe::StripeObject
              # A description of what went wrong with this record.
              sig { returns(String) }
              def error_message; end
              # The name of the field that caused the error.
              sig { returns(String) }
              def field; end
              # The identifier of the record that failed to process.
              sig { returns(String) }
              def id; end
              # The row number in the import file where the error occurred.
              sig { returns(Integer) }
              def row; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {row: :int64_string}
              end
            end
            # The total number of records that failed to process.
            sig { returns(Integer) }
            def error_count; end
            # A file containing details about all errors that occurred.
            sig { returns(ErrorFile) }
            def error_file; end
            # A sample of errors that occurred during processing.
            sig { returns(T::Array[Sample]) }
            def samples; end
            # The total number of records processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {error_file: ErrorFile, samples: Sample}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                error_count: :int64_string,
                error_file: {kind: :object, fields: {size: :int64_string}},
                samples: {kind: :array, element: {kind: :object, fields: {row: :int64_string}}},
                success_count: :int64_string,
              }
            end
          end
          # Details when the import is awaiting file upload.
          sig { returns(T.nilable(AwaitingUpload)) }
          def awaiting_upload; end
          # Details when the import didn't complete.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # Details when the import is processing.
          sig { returns(T.nilable(Processing)) }
          def processing; end
          # Details when the import has succeeded.
          sig { returns(T.nilable(Succeeded)) }
          def succeeded; end
          # Details when the import completed but some records failed to process.
          sig { returns(T.nilable(SucceededWithErrors)) }
          def succeeded_with_errors; end
          def self.inner_class_types
            @inner_class_types = {
              awaiting_upload: AwaitingUpload,
              failed: Failed,
              processing: Processing,
              succeeded: Succeeded,
              succeeded_with_errors: SucceededWithErrors,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              processing: {
                kind: :object,
                fields: {error_count: :int64_string, success_count: :int64_string},
              },
              succeeded: {kind: :object, fields: {success_count: :int64_string}},
              succeeded_with_errors: {
                kind: :object,
                fields: {
                  error_count: :int64_string,
                  error_file: {kind: :object, fields: {size: :int64_string}},
                  samples: {kind: :array, element: {kind: :object, fields: {row: :int64_string}}},
                  success_count: :int64_string,
                },
              },
            }
          end
        end
        # The time this ProductCatalogImport was created.
        sig { returns(String) }
        def created; end
        # The type of feed data being imported into the product catalog.
        sig { returns(String) }
        def feed_type; end
        # The unique identifier for this ProductCatalogImport.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Additional information about the object in a structured format.
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current status of this ProductCatalogImport.
        sig { returns(String) }
        def status; end
        # Details about the current import status.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
      end
    end
  end
end