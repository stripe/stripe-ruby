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
        attr_reader :id
        # Erroring object type
        sig { returns(String) }
        attr_reader :object_type
      end
      # A code indicating the reason for the error.
      sig { returns(String) }
      attr_reader :code
      # If the error is related to a specific object, this field includes the object's identifier and object type.
      sig { returns(T.nilable(ErroringObject)) }
      attr_reader :erroring_object
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # A human-readable message providing more details about the error.
      sig { returns(String) }
      attr_reader :message
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end