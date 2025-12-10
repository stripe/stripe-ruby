# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a settlement allocation intent split is settled.
    class V2PaymentsSettlementAllocationIntentSplitSettledEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.settlement_allocation_intent_split.settled"
      end

      class V2PaymentsSettlementAllocationIntentSplitSettledEventData < ::Stripe::StripeObject
        # The ID of the SettlementAllocationIntent this split belongs to.
        attr_reader :settlement_allocation_intent_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2PaymentsSettlementAllocationIntentSplitSettledEventData }
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

    # Occurs when a settlement allocation intent split is settled.
    class V2PaymentsSettlementAllocationIntentSplitSettledEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.settlement_allocation_intent_split.settled"
      end

      attr_reader :related_object

      # Retrieves the SettlementAllocationIntentSplit related to this EventNotification from the Stripe API. Makes an API request on every call.
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
