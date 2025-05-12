# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # The Redaction Job validation error object contains information about
    # errors that affect the ability to redact a specific object in a
    # redaction job.
    class RedactionJobValidationError < APIResource
      # A code indicating the reason for the error.
      sig { returns(String) }
      attr_reader :code
      # If the error is related to a specific object, this field will include the object's identifier in `id` and object type in `object`.
      sig { returns(T.nilable(T::Hash[String, String])) }
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