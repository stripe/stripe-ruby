# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # The Redaction Job object redacts Stripe objects. You can use it
    # to coordinate the removal of personal information from selected
    # objects, making them permanently inaccessible in the Stripe Dashboard
    # and API.
    class RedactionJob < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource
      include Stripe::APIOperations::Save

      OBJECT_NAME = "privacy.redaction_job"
      def self.object_name
        "privacy.redaction_job"
      end

      nested_resource_class_methods :validation_error, operations: %i[list]

      class Objects < ::Stripe::StripeObject
        # Charge object identifiers usually starting with `ch_`
        attr_reader :charges
        # CheckoutSession object identifiers starting with `cs_`
        attr_reader :checkout_sessions
        # Customer object identifiers starting with `cus_`
        attr_reader :customers
        # Identity VerificationSessions object identifiers starting with `vs_`
        attr_reader :identity_verification_sessions
        # Invoice object identifiers starting with `in_`
        attr_reader :invoices
        # Issuing Cardholder object identifiers starting with `ich_`
        attr_reader :issuing_cardholders
        # PaymentIntent object identifiers starting with `pi_`
        attr_reader :payment_intents
        # Fraud ValueListItem object identifiers starting with `rsli_`
        attr_reader :radar_value_list_items
        # SetupIntent object identifiers starting with `seti_`
        attr_reader :setup_intents

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The objects to redact in this job.
      attr_reader :objects
      # The status of the job.
      attr_reader :status
      # Validation behavior determines how a job validates objects for redaction eligibility. Default is `error`.
      attr_reader :validation_behavior

      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/cancel", { job: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      def self.cancel(job, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/cancel", { job: CGI.escape(job) }),
          params: params,
          opts: opts
        )
      end

      # Creates a redaction job. When a job is created, it will start to validate.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/privacy/redaction_jobs",
          params: params,
          opts: opts
        )
      end

      # Returns a list of redaction jobs.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/privacy/redaction_jobs",
          params: params,
          opts: opts
        )
      end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      def run(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/run", { job: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      def self.run(job, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/run", { job: CGI.escape(job) }),
          params: params,
          opts: opts
        )
      end

      # Updates the properties of a redaction job without running or canceling the job.
      #
      # If the job to update is in a failed status, it will not automatically start to validate. Once you applied all of the changes, use the validate API to start validation again.
      def self.update(job, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s", { job: CGI.escape(job) }),
          params: params,
          opts: opts
        )
      end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      def validate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/validate", { job: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      def self.validate(job, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/privacy/redaction_jobs/%<job>s/validate", { job: CGI.escape(job) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { objects: Objects }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
