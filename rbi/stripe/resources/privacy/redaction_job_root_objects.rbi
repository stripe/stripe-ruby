# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    # The objects to redact, grouped by type. All redactable objects associated with these objects will be redacted as well.
    class RedactionJobRootObjects < APIResource
      # Attribute for field charges
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :charges
      # Attribute for field checkout_sessions
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :checkout_sessions
      # Attribute for field customers
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :customers
      # Attribute for field identity_verification_sessions
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :identity_verification_sessions
      # Attribute for field invoices
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :invoices
      # Attribute for field issuing_cardholders
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :issuing_cardholders
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Attribute for field payment_intents
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_intents
      # Attribute for field radar_value_list_items
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :radar_value_list_items
      # Attribute for field setup_intents
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :setup_intents
    end
  end
end