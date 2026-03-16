# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an issuing authorization request timeout alert is resolved.
    class V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.issuing_authorization_request_timeout.resolved"
      end

      class V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          class ApprovedAmount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class DeclinedAmount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Estimated aggregated amount for the approved requests.
          attr_reader :approved_amount
          # The number of approved requests which are impacted.
          attr_reader :approved_impacted_requests
          # Estimated aggregated amount for the declined requests.
          attr_reader :declined_amount
          # The number of declined requests which are impacted.
          attr_reader :declined_impacted_requests

          def self.inner_class_types
            @inner_class_types = { approved_amount: ApprovedAmount, declined_amount: DeclinedAmount }
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
        @inner_class_types = { data: V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventData }
      end
      attr_reader :data
    end

    # Occurs when an issuing authorization request timeout alert is resolved.
    class V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.issuing_authorization_request_timeout.resolved"
      end
    end
  end
end
