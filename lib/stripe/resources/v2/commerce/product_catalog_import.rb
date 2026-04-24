# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Commerce
      # The product catalog import object tracks the long-running background process that handles uploading, processing and validation.
      class ProductCatalogImport < APIResource
        OBJECT_NAME = "v2.commerce.product_catalog_import"
        def self.object_name
          "v2.commerce.product_catalog_import"
        end

        class StatusDetails < ::Stripe::StripeObject
          class AwaitingUpload < ::Stripe::StripeObject
            class UploadUrl < ::Stripe::StripeObject
              # The timestamp when the upload URL expires.
              attr_reader :expires_at
              # The pre-signed URL for uploading the catalog file.
              attr_reader :url

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The pre-signed URL information for uploading the catalog file.
            attr_reader :upload_url

            def self.inner_class_types
              @inner_class_types = { upload_url: UploadUrl }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Failed < ::Stripe::StripeObject
            # The error code for this product catalog processing failure.
            attr_reader :code
            # A message explaining why the import failed.
            attr_reader :failure_message
            # The error type for this product catalog processing failure.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Processing < ::Stripe::StripeObject
            # The number of records that failed to process so far.
            attr_reader :error_count
            # The number of records processed so far.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { error_count: :int64_string, success_count: :int64_string }
            end
          end

          class Succeeded < ::Stripe::StripeObject
            # The total number of records processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { success_count: :int64_string }
            end
          end

          class SucceededWithErrors < ::Stripe::StripeObject
            class ErrorFile < ::Stripe::StripeObject
              class DownloadUrl < ::Stripe::StripeObject
                # The timestamp when the download URL expires.
                attr_reader :expires_at
                # The pre-signed URL for downloading the error file.
                attr_reader :url

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The MIME type of the error file.
              attr_reader :content_type
              # The pre-signed URL information for downloading the error file.
              attr_reader :download_url
              # The size of the error file in bytes.
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

            class Sample < ::Stripe::StripeObject
              # A description of what went wrong with this record.
              attr_reader :error_message
              # The name of the field that caused the error.
              attr_reader :field
              # The identifier of the record that failed to process.
              attr_reader :id
              # The row number in the import file where the error occurred.
              attr_reader :row

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { row: :int64_string }
              end
            end
            # The total number of records that failed to process.
            attr_reader :error_count
            # A file containing details about all errors that occurred.
            attr_reader :error_file
            # A sample of errors that occurred during processing.
            attr_reader :samples
            # The total number of records processed.
            attr_reader :success_count

            def self.inner_class_types
              @inner_class_types = { error_file: ErrorFile, samples: Sample }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                error_count: :int64_string,
                error_file: { kind: :object, fields: { size: :int64_string } },
                samples: { kind: :array, element: { kind: :object, fields: { row: :int64_string } } },
                success_count: :int64_string,
              }
            end
          end
          # Details when the import is awaiting file upload.
          attr_reader :awaiting_upload
          # Details when the import didn't complete.
          attr_reader :failed
          # Details when the import is processing.
          attr_reader :processing
          # Details when the import has succeeded.
          attr_reader :succeeded
          # Details when the import completed but some records failed to process.
          attr_reader :succeeded_with_errors

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
                fields: { error_count: :int64_string, success_count: :int64_string },
              },
              succeeded: { kind: :object, fields: { success_count: :int64_string } },
              succeeded_with_errors: {
                kind: :object,
                fields: {
                  error_count: :int64_string,
                  error_file: { kind: :object, fields: { size: :int64_string } },
                  samples: { kind: :array, element: { kind: :object, fields: { row: :int64_string } } },
                  success_count: :int64_string,
                },
              },
            }
          end
        end
        # The time this ProductCatalogImport was created.
        attr_reader :created
        # The type of feed data being imported into the product catalog.
        attr_reader :feed_type
        # The unique identifier for this ProductCatalogImport.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current status of this ProductCatalogImport.
        attr_reader :status
        # Details about the current import status.
        attr_reader :status_details

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
                processing: {
                  kind: :object,
                  fields: { error_count: :int64_string, success_count: :int64_string },
                },
                succeeded: { kind: :object, fields: { success_count: :int64_string } },
                succeeded_with_errors: {
                  kind: :object,
                  fields: {
                    error_count: :int64_string,
                    error_file: { kind: :object, fields: { size: :int64_string } },
                    samples: { kind: :array, element: { kind: :object, fields: { row: :int64_string } } },
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
