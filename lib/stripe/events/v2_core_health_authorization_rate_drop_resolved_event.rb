# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an authorization rate drop alert is resolved.
    class V2CoreHealthAuthorizationRateDropResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.authorization_rate_drop.resolved"
      end

      class V2CoreHealthAuthorizationRateDropResolvedEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          class Dimension < ::Stripe::StripeObject
            # The issuer dimension.
            attr_reader :issuer
            # The type of the dimension.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The type of the charge.
          attr_reader :charge_type
          # The current authorization rate percentage.
          attr_reader :current_percentage
          # Dimensions that describe what subset of payments are impacted.
          attr_reader :dimensions
          # The type of the payment method.
          attr_reader :payment_method_type
          # The previous authorization rate percentage.
          attr_reader :previous_percentage

          def self.inner_class_types
            @inner_class_types = { dimensions: Dimension }
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
        @inner_class_types = { data: V2CoreHealthAuthorizationRateDropResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when an authorization rate drop alert is resolved.
    class V2CoreHealthAuthorizationRateDropResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.authorization_rate_drop.resolved"
      end
    end
  end
end
