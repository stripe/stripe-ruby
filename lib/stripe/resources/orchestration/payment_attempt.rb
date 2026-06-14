# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Orchestration
    # Represents orchestration information for a payment attempt record (e.g. return url).
    class PaymentAttempt < APIResource
      OBJECT_NAME = "orchestration.payment_attempt"
      def self.object_name
        "orchestration.payment_attempt"
      end

      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # If present, the return URL for this payment attempt.
      attr_reader :return_url

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
