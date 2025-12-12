# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when no received credit exists for a settlement allocation intent.
    class V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.funds_not_received"
      end

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context }
        )
      end
      attr_reader :related_object
    end

    # Occurs when no received credit exists for a settlement allocation intent.
    class V2PaymentsSettlementAllocationIntentFundsNotReceivedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.funds_not_received"
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
