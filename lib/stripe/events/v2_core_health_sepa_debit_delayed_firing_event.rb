# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a SEPA debit delayed alert is firing.
    class V2CoreHealthSepaDebitDelayedFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.sepa_debit_delayed.firing"
      end

      class V2CoreHealthSepaDebitDelayedFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The number of impacted payments.
          attr_reader :impacted_payments
          # The percentage of impacted payments.
          attr_reader :impacted_payments_percentage

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { impacted_payments_percentage: :decimal_string }
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

        def self.field_encodings
          @field_encodings = {
            impact: { kind: :object, fields: { impacted_payments_percentage: :decimal_string } },
          }
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreHealthSepaDebitDelayedFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when a SEPA debit delayed alert is firing.
    class V2CoreHealthSepaDebitDelayedFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.sepa_debit_delayed.firing"
      end
    end
  end
end
