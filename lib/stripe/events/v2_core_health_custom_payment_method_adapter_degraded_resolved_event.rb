# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a custom payment method adapter degraded alert is resolved.
    class V2CoreHealthCustomPaymentMethodAdapterDegradedResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.custom_payment_method_adapter_degraded.resolved"
      end

      class V2CoreHealthCustomPaymentMethodAdapterDegradedResolvedEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          class CustomPaymentMethodTypeDetails < ::Stripe::StripeObject
            # The time when the custom payment method was automatically disabled. Null when it is enabled.
            attr_reader :auto_disabled_at
            # The display name of the custom payment method type.
            attr_reader :display_name
            # The URL of the user's self-hosted adapter endpoint.
            attr_reader :reverse_api_url
            # The identifier of the custom payment method type (e.g., "cpmt_...").
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Whether the custom payment method was disabled in Checkout as a result of the degradation. True while the alert is open and false when it is resolved.
          attr_reader :custom_payment_method_disabled_from_checkout
          # The custom payment method type whose adapter is unhealthy.
          attr_reader :custom_payment_method_type_details
          # The reason the adapter's health is degraded.
          attr_reader :degraded_health_reason

          def self.inner_class_types
            @inner_class_types = {
              custom_payment_method_type_details: CustomPaymentMethodTypeDetails,
            }
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
        # The time when the user experience has returned to expected levels.
        attr_reader :resolved_at
        # The severity of the alert.
        attr_reader :severity
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
        @inner_class_types = { data: V2CoreHealthCustomPaymentMethodAdapterDegradedResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when a custom payment method adapter degraded alert is resolved.
    class V2CoreHealthCustomPaymentMethodAdapterDegradedResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.custom_payment_method_adapter_degraded.resolved"
      end
    end
  end
end
