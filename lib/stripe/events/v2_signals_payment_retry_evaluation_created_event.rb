# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a payment retry evaluation is created and begins monitoring a failed payment.
    class V2SignalsPaymentRetryEvaluationCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.signals.payment_retry_evaluation.created"
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

    # Occurs when a payment retry evaluation is created and begins monitoring a failed payment.
    class V2SignalsPaymentRetryEvaluationCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.signals.payment_retry_evaluation.created"
      end

      attr_reader :related_object

      # Retrieves the PaymentRetryEvaluation related to this EventNotification from the Stripe API. Makes an API request on every call.
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
