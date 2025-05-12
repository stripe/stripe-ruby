# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # The Redaction Job object is used to redact Stripe objects. It is used
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

      class Objects < Stripe::StripeObject
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
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Attribute for param field status
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class Objects < Stripe::RequestParams
          # Attribute for param field charges
          attr_accessor :charges
          # Attribute for param field checkout_sessions
          attr_accessor :checkout_sessions
          # Attribute for param field customers
          attr_accessor :customers
          # Attribute for param field identity_verification_sessions
          attr_accessor :identity_verification_sessions
          # Attribute for param field invoices
          attr_accessor :invoices
          # Attribute for param field issuing_cardholders
          attr_accessor :issuing_cardholders
          # Attribute for param field issuing_cards
          attr_accessor :issuing_cards
          # Attribute for param field payment_intents
          attr_accessor :payment_intents
          # Attribute for param field radar_value_list_items
          attr_accessor :radar_value_list_items
          # Attribute for param field setup_intents
          attr_accessor :setup_intents

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
          )
            @charges = charges
            @checkout_sessions = checkout_sessions
            @customers = customers
            @identity_verification_sessions = identity_verification_sessions
            @invoices = invoices
            @issuing_cardholders = issuing_cardholders
            @issuing_cards = issuing_cards
            @payment_intents = payment_intents
            @radar_value_list_items = radar_value_list_items
            @setup_intents = setup_intents
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The objects to redact. These root objects and their related ones will be validated for redaction.
        attr_accessor :objects
        # Determines the validation behavior of the job. Default is `error`.
        attr_accessor :validation_behavior

        def initialize(expand: nil, objects: nil, validation_behavior: nil)
          @expand = expand
          @objects = objects
          @validation_behavior = validation_behavior
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Determines the validation behavior of the job. Default is `error`.
        attr_accessor :validation_behavior

        def initialize(expand: nil, validation_behavior: nil)
          @expand = expand
          @validation_behavior = validation_behavior
        end
      end

      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class RunParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ValidateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
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
    end
  end
end
