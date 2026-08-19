# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A resource for the feedback options model (for custom cancellation reasons)
    class FeedbackOption < APIResource
      OBJECT_NAME = "billing.feedback_option"
      def self.object_name
        "billing.feedback_option"
      end

      class StatusTransitions < ::Stripe::StripeObject
        # The time the feedback option was deactivated, if any. Measured in seconds since Unix epoch.
        attr_reader :deactivated_at

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The feedback option's status.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions

      def self.inner_class_types
        @inner_class_types = { status_transitions: StatusTransitions }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
