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
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
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

        ENDPOINT_PATH_V1_ACCOUNT_UPDATE = "/v1/accounts/:account"
        ENDPOINT_PATH_V1_ACCOUNT_CREATE = "/v1/accounts"
        ENDPOINT_PATH_V1_ACCOUNT_DELETE = "/v1/accounts/:account"
        ENDPOINT_PATH_V1_COUPON_CREATE = "/v1/coupons"
        ENDPOINT_PATH_V1_COUPON_UPDATE = "/v1/coupons/:coupon"
        ENDPOINT_PATH_V1_COUPON_DELETE = "/v1/coupons/:coupon"
        ENDPOINT_PATH_V1_CREDIT_NOTE_CREATE = "/v1/credit_notes"
        ENDPOINT_PATH_V1_CUSTOMER_UPDATE = "/v1/customers/:customer"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE = "/v1/customers/:customer"
        ENDPOINT_PATH_V1_CUSTOMER_CREATE = "/v1/customers"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_DISCOUNT = "/v1/customers/:customer/discount"
        ENDPOINT_PATH_V1_CUSTOMER_CREATE_FUNDING_INSTRUCTIONS = "/v1/customers/:customer/funding_instructions"
        ENDPOINT_PATH_V1_CUSTOMER_CREATE_SUBSCRIPTION = "/v1/customers/:customer/subscriptions"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_SUBSCRIPTION = "/v1/customers/:customer/subscriptions"
        ENDPOINT_PATH_V1_CUSTOMER_UPDATE_SUBSCRIPTION = "/v1/customers/:customer/subscriptions/:subscription_exposed_id"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_SUBSCRIPTION_DISCOUNT = "/v1/customers/:customer/subscriptions/:subscription_exposed_id/discount"
        ENDPOINT_PATH_V1_CUSTOMER_CREATE_BANK_ACCOUNT = "/v1/customers/:customer/bank_accounts"
        ENDPOINT_PATH_V1_CUSTOMER_UPDATE_BANK_ACCOUNT = "/v1/customers/:customer/bank_accounts/:id"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_BANK_ACCOUNT = "/v1/customers/:customer/bank_accounts/:id"
        ENDPOINT_PATH_V1_CUSTOMER_VERIFY_BANK_ACCOUNT = "/v1/customers/:customer/bank_accounts/:id/verify"
        ENDPOINT_PATH_V1_CUSTOMER_CREATE_CARD = "/v1/customers/:customer/cards"
        ENDPOINT_PATH_V1_CUSTOMER_UPDATE_CARD = "/v1/customers/:customer/cards/:id"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_CARD = "/v1/customers/:customer/cards/:id"
        ENDPOINT_PATH_V1_CUSTOMER_DELETE_TAX_IDS = "/v1/customers/:customer/tax_ids"
        ENDPOINT_PATH_V1_PAYMENT_SOURCE_CREATE = "/v1/customers/:customer/sources"
        ENDPOINT_PATH_V1_BANK_ACCOUNT_UPDATE = "/v1/customers/:customer/sources/:id"
        ENDPOINT_PATH_V1_BANK_ACCOUNT_DELETE = "/v1/customers/:customer/sources/:id"
        ENDPOINT_PATH_V1_BANK_ACCOUNT_VERIFY = "/v1/customers/:customer/sources/:id/verify"
        ENDPOINT_PATH_V1_CUSTOMER_BALANCE_TRANSACTION_CREATE = "/v1/customers/:customer/balance_transactions"
        ENDPOINT_PATH_V1_CUSTOMER_BALANCE_TRANSACTION_UPDATE = "/v1/customers/:customer/balance_transactions/:transaction"
        ENDPOINT_PATH_V1_CASH_BALANCE_UPDATE = "/v1/customers/:customer/cash_balance"
        ENDPOINT_PATH_V1_CUSTOMER_SESSION_CREATE = "/v1/customer_sessions"
        ENDPOINT_PATH_V1_DISPUTE_CLOSE = "/v1/disputes/:dispute/close"
        ENDPOINT_PATH_V1_INVOICE_CREATE = "/v1/invoices"
        ENDPOINT_PATH_V1_INVOICE_UPDATE = "/v1/invoices/:invoice"
        ENDPOINT_PATH_V1_INVOICE_DELETE = "/v1/invoices/:invoice"
        ENDPOINT_PATH_V1_INVOICE_PAY = "/v1/invoices/:invoice/pay"
        ENDPOINT_PATH_V1_INVOICE_SEND_INVOICE = "/v1/invoices/:invoice/send"
        ENDPOINT_PATH_V1_INVOICE_VOID_INVOICE = "/v1/invoices/:invoice/void"
        ENDPOINT_PATH_V1_INVOICE_FINALIZE_INVOICE = "/v1/invoices/:invoice/finalize"
        ENDPOINT_PATH_V1_INVOICE_MARK_UNCOLLECTIBLE = "/v1/invoices/:invoice/mark_uncollectible"
        ENDPOINT_PATH_V1_INVOICE_UPDATE_LINES = "/v1/invoices/:invoice/update_lines"
        ENDPOINT_PATH_V1_INVOICE_ADD_LINES = "/v1/invoices/:invoice/add_lines"
        ENDPOINT_PATH_V1_INVOICE_REMOVE_LINES = "/v1/invoices/:invoice/remove_lines"
        ENDPOINT_PATH_V1_INVOICE_CREATE_PREVIEW = "/v1/invoices/create_preview"
        ENDPOINT_PATH_V1_LINE_ITEM_UPDATE = "/v1/invoices/:invoice/lines/:line_item_id"
        ENDPOINT_PATH_V1_INVOICEITEM_CREATE = "/v1/invoiceitems"
        ENDPOINT_PATH_V1_INVOICEITEM_UPDATE = "/v1/invoiceitems/:invoiceitem"
        ENDPOINT_PATH_V1_INVOICEITEM_DELETE = "/v1/invoiceitems/:invoiceitem"
        ENDPOINT_PATH_V1_INVOICE_RENDERING_TEMPLATE_ARCHIVE = "/v1/invoice_rendering_templates/:template/archive"
        ENDPOINT_PATH_V1_INVOICE_RENDERING_TEMPLATE_UNARCHIVE = "/v1/invoice_rendering_templates/:template/unarchive"
        ENDPOINT_PATH_V1_PAYMENT_METHOD_ATTACH = "/v1/payment_methods/:payment_method/attach"
        ENDPOINT_PATH_V1_PRICE_CREATE = "/v1/prices"
        ENDPOINT_PATH_V1_PRICE_UPDATE = "/v1/prices/:price"
        ENDPOINT_PATH_V1_PRODUCT_CREATE = "/v1/products"
        ENDPOINT_PATH_V1_PRODUCT_UPDATE = "/v1/products/:id"
        ENDPOINT_PATH_V1_PRODUCT_DELETE = "/v1/products/:id"
        ENDPOINT_PATH_V1_PRODUCT_FEATURE_CREATE = "/v1/products/:product/features"
        ENDPOINT_PATH_V1_PRODUCT_FEATURE_DELETE = "/v1/products/:product/features/:id"
        ENDPOINT_PATH_V1_PROMOTION_CODE_CREATE = "/v1/promotion_codes"
        ENDPOINT_PATH_V1_PROMOTION_CODE_UPDATE = "/v1/promotion_codes/:promotion_code"
        ENDPOINT_PATH_V1_RADAR_VALUE_LIST_ITEM_CREATE = "/v1/radar/value_list_items"
        ENDPOINT_PATH_V1_REFUND_CREATE = "/v1/refunds"
        ENDPOINT_PATH_V1_REFUND_CANCEL = "/v1/refunds/:refund/cancel"
        ENDPOINT_PATH_V1_SUBSCRIPTION_UPDATE = "/v1/subscriptions/:subscription_exposed_id"
        ENDPOINT_PATH_V1_SUBSCRIPTION_CANCEL = "/v1/subscriptions/:subscription_exposed_id"
        ENDPOINT_PATH_V1_SUBSCRIPTION_MIGRATE = "/v1/subscriptions/:subscription/migrate"
        ENDPOINT_PATH_V1_SUBSCRIPTION_CREATE = "/v1/subscriptions"
        ENDPOINT_PATH_V1_SUBSCRIPTION_RESUME = "/v1/subscriptions/:subscription/resume"
        ENDPOINT_PATH_V1_SUBSCRIPTION_PAUSE = "/v1/subscriptions/:subscription/pause"
        ENDPOINT_PATH_V1_SUBSCRIPTION_ITEM_CREATE = "/v1/subscription_items"
        ENDPOINT_PATH_V1_SUBSCRIPTION_ITEM_UPDATE = "/v1/subscription_items/:item"
        ENDPOINT_PATH_V1_SUBSCRIPTION_ITEM_DELETE = "/v1/subscription_items/:item"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_CREATE = "/v1/subscription_schedules"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_UPDATE = "/v1/subscription_schedules/:schedule"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_CANCEL = "/v1/subscription_schedules/:schedule/cancel"
        ENDPOINT_PATH_V1_SUBSCRIPTION_SCHEDULE_RELEASE = "/v1/subscription_schedules/:schedule/release"
        ENDPOINT_PATH_V1_TAX_REGISTRATION_CREATE = "/v1/tax/registrations"
        ENDPOINT_PATH_V1_TAX_REGISTRATION_UPDATE = "/v1/tax/registrations/:id"
        ENDPOINT_PATH_V1_TAX_SETTINGS_UPDATE = "/v1/tax/settings"
        ENDPOINT_PATH_V1_TAX_TRANSACTION_CREATE_REVERSAL = "/v1/tax/transactions/create_reversal"
        ENDPOINT_PATH_V1_TAX_ID_CREATE = "/v1/tax_ids"
        ENDPOINT_PATH_V1_TAX_ID_UPDATE = "/v1/tax_ids/:id"
        ENDPOINT_PATH_V1_TAX_ID_CREATE_FOR_CUSTOMER = "/v1/customers/:customer/tax_ids"
        ENDPOINT_PATH_V1_TAX_ID_DELETE = "/v1/customers/:customer/tax_ids/:id"
        ENDPOINT_PATH_V1_TAX_RATE_CREATE = "/v1/tax_rates"
        ENDPOINT_PATH_V1_TAX_RATE_UPDATE = "/v1/tax_rates/:tax_rate"

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
