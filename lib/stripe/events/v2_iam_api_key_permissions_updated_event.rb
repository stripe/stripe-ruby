# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key's permissions are updated.
    class V2IamApiKeyPermissionsUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.permissions_updated"
      end

      class V2IamApiKeyPermissionsUpdatedEventData < ::Stripe::StripeObject
        # ID of the key whose permissions were updated.
        attr_reader :api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyPermissionsUpdatedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API Key's permissions are updated.
    class V2IamApiKeyPermissionsUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.permissions_updated"
      end
    end
  end
end
