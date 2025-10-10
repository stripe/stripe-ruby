# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # The Redaction Job validation error object contains information about
    # errors that affect the ability to redact a specific object in a
    # redaction job.
    class RedactionJobValidationError < APIResource
      OBJECT_NAME = "privacy.redaction_job_validation_error"
      def self.object_name
        "privacy.redaction_job_validation_error"
      end

      class ErroringObject < ::Stripe::StripeObject
        # Unique identifier for the object.
        attr_reader :id
        # Erroring object type
        attr_reader :object_type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A code indicating the reason for the error.
      attr_reader :code
      # If the error is related to a specific object, this field includes the object's identifier and object type.
      attr_reader :erroring_object
      # Unique identifier for the object.
      attr_reader :id
      # A human-readable message providing more details about the error.
      attr_reader :message
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      def self.inner_class_types
        @inner_class_types = { erroring_object: ErroringObject }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
