# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Person is updated.
    class V2CoreAccountPersonUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.account_person.updated"
      end

      class V2CoreAccountPersonUpdatedEventData < ::Stripe::StripeObject
        # The ID of the v2 account.
        attr_reader :account_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreAccountPersonUpdatedEventData }
      end
      attr_reader :data, :related_object

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context }
        )
      end
    end

    # Occurs when a Person is updated.
    class V2CoreAccountPersonUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.account_person.updated"
      end

      attr_reader :related_object

      # Retrieves the AccountPerson related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
