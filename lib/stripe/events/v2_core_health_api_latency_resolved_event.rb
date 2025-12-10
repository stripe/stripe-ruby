# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API latency alert is resolved.
    class V2CoreHealthApiLatencyResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.api_latency.resolved"
      end

      class V2CoreHealthApiLatencyResolvedEventData < ::Stripe::StripeObject
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
          end
          # The canonical path.
          attr_reader :canonical_path
          # The HTTP method.
          attr_reader :http_method
          # The HTTP status.
          attr_reader :http_status
          # The number of impacted requests.
          attr_reader :impacted_requests
          # The percentage of impacted requests.
          attr_reader :impacted_requests_percentage
          # The top impacted connected accounts (only for platforms).
          attr_reader :top_impacted_accounts

          def self.inner_class_types
            @inner_class_types = { top_impacted_accounts: TopImpactedAccount }
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
        @inner_class_types = { data: V2CoreHealthApiLatencyResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when an API latency alert is resolved.
    class V2CoreHealthApiLatencyResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.api_latency.resolved"
      end
    end
  end
end
