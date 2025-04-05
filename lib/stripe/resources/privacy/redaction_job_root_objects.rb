# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    # The objects to redact, grouped by type. All redactable objects associated with these objects will be redacted as well.
    class RedactionJobRootObjects < APIResource
      OBJECT_NAME = "privacy.redaction_job_root_objects"
      def self.object_name
        "privacy.redaction_job_root_objects"
      end

      # Attribute for field charges
      attr_reader :charges
      # Attribute for field checkout_sessions
      attr_reader :checkout_sessions
      # Attribute for field customers
      attr_reader :customers
      # Attribute for field identity_verification_sessions
      attr_reader :identity_verification_sessions
      # Attribute for field invoices
      attr_reader :invoices
      # Attribute for field issuing_cardholders
      attr_reader :issuing_cardholders
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field payment_intents
      attr_reader :payment_intents
      # Attribute for field radar_value_list_items
      attr_reader :radar_value_list_items
      # Attribute for field setup_intents
      attr_reader :setup_intents
    end
  end
end
