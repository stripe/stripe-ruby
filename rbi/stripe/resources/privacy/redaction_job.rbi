# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # The Redaction Job object redacts Stripe objects. You can use it
    # to coordinate the removal of personal information from selected
    # objects, making them permanently inaccessible in the Stripe Dashboard
    # and API.
    class RedactionJob < APIResource
      class Objects < Stripe::StripeObject
        # Charge object identifiers usually starting with `ch_`
        sig { returns(T.nilable(T::Array[String])) }
        def charges; end
        # CheckoutSession object identifiers starting with `cs_`
        sig { returns(T.nilable(T::Array[String])) }
        def checkout_sessions; end
        # Customer object identifiers starting with `cus_`
        sig { returns(T.nilable(T::Array[String])) }
        def customers; end
        # Identity VerificationSessions object identifiers starting with `vs_`
        sig { returns(T.nilable(T::Array[String])) }
        def identity_verification_sessions; end
        # Invoice object identifiers starting with `in_`
        sig { returns(T.nilable(T::Array[String])) }
        def invoices; end
        # Issuing Cardholder object identifiers starting with `ich_`
        sig { returns(T.nilable(T::Array[String])) }
        def issuing_cardholders; end
        # PaymentIntent object identifiers starting with `pi_`
        sig { returns(T.nilable(T::Array[String])) }
        def payment_intents; end
        # Fraud ValueListItem object identifiers starting with `rsli_`
        sig { returns(T.nilable(T::Array[String])) }
        def radar_value_list_items; end
        # SetupIntent object identifiers starting with `seti_`
        sig { returns(T.nilable(T::Array[String])) }
        def setup_intents; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The objects to redact in this job.
      sig { returns(T.nilable(Objects)) }
      def objects; end
      # The status of the job.
      sig { returns(String) }
      def status; end
      # Validation behavior determines how a job validates objects for redaction eligibility. Default is `error`.
      sig { returns(T.nilable(String)) }
      def validation_behavior; end
      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def cancel(params = {}, opts = {}); end

      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.cancel(job, params = {}, opts = {}); end

      # Creates a redaction job. When a job is created, it will start to validate.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of redaction jobs.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobRunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def run(params = {}, opts = {}); end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobRunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.run(job, params = {}, opts = {}); end

      # Updates the properties of a redaction job without running or canceling the job.
      #
      # If the job to update is in a failed status, it will not automatically start to validate. Once you applied all of the changes, use the validate API to start validation again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.update(job, params = {}, opts = {}); end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJobValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def validate(params = {}, opts = {}); end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJobValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.validate(job, params = {}, opts = {}); end
    end
  end
end