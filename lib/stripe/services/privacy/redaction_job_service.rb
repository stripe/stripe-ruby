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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
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
