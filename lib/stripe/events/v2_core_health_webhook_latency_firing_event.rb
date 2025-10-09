# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a webhook latency alert is firing.
    class V2CoreHealthWebhookLatencyFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.webhook_latency.firing"
      end

      class V2CoreHealthWebhookLatencyFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The number of impacted requests.
          attr_reader :impacted_requests

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A short description of the alert.
        attr_reader :summary
        # The alert ID.
        attr_reader :alert_id
        # The user impact.
        attr_reader :impact
        # The time when impact on the user experience was first detected.
        attr_reader :started_at
        # The grouping key for the alert.
        attr_reader :grouping_key

        def self.inner_class_types
          @inner_class_types = { impact: Impact }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreHealthWebhookLatencyFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when a webhook latency alert is firing.
    class V2CoreHealthWebhookLatencyFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.webhook_latency.firing"
      end
    end
  end
end
