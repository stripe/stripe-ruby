# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API error alert is resolved.
    class V2CoreHealthApiErrorResolvedEvent < Stripe::V2::Event
      def self.lookup_type
        "v2.core.health.api_error.resolved"
      end

      class V2CoreHealthApiErrorResolvedEventData < Stripe::StripeObject
        class Impact < Stripe::StripeObject
          # The canonical path.
          attr_reader :canonical_path
          # The error code.
          attr_reader :error_code
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
        @inner_class_types = { data: V2CoreHealthApiErrorResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API error alert is resolved.
    class V2CoreHealthApiErrorResolvedEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v2.core.health.api_error.resolved"
      end
    end
  end
end
