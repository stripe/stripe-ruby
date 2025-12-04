# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is rotated.
    class V2IamApiKeyRotatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.rotated"
      end

      class V2IamApiKeyRotatedEventData < ::Stripe::StripeObject
        # ID of the new key that was created due to rotation.
        attr_reader :new_api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyRotatedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API Key is rotated.
    class V2IamApiKeyRotatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.rotated"
      end
    end
  end
end
