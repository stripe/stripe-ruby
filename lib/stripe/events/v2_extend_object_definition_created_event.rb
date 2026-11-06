# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an object definition is created.
    class V2ExtendObjectDefinitionCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.extend.object_definition.created"
      end

      class V2ExtendObjectDefinitionCreatedEventData < ::Stripe::StripeObject
        # The singular API name of the object definition.
        attr_reader :api_name_singular

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2ExtendObjectDefinitionCreatedEventData }
      end
      attr_reader :data, :related_object

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" }
        )
      end
    end

    # Occurs when an object definition is created.
    class V2ExtendObjectDefinitionCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.extend.object_definition.created"
      end

      attr_reader :related_object

      # Retrieves the ObjectDefinition related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
