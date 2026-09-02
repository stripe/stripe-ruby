# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Metronome notification latency alert is firing.
    class V2CoreHealthMetronomeNotificationLatencyFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.metronome_notification_latency.firing"
      end

      class V2CoreHealthMetronomeNotificationLatencyFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The impacted Metronome billing pipeline.
          attr_reader :pipeline

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The alert ID.
        attr_reader :alert_id
        # The grouping key for the alert.
        attr_reader :grouping_key
        # The user impact.
        attr_reader :impact
        # The time when impact on the user experience was first detected.
        attr_reader :started_at
        # A short description of the alert.
        attr_reader :summary

        def self.inner_class_types
          @inner_class_types = { impact: Impact }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreHealthMetronomeNotificationLatencyFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when a Metronome notification latency alert is firing.
    class V2CoreHealthMetronomeNotificationLatencyFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.metronome_notification_latency.firing"
      end
    end
  end
end
