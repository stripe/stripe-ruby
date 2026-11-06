# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an object definition version is created.
    class V2ExtendObjectDefinitionVersionCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.extend.object_definition_version.created"
      end

      class V2ExtendObjectDefinitionVersionCreatedEventData < ::Stripe::StripeObject
        # The singular API name of the object definition.
        attr_reader :api_name_singular
        # The ID of the parent object definition.
        attr_reader :object_definition
        # The semantic version of the created object definition version, in `major.minor.patch` format.
        attr_reader :version

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2ExtendObjectDefinitionVersionCreatedEventData }
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

    # Occurs when an object definition version is created.
    class V2ExtendObjectDefinitionVersionCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.extend.object_definition_version.created"
      end

      attr_reader :related_object

      # Retrieves the ObjectDefinitionVersion related to this EventNotification from the Stripe API. Makes an API request on every call.
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
