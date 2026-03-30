# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # A batch job allows you to perform an API operation on a large set of records asynchronously.
      class BatchJob < APIResource
        OBJECT_NAME = "v2.core.batch_job"
        def self.object_name
          "v2.core.batch_job"
        end

        class StatusDetails < ::Stripe::StripeObject
          class BatchFailed < ::Stripe::StripeObject
            # Details about the `batch_job` failure.
            attr_reader :error

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
            # The total number of records that failed processing.
            attr_reader :failure_count
            # The output file details. If the `batch_job` is canceled, this is provided only if there is already output at this point.
            attr_reader :output_file
            # The total number of records that were successfully processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = { output_file: OutputFile }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: { kind: :object, fields: { size: :int64_string } },
                success_count: :int64_string,
              }
            end
          end

          class Complete < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            attr_reader :failure_count
            # The output file details. If the `batch_job` is canceled, this is provided only if there is already output at this point.
            attr_reader :output_file
            # The total number of records that were successfully processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = { output_file: OutputFile }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: { kind: :object, fields: { size: :int64_string } },
                success_count: :int64_string,
              }
            end
          end

          class InProgress < ::Stripe::StripeObject
            # The number of records that failed processing so far.
            attr_reader :failure_count
            # The number of records that were successfully processed so far.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { failure_count: :int64_string, success_count: :int64_string }
            end
          end

          class ReadyForUpload < ::Stripe::StripeObject
            class UploadUrl < ::Stripe::StripeObject
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
            # The upload file details.
            attr_reader :upload_url

            def self.inner_class_types
              @inner_class_types = { upload_url: UploadUrl }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Timeout < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            attr_reader :failure_count
            # The output file details. If the `batch_job` is canceled, this is provided only if there is already output at this point.
            attr_reader :output_file
            # The total number of records that were successfully processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = { output_file: OutputFile }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: { kind: :object, fields: { size: :int64_string } },
                success_count: :int64_string,
              }
            end
          end

          class Validating < ::Stripe::StripeObject
            # The number of records that were validated. Note that there is no failure counter here;
            # once we have any validation failures we give up.
            attr_reader :validated_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { validated_count: :int64_string }
            end
          end

          class ValidationFailed < ::Stripe::StripeObject
            class OutputFile < ::Stripe::StripeObject
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
            # The total number of records that failed processing.
            attr_reader :failure_count
            # The output file details. If the `batch_job` is canceled, this is provided only if there is already output at this point.
            attr_reader :output_file
            # The total number of records that were successfully processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = { output_file: OutputFile }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                failure_count: :int64_string,
                output_file: { kind: :object, fields: { size: :int64_string } },
                success_count: :int64_string,
              }
            end
          end
          # Additional details for the `BATCH_FAILED` status of the `batch_job`.
          attr_reader :batch_failed
          # Additional details for the `CANCELED` status of the `batch_job`.
          attr_reader :canceled
          # Additional details for the `COMPLETE` status of the `batch_job`.
          attr_reader :complete
          # Additional details for the `IN_PROGRESS` status of the `batch_job`.
          attr_reader :in_progress
          # Additional details for the `READY_FOR_UPLOAD` status of the `batch_job`.
          attr_reader :ready_for_upload
          # Additional details for the `TIMEOUT` status of the `batch_job`.
          attr_reader :timeout
          # Additional details for the `VALIDATING` status of the `batch_job`.
          attr_reader :validating
          # Additional details for the `VALIDATION_FAILED` status of the `batch_job`.
          attr_reader :validation_failed

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
                  output_file: { kind: :object, fields: { size: :int64_string } },
                  success_count: :int64_string,
                },
              },
              complete: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: { kind: :object, fields: { size: :int64_string } },
                  success_count: :int64_string,
                },
              },
              in_progress: {
                kind: :object,
                fields: { failure_count: :int64_string, success_count: :int64_string },
              },
              timeout: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: { kind: :object, fields: { size: :int64_string } },
                  success_count: :int64_string,
                },
              },
              validating: { kind: :object, fields: { validated_count: :int64_string } },
              validation_failed: {
                kind: :object,
                fields: {
                  failure_count: :int64_string,
                  output_file: { kind: :object, fields: { size: :int64_string } },
                  success_count: :int64_string,
                },
              },
            }
          end
        end
        # Timestamp at which the `batch_job` was created.
        attr_reader :created
        # Unique identifier for the `batch_job`.
        attr_reader :id
        # The maximum requests per second defined for the `batch_job`.
        attr_reader :maximum_rps
        # The metadata of the `batch_job`.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Whether validation runs before executing the `batch_job`.
        attr_reader :skip_validation
        # The current status of the `batch_job`.
        attr_reader :status
        # Additional details about the current state of the `batch_job`.
        attr_reader :status_details
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        ENDPOINT_PATH_V1_ACCOUNT_UPDATE = "/v1/accounts/:account"
        ENDPOINT_PATH_V1_CREDIT_NOTE_CREATE = "/v1/credit_notes"
        ENDPOINT_PATH_V1_CUSTOMER_UPDATE = "/v1/customers/:customer"
        ENDPOINT_PATH_V1_INVOICE_UPDATE = "/v1/invoices/:invoice"
        ENDPOINT_PATH_V1_INVOICE_PAY = "/v1/invoices/:invoice/pay"
        ENDPOINT_PATH_V1_PROMOTION_CODE_CREATE = "/v1/promotion_codes"
        ENDPOINT_PATH_V1_PROMOTION_CODE_UPDATE = "/v1/promotion_codes/:promotion_code"
        ENDPOINT_PATH_V1_SUBSCRIPTION_UPDATE = "/v1/subscriptions/:subscription_exposed_id"
        ENDPOINT_PATH_V1_SUBSCRIPTION_MIGRATE = "/v1/subscriptions/:subscription/migrate"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_CREATE = "/v1/subscription_schedules"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_UPDATE = "/v1/subscription_schedules/:schedule"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_CANCEL = "/v1/subscription_schedules/:schedule/cancel"

        def self.inner_class_types
          @inner_class_types = { status_details: StatusDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            status_details: {
              kind: :object,
              fields: {
                canceled: {
                  kind: :object,
                  fields: {
                    failure_count: :int64_string,
                    output_file: { kind: :object, fields: { size: :int64_string } },
                    success_count: :int64_string,
                  },
                },
                complete: {
                  kind: :object,
                  fields: {
                    failure_count: :int64_string,
                    output_file: { kind: :object, fields: { size: :int64_string } },
                    success_count: :int64_string,
                  },
                },
                in_progress: {
                  kind: :object,
                  fields: { failure_count: :int64_string, success_count: :int64_string },
                },
                timeout: {
                  kind: :object,
                  fields: {
                    failure_count: :int64_string,
                    output_file: { kind: :object, fields: { size: :int64_string } },
                    success_count: :int64_string,
                  },
                },
                validating: { kind: :object, fields: { validated_count: :int64_string } },
                validation_failed: {
                  kind: :object,
                  fields: {
                    failure_count: :int64_string,
                    output_file: { kind: :object, fields: { size: :int64_string } },
                    success_count: :int64_string,
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
