# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # Validation errors
    class RedactionJobValidationError < APIResource
      # Attribute for field code
      sig { returns(String) }
      attr_reader :code
      # Attribute for field erroring_object
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :erroring_object
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Attribute for field message
      sig { returns(String) }
      attr_reader :message
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end