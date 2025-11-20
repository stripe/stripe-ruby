# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a payment method error alert is firing.
    class V2CoreHealthPaymentMethodErrorFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.payment_method_error.firing"
      end

      class V2CoreHealthPaymentMethodErrorFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The returned error code.
          attr_reader :error_code
          # The number of impacted requests.
          attr_reader :impacted_requests
          # The percentage of impacted requests.
          attr_reader :impacted_requests_percentage
          # The type of the payment method.
          attr_reader :payment_method_type

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
        @inner_class_types = { data: V2CoreHealthPaymentMethodErrorFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when a payment method error alert is firing.
    class V2CoreHealthPaymentMethodErrorFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.payment_method_error.firing"
      end
    end
  end
end
