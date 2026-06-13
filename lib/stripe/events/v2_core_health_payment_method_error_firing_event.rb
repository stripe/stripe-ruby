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
          class TopImpactedAccount < ::Stripe::StripeObject
            # The account ID of the impacted connected account.
            attr_reader :account
            # The number of impacted requests.
            attr_reader :impacted_requests
            # The percentage of impacted requests.
            attr_reader :impacted_requests_percentage

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { impacted_requests_percentage: :decimal_string }
            end
          end
          # The returned error code.
          attr_reader :error_code
          # The number of impacted requests.
          attr_reader :impacted_requests
          # The percentage of impacted requests.
          attr_reader :impacted_requests_percentage
          # The type of the payment method.
          attr_reader :payment_method_type
          # The top impacted connected accounts (only for platforms).
          attr_reader :top_impacted_accounts

          def self.inner_class_types
            @inner_class_types = { top_impacted_accounts: TopImpactedAccount }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              impacted_requests_percentage: :decimal_string,
              top_impacted_accounts: {
                kind: :array,
                element: { kind: :object, fields: { impacted_requests_percentage: :decimal_string } },
              },
            }
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
              fields: {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: { kind: :object, fields: { impacted_requests_percentage: :decimal_string } },
                },
              },
            },
          }
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
