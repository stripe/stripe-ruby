# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a traffic volume drop alert is resolved.
    class V2CoreHealthTrafficVolumeDropResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.traffic_volume_drop.resolved"
      end

      class V2CoreHealthTrafficVolumeDropResolvedEventData < Stripe::StripeObject
        class Impact < Stripe::StripeObject
          # The total volume of payment requests within the latest observation time window.
          attr_reader :actual_traffic
          # The expected volume of payment requests within the latest observation time window.
          attr_reader :expected_traffic
          # The size of the observation time window.
          attr_reader :time_window

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A short description of the alert.
        attr_reader :summary
        # The time when the user experience has returned to expected levels.
        attr_reader :resolved_at
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
        @inner_class_types = { data: V2CoreHealthTrafficVolumeDropResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when a traffic volume drop alert is resolved.
    class V2CoreHealthTrafficVolumeDropResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.traffic_volume_drop.resolved"
      end
    end
  end
end
