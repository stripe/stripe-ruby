# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API latency alert is firing.
    class V2CoreHealthApiLatencyFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.api_latency.firing"
      end

      class V2CoreHealthApiLatencyFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The canonical path.
          attr_reader :canonical_path
          # The HTTP method.
          attr_reader :http_method
          # The HTTP status.
          attr_reader :http_status
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
        @inner_class_types = { data: V2CoreHealthApiLatencyFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when an API latency alert is firing.
    class V2CoreHealthApiLatencyFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.api_latency.firing"
      end
    end
  end
end
