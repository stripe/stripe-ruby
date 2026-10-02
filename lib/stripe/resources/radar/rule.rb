# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class Rule < APIResource
      OBJECT_NAME = "radar.rule"
      def self.object_name
        "radar.rule"
      end

      # The action taken on the payment.
      attr_reader :action
      # Unique identifier for the object.
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The predicate to evaluate the payment against.
      attr_reader :predicate

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
