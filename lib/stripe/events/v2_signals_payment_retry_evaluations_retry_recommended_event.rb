# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the ML scoring model determines it's a good time to retry a failed payment.
    # This is a thin event — the merchant must call GET to retrieve the full evaluation.
    class V2SignalsPaymentRetryEvaluationsRetryRecommendedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.signals.payment_retry_evaluations.retry_recommended"
      end

      class V2SignalsPaymentRetryEvaluationsRetryRecommendedEventData < ::Stripe::StripeObject
        # Unique identifier for the payment retry evaluation.
        attr_reader :id
        # Whether the event was created in livemode.
        attr_reader :livemode
        # The PaymentIntent ID. Present when the evaluation is for a PaymentIntent.
        attr_reader :payment_intent
        # The PaymentRecord ID. Present when the evaluation is for a PaymentRecord.
        attr_reader :payment_record

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2SignalsPaymentRetryEvaluationsRetryRecommendedEventData }
      end
      attr_reader :data
    end

    # Occurs when the ML scoring model determines it's a good time to retry a failed payment.
    # This is a thin event — the merchant must call GET to retrieve the full evaluation.
    class V2SignalsPaymentRetryEvaluationsRetryRecommendedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.signals.payment_retry_evaluations.retry_recommended"
      end
    end
  end
end
