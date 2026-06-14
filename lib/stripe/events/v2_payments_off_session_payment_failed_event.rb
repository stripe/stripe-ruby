# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Sent after a failed authorization if there are no retries remaining, or if the failure is unretryable.
    class V2PaymentsOffSessionPaymentFailedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.off_session_payment.failed"
      end

      class V2PaymentsOffSessionPaymentFailedEventData < ::Stripe::StripeObject
        # The ID of the payment attempt record associated with this terminal failure. Equal to the `latest_payment_attempt_record` on the Off-Session Payment object.
        attr_reader :payment_attempt_record

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2PaymentsOffSessionPaymentFailedEventData }
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

    # Sent after a failed authorization if there are no retries remaining, or if the failure is unretryable.
    class V2PaymentsOffSessionPaymentFailedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.off_session_payment.failed"
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
