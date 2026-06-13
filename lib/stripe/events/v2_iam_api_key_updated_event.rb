# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is updated.
    class V2IamApiKeyUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.updated"
      end

      class V2IamApiKeyUpdatedEventData < ::Stripe::StripeObject
        # ID of the updated key.
        attr_reader :api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyUpdatedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API Key is updated.
    class V2IamApiKeyUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.updated"
      end
    end
  end
end
