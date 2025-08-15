# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      # The `ReportRun` object represents an instance of a `Report` generated with specific
      # run parameters. Once the object is created, Stripe begins processing the report. When
      # the report has finished running, it will give you a reference to the results.
      class ReportRun < APIResource
        class ReportParameters < Stripe::StripeObject
          class ArrayValue < Stripe::StripeObject
            # The list of string values in the array.
            sig { returns(T::Array[String]) }
            attr_reader :items
          end
          # Parameter with an array data type.
          sig { returns(T.nilable(ArrayValue)) }
          attr_reader :array_value
          # Parameter with a string data type.
          sig { returns(T.nilable(String)) }
          attr_reader :string_value
          # Parameter with a timestamp data type.
          sig { returns(T.nilable(String)) }
          attr_reader :timestamp_value
        end
        class Result < Stripe::StripeObject
          class File < Stripe::StripeObject
            class DownloadUrl < Stripe::StripeObject
              # The time that the URL expires.
              sig { returns(T.nilable(String)) }
              attr_reader :expires_at
              # The URL that can be used for accessing the file.
              sig { returns(String) }
              attr_reader :url
            end
            # The content type of the file.
            sig { returns(String) }
            attr_reader :content_type
            # A pre-signed URL that allows secure, time-limited access to download the file.
            sig { returns(DownloadUrl) }
            attr_reader :download_url
            # The total size of the file in bytes.
            sig { returns(Integer) }
            attr_reader :size
          end
          # Contains metadata about the file produced by the `ReportRun`, including
          # its content type, size, and a URL to download its contents.
          sig { returns(File) }
          attr_reader :file
          # The type of the `ReportRun` result.
          sig { returns(String) }
          attr_reader :type
        end
        class ResultOptions < Stripe::StripeObject
          # If set, the generated report file will be compressed into a ZIP folder.
          # This is useful for reducing file size and download time for large reports.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :compress_file
        end
        class StatusDetails < Stripe::StripeObject
          # Error code categorizing the reason the `ReportRun` failed.
          sig { returns(T.nilable(String)) }
          attr_reader :error_code
          # Error message with additional details about the failure.
          sig { returns(T.nilable(String)) }
          attr_reader :error_message
        end
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # The unique identifier of the `ReportRun` object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The unique identifier of the `Report` object which was run.
        sig { returns(String) }
        attr_reader :report
        # The human-readable name of the `Report` which was run.
        sig { returns(String) }
        attr_reader :report_name
        # The parameters used to customize the generation of the report.
        sig { returns(T::Hash[String, ReportParameters]) }
        attr_reader :report_parameters
        # Details how to retrieve the results of a successfully completed `ReportRun`.
        sig { returns(T.nilable(Result)) }
        attr_reader :result
        # The options specified for customizing the output file of the `ReportRun`.
        sig { returns(T.nilable(ResultOptions)) }
        attr_reader :result_options
        # The current status of the `ReportRun`.
        sig { returns(String) }
        attr_reader :status
        # Additional details about the current state of the `ReportRun`. The field is currently only populated when a `ReportRun`
        # is in the `failed` state, providing more information about why the report failed to generate successfully.
        sig { returns(T::Hash[String, StatusDetails]) }
        attr_reader :status_details
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end