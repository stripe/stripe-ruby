# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    class RedactionJobService < StripeService
      attr_reader :validation_errors

      def initialize(requestor)
        super
        @validation_errors = Stripe::Privacy::RedactionJobValidationErrorService.new(@requestor)
      end

      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      def cancel(job, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/cancel", { job: CGI.escape(job) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a redaction job. When a job is created, it will start to validate.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/privacy/redaction_jobs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of redaction jobs.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/privacy/redaction_jobs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a previously created redaction job.
      def retrieve(job, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/privacy/redaction_jobs/%<job>s", { job: CGI.escape(job) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      def run(job, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/run", { job: CGI.escape(job) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the properties of a redaction job without running or canceling the job.
      #
      # If the job to update is in a failed status, it will not automatically start to validate. Once you applied all of the changes, use the validate API to start validation again.
      def update(job, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s", { job: CGI.escape(job) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      def validate(job, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/validate", { job: CGI.escape(job) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
