# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an invoice count dropped alert is firing.
    class V2CoreHealthInvoiceCountDroppedFiringEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.invoice_count_dropped.firing"
      end

      class V2CoreHealthInvoiceCountDroppedFiringEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          # The observed number of invoices within the time window.
          attr_reader :observed_count
          # The expected threshold number of invoices within the time window.
          attr_reader :threshold_count
          # The size of the observation time window.
          attr_reader :time_window

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { observed_count: :decimal_string, threshold_count: :decimal_string }
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
            impact: {
              kind: :object,
              fields: { observed_count: :decimal_string, threshold_count: :decimal_string },
            },
          }
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreHealthInvoiceCountDroppedFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when an invoice count dropped alert is firing.
    class V2CoreHealthInvoiceCountDroppedFiringEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.invoice_count_dropped.firing"
      end
    end
  end
end
