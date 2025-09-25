# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an issuing authorization request errors alert is firing.
    class V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent < Stripe::V2::Event
      def self.lookup_type
        "v2.core.health.issuing_authorization_request_errors.firing"
      end

      class V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventData < Stripe::StripeObject
        class Impact < Stripe::StripeObject
          # Estimated aggregated amount for the approved requests.
          attr_reader :approved_amount
          # The number of approved requests which are impacted.
          attr_reader :approved_impacted_requests
          # Estimated aggregated amount for the declined requests.
          attr_reader :declined_amount
          # The number of declined requests which are impacted.
          attr_reader :declined_impacted_requests

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A short description of the alert.
        attr_reader :summary
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
        @inner_class_types = { data: V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventData }
      end
      attr_reader :data
    end

    # Occurs when an issuing authorization request errors alert is firing.
    class V2CoreHealthIssuingAuthorizationRequestErrorsFiringEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v2.core.health.issuing_authorization_request_errors.firing"
      end
    end
  end
end
