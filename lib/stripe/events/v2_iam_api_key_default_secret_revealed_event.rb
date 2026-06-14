# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the default API Key's secret is revealed.
    class V2IamApiKeyDefaultSecretRevealedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.default_secret_revealed"
      end

      class V2IamApiKeyDefaultSecretRevealedEventData < ::Stripe::StripeObject
        # ID of the default key whose secret was revealed.
        attr_reader :api_key

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamApiKeyDefaultSecretRevealedEventData }
      end
      attr_reader :data
    end

    # Occurs when the default API Key's secret is revealed.
    class V2IamApiKeyDefaultSecretRevealedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.default_secret_revealed"
      end
    end
  end
end
