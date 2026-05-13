# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A Financial Account Statement represents a monthly statement for a Financial Account.
      class FinancialAccountStatement < APIResource
        class FilesByCurrency < ::Stripe::StripeObject
          class DownloadUrl < ::Stripe::StripeObject
            # The time at which the URL expires, in ISO 8601 format (UTC).
            sig { returns(String) }
            def expires_at; end
            # The URL to download the file.
            sig { returns(String) }
            def url; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The MIME type of the file.
          sig { returns(String) }
          def content_type; end
          # The download URL and expiration.
          sig { returns(DownloadUrl) }
          def download_url; end
          # The size of the file in bytes.
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
        class Period < ::Stripe::StripeObject
          # The end of the statement period (exclusive), as a UTC-aligned ISO 8601 date
          # (e.g., "2025-02-01"). For example, a January statement has end_date "2025-02-01",
          # meaning all transactions up to but not including February 1st UTC are included.
          sig { returns(String) }
          def end_date; end
          # The start of the statement period (inclusive), as a UTC-aligned ISO 8601 date (e.g., "2025-01-01").
          sig { returns(String) }
          def start_date; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the statement was created, in ISO 8601 format (UTC).
        sig { returns(String) }
        def created; end
        # Available balance at the end of the statement period.
        sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
        def ending_balance; end
        # Currency-specific files and file metadata. Null by default, populated by specifying include=files_by_currency in the Retrieve endpoint.
        sig { returns(T.nilable(T::Hash[String, FilesByCurrency])) }
        def files_by_currency; end
        # The Financial Account this statement belongs to.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the statement.
        sig { returns(String) }
        def id; end
        # True if the object exists in live mode, false if in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The time period covered by this statement.
        sig { returns(Period) }
        def period; end
        # The ID of the statement that replaced this one. Only present on statements that have been restated.
        sig { returns(T.nilable(String)) }
        def restated_by; end
        # The ID of the statement this one replaces. Only present on restatements.
        sig { returns(T.nilable(String)) }
        def restated_statement; end
        # Available balance at the start of the statement period.
        sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
        def starting_balance; end
        # The status of the statement. A statement is "active" by default.
        # When a statement is replaced by a restatement, its status becomes "restated".
        sig { returns(String) }
        def status; end
      end
    end
  end
end