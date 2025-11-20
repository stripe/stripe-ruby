# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an event generation failure alert is resolved.
    class V2CoreHealthEventGenerationFailureResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.event_generation_failure.resolved"
      end

      class V2CoreHealthEventGenerationFailureResolvedEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          class RelatedObject < ::Stripe::StripeObject
            # The ID of the related object (e.g., "pi_...").
            attr_reader :id
            # The type of the related object (e.g., "payment_intent").
            attr_reader :type
            # The API URL for the related object (e.g., "/v1/payment_intents/pi_...").
            attr_reader :url

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The context the event should have been generated for. Only present when the account is a connected account.
          attr_reader :context
          # The type of event that Stripe failed to generate.
          attr_reader :event_type
          # The related object details.
          attr_reader :related_object

          def self.inner_class_types
            @inner_class_types = { related_object: RelatedObject }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A short description of the alert.
        attr_reader :summary
        # The time when the user experience has returned to expected levels.
        attr_reader :resolved_at
        # The alert ID.
        attr_reader :alert_id
        # The user impact.
        attr_reader :impact
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
        @inner_class_types = { data: V2CoreHealthEventGenerationFailureResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when an event generation failure alert is resolved.
    class V2CoreHealthEventGenerationFailureResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.event_generation_failure.resolved"
      end
    end
  end
end
