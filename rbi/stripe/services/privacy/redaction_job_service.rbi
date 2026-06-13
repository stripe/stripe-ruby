# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    class RedactionJobService < StripeService
      attr_reader :validation_errors
      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def cancel(job, params = {}, opts = {}); end

      # Creates a redaction job. When a job is created, it will start to validate.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of redaction jobs.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of a previously created redaction job.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def retrieve(job, params = {}, opts = {}); end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobRunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def run(job, params = {}, opts = {}); end

      # Updates the properties of a redaction job without running or canceling the job.
      #
      # If the job to update is in a failed status, it will not automatically start to validate. Once you applied all of the changes, use the validate API to start validation again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def update(job, params = {}, opts = {}); end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Privacy::RedactionJob)
       }
      def validate(job, params = {}, opts = {}); end
    end
  end
end