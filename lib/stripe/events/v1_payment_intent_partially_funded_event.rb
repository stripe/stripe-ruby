# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when funds are applied to a customer_balance PaymentIntent and the 'amount_remaining' changes.
    class V1PaymentIntentPartiallyFundedEvent < Stripe::V2::Event
      def self.lookup_type
        "v1.payment_intent.partially_funded"
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

    # Occurs when funds are applied to a customer_balance PaymentIntent and the 'amount_remaining' changes.
    class V1PaymentIntentPartiallyFundedEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v1.payment_intent.partially_funded"
      end

      attr_reader :related_object

      # Retrieves the PaymentIntent related to this EventNotification from the Stripe API. Makes an API request on every call.
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
