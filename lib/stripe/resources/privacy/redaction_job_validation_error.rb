# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # Validation errors
    class RedactionJobValidationError < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "privacy.redaction_job_validation_error"
      def self.object_name
        "privacy.redaction_job_validation_error"
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

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end
      # Attribute for field code
      attr_reader :code
      # Attribute for field erroring_object
      attr_reader :erroring_object
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field message
      attr_reader :message
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # List validation errors method
      def self.list(job, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/privacy/redaction_jobs/%<job>s/validation_errors", { job: CGI.escape(job) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
