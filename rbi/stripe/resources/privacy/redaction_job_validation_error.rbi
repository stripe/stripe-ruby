# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # The Redaction Job validation error object contains information about
    # errors that affect the ability to redact a specific object in a
    # redaction job.
    class RedactionJobValidationError < APIResource
      class ErroringObject < Stripe::StripeObject
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Erroring object type
        sig { returns(String) }
        def object_type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A code indicating the reason for the error.
      sig { returns(String) }
      def code; end
      # If the error is related to a specific object, this field includes the object's identifier and object type.
      sig { returns(T.nilable(ErroringObject)) }
      def erroring_object; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # A human-readable message providing more details about the error.
      sig { returns(String) }
      def message; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
    end
  end
end