# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Sent immediately following a user's call to the Off-Session Payments resume endpoint.
    class V2PaymentsOffSessionPaymentResumedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.off_session_payment.resumed"
      end

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" }
        )
      end
      attr_reader :related_object
    end

    # Sent immediately following a user's call to the Off-Session Payments resume endpoint.
    class V2PaymentsOffSessionPaymentResumedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.off_session_payment.resumed"
      end

      attr_reader :related_object

      # Retrieves the OffSessionPayment related to this EventNotification from the Stripe API. Makes an API request on every call.
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
