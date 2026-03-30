# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is expired.
    class V2IamApiKeyExpiredEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.expired"
      end

      class V2IamApiKeyExpiredEventData < ::Stripe::StripeObject
        # ID of the expired key.
        attr_reader :api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyExpiredEventData }
      end
      attr_reader :data
    end

    # Occurs when an API Key is expired.
    class V2IamApiKeyExpiredEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.expired"
      end
    end
  end
end
