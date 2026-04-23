# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # BatchJob resource.
      class BatchJob < APIResource
        class StatusDetails < ::Stripe::StripeObject
          class BatchFailed < ::Stripe::StripeObject
            # Details about the `BatchJob` failure.
            sig { returns(String) }
            def error; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Canceled < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            sig { returns(Integer) }
            def failure_count; end
            # The output file details. If BatchJob is cancelled it's provided only if there is already output at this point.
            sig { returns(OutputFile) }
            def output_file; end
            # The total number of records that were successfully processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {output_file: OutputFile}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: {kind: :object, fields: {size: :int64_string}},
                success_count: :int64_string,
              }
            end
          end
          class Complete < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            sig { returns(Integer) }
            def failure_count; end
            # The output file details. If BatchJob is cancelled it's provided only if there is already output at this point.
            sig { returns(OutputFile) }
            def output_file; end
            # The total number of records that were successfully processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {output_file: OutputFile}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: {kind: :object, fields: {size: :int64_string}},
                success_count: :int64_string,
              }
            end
          end
          class InProgress < ::Stripe::StripeObject
            # The number of records that failed processing so far.
            sig { returns(Integer) }
            def failure_count; end
            # The number of records that were successfully processed so far.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {failure_count: :int64_string, success_count: :int64_string}
            end
          end
          class ReadyForUpload < ::Stripe::StripeObject
            class UploadUrl < ::Stripe::StripeObject
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
            # The upload file details.
            sig { returns(UploadUrl) }
            def upload_url; end
            def self.inner_class_types
              @inner_class_types = {upload_url: UploadUrl}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Timeout < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            sig { returns(Integer) }
            def failure_count; end
            # The output file details. If BatchJob is cancelled it's provided only if there is already output at this point.
            sig { returns(OutputFile) }
            def output_file; end
            # The total number of records that were successfully processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {output_file: OutputFile}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: {kind: :object, fields: {size: :int64_string}},
                success_count: :int64_string,
              }
            end
          end
          class Validating < ::Stripe::StripeObject
            # The number of records that were validated. Note that there is no failure counter here;
            # once we have any validation failures we give up.
            sig { returns(Integer) }
            def validated_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {validated_count: :int64_string}
            end
          end
          class ValidationFailed < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            sig { returns(Integer) }
            def failure_count; end
            # The output file details. If BatchJob is cancelled it's provided only if there is already output at this point.
            sig { returns(OutputFile) }
            def output_file; end
            # The total number of records that were successfully processed.
            sig { returns(Integer) }
            def success_count; end
            def self.inner_class_types
              @inner_class_types = {output_file: OutputFile}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: {kind: :object, fields: {size: :int64_string}},
                success_count: :int64_string,
              }
            end
          end
          # Additional details for the `BATCH_FAILED` status of the `BatchJob`.
          sig { returns(T.nilable(BatchFailed)) }
          def batch_failed; end
          # Additional details for the `CANCELED` status of the `BatchJob`.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          # Additional details for the `COMPLETE` status of the `BatchJob`.
          sig { returns(T.nilable(Complete)) }
          def complete; end
          # Additional details for the `IN_PROGRESS` status of the `BatchJob`.
          sig { returns(T.nilable(InProgress)) }
          def in_progress; end
          # Additional details for the `READY_FOR_UPLOAD` status of the `BatchJob`.
          sig { returns(T.nilable(ReadyForUpload)) }
          def ready_for_upload; end
          # Additional details for the `TIMEOUT` status of the `BatchJob`.
          sig { returns(T.nilable(Timeout)) }
          def timeout; end
          # Additional details for the `VALIDATING` status of the `BatchJob`.
          sig { returns(T.nilable(Validating)) }
          def validating; end
          # Additional details for the `VALIDATION_FAILED` status of the `BatchJob`.
          sig { returns(T.nilable(ValidationFailed)) }
          def validation_failed; end
          def self.inner_class_types
            @inner_class_types = {
              batch_failed: BatchFailed,
              canceled: Canceled,
              complete: Complete,
              in_progress: InProgress,
              ready_for_upload: ReadyForUpload,
              timeout: Timeout,
              validating: Validating,
              validation_failed: ValidationFailed,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              canceled: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: {kind: :object, fields: {size: :int64_string}},
                  success_count: :int64_string,
                },
              },
              complete: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: {kind: :object, fields: {size: :int64_string}},
                  success_count: :int64_string,
                },
              },
              in_progress: {
                kind: :object,
                fields: {failure_count: :int64_string, success_count: :int64_string},
              },
              timeout: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: {kind: :object, fields: {size: :int64_string}},
                  success_count: :int64_string,
                },
              },
              validating: {kind: :object, fields: {validated_count: :int64_string}},
              validation_failed: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: {kind: :object, fields: {size: :int64_string}},
                  success_count: :int64_string,
                },
              },
            }
          end
        end
        # Timestamp at which BatchJob was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the BatchJob.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # The maximum rps defined for the `BatchJob`.
        sig { returns(Integer) }
        def maximum_rps; end
        # The metadata of the `BatchJob` object.
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # If the validation will be run previous to the execution of the `BatchJob`.
        sig { returns(T::Boolean) }
        def skip_validation; end
        # The current status of the `BatchJob`.
        sig { returns(String) }
        def status; end
        # Additional details about the current state of the `BatchJob`.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
      end
    end
  end
end