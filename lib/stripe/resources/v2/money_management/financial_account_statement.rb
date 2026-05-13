# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A Financial Account Statement represents a monthly statement for a Financial Account.
      class FinancialAccountStatement < APIResource
        OBJECT_NAME = "v2.money_management.financial_account_statement"
        def self.object_name
          "v2.money_management.financial_account_statement"
        end

        class FilesByCurrency < ::Stripe::StripeObject
          class DownloadUrl < ::Stripe::StripeObject
            # The time at which the URL expires, in ISO 8601 format (UTC).
            attr_reader :expires_at
            # The URL to download the file.
            attr_reader :url

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The MIME type of the file.
          attr_reader :content_type
          # The download URL and expiration.
          attr_reader :download_url
          # The size of the file in bytes.
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

        class Period < ::Stripe::StripeObject
          # The end of the statement period (exclusive), as a UTC-aligned ISO 8601 date
          # (e.g., "2025-02-01"). For example, a January statement has end_date "2025-02-01",
          # meaning all transactions up to but not including February 1st UTC are included.
          attr_reader :end_date
          # The start of the statement period (inclusive), as a UTC-aligned ISO 8601 date (e.g., "2025-01-01").
          attr_reader :start_date

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the statement was created, in ISO 8601 format (UTC).
        attr_reader :created
        # Available balance at the end of the statement period.
        attr_reader :ending_balance
        # Currency-specific files and file metadata. Null by default, populated by specifying include=files_by_currency in the Retrieve endpoint.
        attr_reader :files_by_currency
        # The Financial Account this statement belongs to.
        attr_reader :financial_account
        # Unique identifier for the statement.
        attr_reader :id
        # True if the object exists in live mode, false if in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The time period covered by this statement.
        attr_reader :period
        # The ID of the statement that replaced this one. Only present on statements that have been restated.
        attr_reader :restated_by
        # The ID of the statement this one replaces. Only present on restatements.
        attr_reader :restated_statement
        # Available balance at the start of the statement period.
        attr_reader :starting_balance
        # The status of the statement. A statement is "active" by default.
        # When a statement is replaced by a restatement, its status becomes "restated".
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { files_by_currency: FilesByCurrency, period: Period }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
