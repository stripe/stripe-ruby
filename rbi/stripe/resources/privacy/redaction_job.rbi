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
        attr_reader :charges
        # CheckoutSession object identifiers starting with `cs_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :checkout_sessions
        # Customer object identifiers starting with `cus_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :customers
        # Identity VerificationSessions object identifiers starting with `vs_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :identity_verification_sessions
        # Invoice object identifiers starting with `in_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :invoices
        # Issuing Cardholder object identifiers starting with `ich_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :issuing_cardholders
        # PaymentIntent object identifiers starting with `pi_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :payment_intents
        # Fraud ValueListItem object identifiers starting with `rsli_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :radar_value_list_items
        # SetupIntent object identifiers starting with `seti_`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :setup_intents
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The objects to redact in this job.
      sig { returns(T.nilable(Objects)) }
      attr_reader :objects
      # The status of the job.
      sig { returns(String) }
      attr_reader :status
      # Validation behavior determines how a job validates objects for redaction eligibility. Default is `error`.
      sig { returns(T.nilable(String)) }
      attr_reader :validation_behavior
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Attribute for param field status
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Objects < Stripe::RequestParams
          # Attribute for param field charges
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :charges
          # Attribute for param field checkout_sessions
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :checkout_sessions
          # Attribute for param field customers
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :customers
          # Attribute for param field identity_verification_sessions
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :identity_verification_sessions
          # Attribute for param field invoices
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :invoices
          # Attribute for param field issuing_cardholders
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :issuing_cardholders
          # Attribute for param field issuing_cards
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :issuing_cards
          # Attribute for param field payment_intents
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :payment_intents
          # Attribute for param field radar_value_list_items
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :radar_value_list_items
          # Attribute for param field setup_intents
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :setup_intents
          sig {
            params(charges: T.nilable(T::Array[String]), checkout_sessions: T.nilable(T::Array[String]), customers: T.nilable(T::Array[String]), identity_verification_sessions: T.nilable(T::Array[String]), invoices: T.nilable(T::Array[String]), issuing_cardholders: T.nilable(T::Array[String]), issuing_cards: T.nilable(T::Array[String]), payment_intents: T.nilable(T::Array[String]), radar_value_list_items: T.nilable(T::Array[String]), setup_intents: T.nilable(T::Array[String])).void
           }
          def initialize(
            charges: nil,
            checkout_sessions: nil,
            customers: nil,
            identity_verification_sessions: nil,
            invoices: nil,
            issuing_cardholders: nil,
            issuing_cards: nil,
            payment_intents: nil,
            radar_value_list_items: nil,
            setup_intents: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The objects to redact. These root objects and their related ones will be validated for redaction.
        sig { returns(::Stripe::Privacy::RedactionJob::CreateParams::Objects) }
        attr_accessor :objects
        # Determines the validation behavior of the job. Default is `error`.
        sig { returns(T.nilable(String)) }
        attr_accessor :validation_behavior
        sig {
          params(expand: T.nilable(T::Array[String]), objects: ::Stripe::Privacy::RedactionJob::CreateParams::Objects, validation_behavior: T.nilable(String)).void
         }
        def initialize(expand: nil, objects: nil, validation_behavior: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Determines the validation behavior of the job. Default is `error`.
        sig { returns(T.nilable(String)) }
        attr_accessor :validation_behavior
        sig {
          params(expand: T.nilable(T::Array[String]), validation_behavior: T.nilable(String)).void
         }
        def initialize(expand: nil, validation_behavior: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RunParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ValidateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def cancel(params = {}, opts = {}); end

      # You can cancel a redaction job when it's in one of these statuses: ready, failed.
      #
      # Canceling the redaction job will abandon its attempt to redact the configured objects. A canceled job cannot be used again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.cancel(job, params = {}, opts = {}); end

      # Creates a redaction job. When a job is created, it will start to validate.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of redaction jobs.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::RunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def run(params = {}, opts = {}); end

      # Run a redaction job in a ready status.
      #
      # When you run a job, the configured objects will be redacted asynchronously. This action is irreversible and cannot be canceled once started.
      #
      # The status of the job will move to redacting. Once all of the objects are redacted, the status will become succeeded. If the job's validation_behavior is set to fix, the automatic fixes will be applied to objects at this step.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::RunParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.run(job, params = {}, opts = {}); end

      # Updates the properties of a redaction job without running or canceling the job.
      #
      # If the job to update is in a failed status, it will not automatically start to validate. Once you applied all of the changes, use the validate API to start validation again.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.update(job, params = {}, opts = {}); end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      sig {
        params(params: T.any(::Stripe::Privacy::RedactionJob::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def validate(params = {}, opts = {}); end

      # Validate a redaction job when it is in a failed status.
      #
      # When a job is created, it automatically begins to validate on the configured objects' eligibility for redaction. Use this to validate the job again after its validation errors are resolved or the job's validation_behavior is changed.
      #
      # The status of the job will move to validating. Once all of the objects are validated, the status of the job will become ready. If there are any validation errors preventing the job from running, the status will become failed.
      sig {
        params(job: String, params: T.any(::Stripe::Privacy::RedactionJob::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Privacy::RedactionJob)
       }
      def self.validate(job, params = {}, opts = {}); end
    end
  end
end