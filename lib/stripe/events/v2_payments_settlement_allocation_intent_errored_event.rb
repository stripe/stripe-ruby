# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an error occurs in reconciling a SettlementAllocationIntent.
    class V2PaymentsSettlementAllocationIntentErroredEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.errored"
      end

      class V2PaymentsSettlementAllocationIntentErroredEventData < ::Stripe::StripeObject
        # Open Enum. The `errored` status reason.
        attr_reader :reason_code
        # Stripe doc link to debug the issue.
        attr_reader :doc_url
        # User Message detailing the reason code and possible resolution .
        attr_reader :message

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2PaymentsSettlementAllocationIntentErroredEventData }
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

    # Occurs when an error occurs in reconciling a SettlementAllocationIntent.
    class V2PaymentsSettlementAllocationIntentErroredEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.errored"
      end

      attr_reader :related_object

      # Retrieves the SettlementAllocationIntent related to this EventNotification from the Stripe API. Makes an API request on every call.
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
