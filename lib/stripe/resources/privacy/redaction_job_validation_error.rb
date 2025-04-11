# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # Validation errors
    class RedactionJobValidationError < APIResource
      OBJECT_NAME = "privacy.redaction_job_validation_error"
      def self.object_name
        "privacy.redaction_job_validation_error"
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
    end
  end
end
