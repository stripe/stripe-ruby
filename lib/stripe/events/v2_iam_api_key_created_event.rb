# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is created.
    class V2IamApiKeyCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.created"
      end

      class V2IamApiKeyCreatedEventData < ::Stripe::StripeObject
        # ID of the created key.
        attr_reader :api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyCreatedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API Key is created.
    class V2IamApiKeyCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.created"
      end
    end
  end
end
