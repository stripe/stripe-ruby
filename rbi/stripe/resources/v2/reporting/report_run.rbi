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
            def items; end
          end
          # Parameter with an array data type.
          sig { returns(T.nilable(ArrayValue)) }
          def array_value; end
          # Parameter with a string data type.
          sig { returns(T.nilable(String)) }
          def string_value; end
          # Parameter with a timestamp data type.
          sig { returns(T.nilable(String)) }
          def timestamp_value; end
        end
        class Result < Stripe::StripeObject
          class File < Stripe::StripeObject
            class DownloadUrl < Stripe::StripeObject
              # The time that the URL expires.
              sig { returns(T.nilable(String)) }
              def expires_at; end
              # The URL that can be used for accessing the file.
              sig { returns(String) }
              def url; end
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
          end
          # Contains metadata about the file produced by the `ReportRun`, including
          # its content type, size, and a URL to download its contents.
          sig { returns(File) }
          def file; end
          # The type of the `ReportRun` result.
          sig { returns(String) }
          def type; end
        end
        class ResultOptions < Stripe::StripeObject
          # If set, the generated report file will be compressed into a ZIP folder.
          # This is useful for reducing file size and download time for large reports.
          sig { returns(T.nilable(T::Boolean)) }
          def compress_file; end
        end
        class StatusDetails < Stripe::StripeObject
          # Error code categorizing the reason the `ReportRun` failed.
          sig { returns(T.nilable(String)) }
          def error_code; end
          # Error message with additional details about the failure.
          sig { returns(T.nilable(String)) }
          def error_message; end
        end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # The unique identifier of the `ReportRun` object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The unique identifier of the `Report` object which was run.
        sig { returns(String) }
        def report; end
        # The human-readable name of the `Report` which was run.
        sig { returns(String) }
        def report_name; end
        # The parameters used to customize the generation of the report.
        sig { returns(T::Hash[String, ReportParameters]) }
        def report_parameters; end
        # Details how to retrieve the results of a successfully completed `ReportRun`.
        sig { returns(T.nilable(Result)) }
        def result; end
        # The options specified for customizing the output file of the `ReportRun`.
        sig { returns(T.nilable(ResultOptions)) }
        def result_options; end
        # The current status of the `ReportRun`.
        sig { returns(String) }
        def status; end
        # Additional details about the current state of the `ReportRun`. The field is currently only populated when a `ReportRun`
        # is in the `failed` state, providing more information about why the report failed to generate successfully.
        sig { returns(T::Hash[String, StatusDetails]) }
        def status_details; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end